package main

import (
	tp "grpcAdvanced/proto"
	"log"
	"net"

	"grpcAdvanced/service"

	"google.golang.org/grpc"
)

const (
	port = ":8384"
)

func main() {
	lis, err := net.Listen("tcp", port)
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}

	ts := new(service.TemplateServer)

	s := grpc.NewServer()
	tp.RegisterTemplateServiceServer(s, ts)
	if err := s.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
