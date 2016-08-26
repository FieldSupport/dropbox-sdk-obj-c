///
/// Auto-generated by Stone, do not modify.
///

#import "DBXFILESRestoreArg.h"
#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"

@implementation DBXFILESRestoreArg 

- (instancetype)initWithPath:(NSString *)path rev:(NSString *)rev {
    [DBXStoneValidators stringValidator:nil maxLength:nil pattern:@"(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)"](path);
    [DBXStoneValidators stringValidator:[NSNumber numberWithInt:9] maxLength:nil pattern:@"[0-9a-f]+"](rev);

    self = [super init];
    if (self != nil) {
        _path = path;
        _rev = rev;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXFILESRestoreArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXFILESRestoreArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXFILESRestoreArgSerializer serialize:self] description];
}

@end


@implementation DBXFILESRestoreArgSerializer 

+ (NSDictionary *)serialize:(DBXFILESRestoreArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"path"] = valueObj.path;
    jsonDict[@"rev"] = valueObj.rev;

    return jsonDict;
}

+ (DBXFILESRestoreArg *)deserialize:(NSDictionary *)valueDict {
    NSString *path = valueDict[@"path"];
    NSString *rev = valueDict[@"rev"];

    return [[DBXFILESRestoreArg alloc] initWithPath:path rev:rev];
}

@end
