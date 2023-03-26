package util

import (
	"google.golang.org/protobuf/encoding/protojson"
	"google.golang.org/protobuf/proto"
	"sigs.k8s.io/yaml"
)

func ProtoYamlUnmarshal(y []byte, m proto.Message) error {
	j, err := yaml.YAMLToJSON(y)
	if err != nil {
		return err
	}

	return protojson.Unmarshal(j, m)
}

func ProtoYamlMarshal(m proto.Message) ([]byte, error) {
	j, err := protojson.Marshal(m)
	if err != nil {
		return nil, err
	}

	return yaml.JSONToYAML(j)
}
