///
/// Auto-generated by Stone, do not modify.
///

#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXTEAMUpdatePropertyTemplateResult.h"

@implementation DBXTEAMUpdatePropertyTemplateResult 

- (instancetype)initWithTemplateId:(NSString *)templateId {
    [DBXStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:@"(/|ptid:).*"](templateId);

    self = [super init];
    if (self != nil) {
        _templateId = templateId;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXTEAMUpdatePropertyTemplateResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXTEAMUpdatePropertyTemplateResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXTEAMUpdatePropertyTemplateResultSerializer serialize:self] description];
}

@end


@implementation DBXTEAMUpdatePropertyTemplateResultSerializer 

+ (NSDictionary *)serialize:(DBXTEAMUpdatePropertyTemplateResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"template_id"] = valueObj.templateId;

    return jsonDict;
}

+ (DBXTEAMUpdatePropertyTemplateResult *)deserialize:(NSDictionary *)valueDict {
    NSString *templateId = valueDict[@"template_id"];

    return [[DBXTEAMUpdatePropertyTemplateResult alloc] initWithTemplateId:templateId];
}

@end
