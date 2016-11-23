#import "Template.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>



NS_ASSUME_NONNULL_BEGIN

@protocol TemplateService <NSObject>

#pragma mark BasicDataTypesRequest(BasicDataTypes) returns (BasicDataTypes)

- (void)basicDataTypesRequestWithRequest:(BasicDataTypes *)request handler:(void(^)(BasicDataTypes *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToBasicDataTypesRequestWithRequest:(BasicDataTypes *)request handler:(void(^)(BasicDataTypes *_Nullable response, NSError *_Nullable error))handler;


#pragma mark EnumTypeRequest(EnumType) returns (EnumType)

- (void)enumTypeRequestWithRequest:(EnumType *)request handler:(void(^)(EnumType *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToEnumTypeRequestWithRequest:(EnumType *)request handler:(void(^)(EnumType *_Nullable response, NSError *_Nullable error))handler;


#pragma mark OtherTypeRequest(OtherType) returns (OtherType)

- (void)otherTypeRequestWithRequest:(OtherType *)request handler:(void(^)(OtherType *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToOtherTypeRequestWithRequest:(OtherType *)request handler:(void(^)(OtherType *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface TemplateService : GRPCProtoService<TemplateService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
