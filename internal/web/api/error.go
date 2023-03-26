package api

import (
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

func StatusInvalidArg(err error) error {
	return status.Error(codes.InvalidArgument, err.Error())
}

func StatusNotFound(err error) error {
	return status.Error(codes.NotFound, err.Error())
}

func StatusUnauthenticated(err error) error {
	return status.Error(codes.Unauthenticated, err.Error())
}

func StatusInternal(err error) error {
	return status.Error(codes.Internal, err.Error())
}
