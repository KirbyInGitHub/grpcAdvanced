#import "Template.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation TemplateService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"template" serviceName:@"TemplateService"]);
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}


#pragma mark BasicDataTypesRequest(BasicDataTypes) returns (BasicDataTypes)

- (void)basicDataTypesRequestWithRequest:(BasicDataTypes *)request handler:(void(^)(BasicDataTypes *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBasicDataTypesRequestWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToBasicDataTypesRequestWithRequest:(BasicDataTypes *)request handler:(void(^)(BasicDataTypes *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"BasicDataTypesRequest"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[BasicDataTypes class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark EnumTypeRequest(EnumType) returns (EnumType)

- (void)enumTypeRequestWithRequest:(EnumType *)request handler:(void(^)(EnumType *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToEnumTypeRequestWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToEnumTypeRequestWithRequest:(EnumType *)request handler:(void(^)(EnumType *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"EnumTypeRequest"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[EnumType class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark OtherTypeRequest(OtherType) returns (OtherType)

- (void)otherTypeRequestWithRequest:(OtherType *)request handler:(void(^)(OtherType *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToOtherTypeRequestWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToOtherTypeRequestWithRequest:(OtherType *)request handler:(void(^)(OtherType *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"OtherTypeRequest"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[OtherType class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
