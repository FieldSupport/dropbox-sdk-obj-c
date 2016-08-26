///
/// Auto-generated by Stone, do not modify.
///

#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXTEAMMembersDeactivateArg.h"
#import "DBXTEAMUserSelectorArg.h"

@implementation DBXTEAMMembersDeactivateArg 

- (instancetype)initWithUser:(DBXTEAMUserSelectorArg *)user wipeData:(NSNumber *)wipeData {

    self = [super init];
    if (self != nil) {
        _user = user;
        _wipeData = wipeData ?: @YES;
    }
    return self;
}

- (instancetype)initWithUser:(DBXTEAMUserSelectorArg *)user {
    return [self initWithUser:user wipeData:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXTEAMMembersDeactivateArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXTEAMMembersDeactivateArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXTEAMMembersDeactivateArgSerializer serialize:self] description];
}

@end


@implementation DBXTEAMMembersDeactivateArgSerializer 

+ (NSDictionary *)serialize:(DBXTEAMMembersDeactivateArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"user"] = [DBXTEAMUserSelectorArgSerializer serialize:valueObj.user];
    jsonDict[@"wipe_data"] = valueObj.wipeData;

    return jsonDict;
}

+ (DBXTEAMMembersDeactivateArg *)deserialize:(NSDictionary *)valueDict {
    DBXTEAMUserSelectorArg *user = [DBXTEAMUserSelectorArgSerializer deserialize:valueDict[@"user"]];
    NSNumber *wipeData = valueDict[@"wipe_data"];

    return [[DBXTEAMMembersDeactivateArg alloc] initWithUser:user wipeData:wipeData];
}

@end
