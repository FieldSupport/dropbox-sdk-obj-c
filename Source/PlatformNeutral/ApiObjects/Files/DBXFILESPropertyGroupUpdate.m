///
/// Auto-generated by Stone, do not modify.
///

#import "DBXFILESPropertyGroupUpdate.h"
#import "DBXPROPERTIESPropertyField.h"
#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"

@implementation DBXFILESPropertyGroupUpdate 

- (instancetype)initWithTemplateId:(NSString *)templateId addOrUpdateFields:(NSArray<DBXPROPERTIESPropertyField *> *)addOrUpdateFields removeFields:(NSArray<NSString *> *)removeFields {
    [DBXStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:@"(/|ptid:).*"](templateId);
    [DBXStoneValidators nullableValidator:[DBXStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](addOrUpdateFields);
    [DBXStoneValidators nullableValidator:[DBXStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](removeFields);

    self = [super init];
    if (self != nil) {
        _templateId = templateId;
        _addOrUpdateFields = addOrUpdateFields;
        _removeFields = removeFields;
    }
    return self;
}

- (instancetype)initWithTemplateId:(NSString *)templateId {
    return [self initWithTemplateId:templateId addOrUpdateFields:nil removeFields:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXFILESPropertyGroupUpdateSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXFILESPropertyGroupUpdateSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXFILESPropertyGroupUpdateSerializer serialize:self] description];
}

@end


@implementation DBXFILESPropertyGroupUpdateSerializer 

+ (NSDictionary *)serialize:(DBXFILESPropertyGroupUpdate *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"template_id"] = valueObj.templateId;
    if (valueObj.addOrUpdateFields) {
        jsonDict[@"add_or_update_fields"] = [DBXArraySerializer serialize:valueObj.addOrUpdateFields withBlock:^id(id elem) { return [DBXPROPERTIESPropertyFieldSerializer serialize:elem]; }];
    }
    if (valueObj.removeFields) {
        jsonDict[@"remove_fields"] = [DBXArraySerializer serialize:valueObj.removeFields withBlock:^id(id elem) { return elem; }];
    }

    return jsonDict;
}

+ (DBXFILESPropertyGroupUpdate *)deserialize:(NSDictionary *)valueDict {
    NSString *templateId = valueDict[@"template_id"];
    NSArray<DBXPROPERTIESPropertyField *> *addOrUpdateFields = valueDict[@"add_or_update_fields"] ? [DBXArraySerializer deserialize:valueDict[@"add_or_update_fields"] withBlock:^id(id elem) { return [DBXPROPERTIESPropertyFieldSerializer deserialize:elem]; }] : nil;
    NSArray<NSString *> *removeFields = valueDict[@"remove_fields"] ? [DBXArraySerializer deserialize:valueDict[@"remove_fields"] withBlock:^id(id elem) { return elem; }] : nil;

    return [[DBXFILESPropertyGroupUpdate alloc] initWithTemplateId:templateId addOrUpdateFields:addOrUpdateFields removeFields:removeFields];
}

@end
