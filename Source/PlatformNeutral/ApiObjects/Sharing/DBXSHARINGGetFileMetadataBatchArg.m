///
/// Auto-generated by Stone, do not modify.
///

#import "DBXSHARINGFileAction.h"
#import "DBXSHARINGGetFileMetadataBatchArg.h"
#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"

@implementation DBXSHARINGGetFileMetadataBatchArg 

- (instancetype)initWithFiles:(NSArray<NSString *> *)files actions:(NSArray<DBXSHARINGFileAction *> *)actions {
    [DBXStoneValidators arrayValidator:nil maxItems:[NSNumber numberWithInt:100] itemValidator:[DBXStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:@"((/|id:).*|nspath:[^:]*:[^:]*)"]](files);
    [DBXStoneValidators nullableValidator:[DBXStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](actions);

    self = [super init];
    if (self != nil) {
        _files = files;
        _actions = actions;
    }
    return self;
}

- (instancetype)initWithFiles:(NSArray<NSString *> *)files {
    return [self initWithFiles:files actions:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXSHARINGGetFileMetadataBatchArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXSHARINGGetFileMetadataBatchArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXSHARINGGetFileMetadataBatchArgSerializer serialize:self] description];
}

@end


@implementation DBXSHARINGGetFileMetadataBatchArgSerializer 

+ (NSDictionary *)serialize:(DBXSHARINGGetFileMetadataBatchArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"files"] = [DBXArraySerializer serialize:valueObj.files withBlock:^id(id elem) { return elem; }];
    if (valueObj.actions) {
        jsonDict[@"actions"] = [DBXArraySerializer serialize:valueObj.actions withBlock:^id(id elem) { return [DBXSHARINGFileActionSerializer serialize:elem]; }];
    }

    return jsonDict;
}

+ (DBXSHARINGGetFileMetadataBatchArg *)deserialize:(NSDictionary *)valueDict {
    NSArray<NSString *> *files = [DBXArraySerializer deserialize:valueDict[@"files"] withBlock:^id(id elem) { return elem; }];
    NSArray<DBXSHARINGFileAction *> *actions = valueDict[@"actions"] ? [DBXArraySerializer deserialize:valueDict[@"actions"] withBlock:^id(id elem) { return [DBXSHARINGFileActionSerializer deserialize:elem]; }] : nil;

    return [[DBXSHARINGGetFileMetadataBatchArg alloc] initWithFiles:files actions:actions];
}

@end
