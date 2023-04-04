package util

import (
	"crypto/rand"
	"crypto/rsa"
	"encoding/json"
	"fmt"

	"github.com/go-chi/jwtauth"
	"github.com/lestrrat-go/jwx/jwa"
	"github.com/lestrrat-go/jwx/jwk"
)

func GenerateJWTRSAKey() (privBytes []byte, pubBytes []byte, err error) {
	privkey, err := rsa.GenerateKey(rand.Reader, 2048)
	if err != nil {
		return nil, nil, err
	}

	privJWK, err := jwk.New(privkey)
	if err != nil {
		return nil, nil, err
	}
	privJWK.Set(jwk.KeyIDKey, "guardllama")
	privJWK.Set(jwk.AlgorithmKey, jwa.RS256)

	privBytes, err = json.Marshal(privJWK)
	if err != nil {
		return nil, nil, err
	}

	pubKey, err := privJWK.PublicKey()
	if err != nil {
		return nil, nil, err
	}

	pubBytes, err = json.Marshal(pubKey)
	if err != nil {
		return nil, nil, err
	}

	return privBytes, pubBytes, nil
}

func NewJWTAuth(privPath, pubPath string) (*jwtauth.JWTAuth, error) {
	privKey, err := readJWTKey(privPath)
	if err != nil {
		return nil, err
	}

	pubKey, err := readJWTKey(pubPath)
	if err != nil {
		return nil, err
	}

	return jwtauth.New(privKey.Algorithm(), privKey, pubKey), nil
}

func readJWTKey(path string) (jwk.Key, error) {
	set, err := jwk.ReadFile(path)
	if err != nil {
		return nil, err
	}

	key, ok := set.Get(0)
	if !ok {
		return nil, fmt.Errorf("no key found in %s", path)
	}

	return key, nil
}
