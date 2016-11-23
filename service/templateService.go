package service

import (
	tp "grpcAdvanced/proto"

	"golang.org/x/net/context"
)

type TemplateServer struct{}

func (ts *TemplateServer) BasicDataTypesRequest(ctx context.Context, in *tp.BasicDataTypes) (*tp.BasicDataTypes, error) {

	reply := tp.BasicDataTypes{}
	reply.BoolType = true
	reply.DoubleType = 0.23
	reply.Int32Type = 5
	reply.StringType = "template"

	return &reply, nil
}

func (ts *TemplateServer) EnumTypeRequest(ctx context.Context, in *tp.EnumType) (*tp.EnumType, error) {

	reply := tp.EnumType{}
	reply.Color = tp.EnumType_green

	return &reply, nil
}

func (ts *TemplateServer) OtherTypeRequest(ctx context.Context, in *tp.OtherType) (*tp.OtherType, error) {

	reply := tp.OtherType{}
	reply.Color = tp.EnumType_white
	reply.Array = []string{"2", "45", "65"}

	return &reply, nil
}
