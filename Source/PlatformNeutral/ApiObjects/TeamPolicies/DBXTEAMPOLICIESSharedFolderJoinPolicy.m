///
/// Auto-generated by Stone, do not modify.
///

#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXTEAMPOLICIESSharedFolderJoinPolicy.h"

@implementation DBXTEAMPOLICIESSharedFolderJoinPolicy 

- (instancetype)initWithFromTeamOnly {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMPOLICIESSharedFolderJoinPolicyFromTeamOnly;
    }
    return self;
}

- (instancetype)initWithFromAnyone {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMPOLICIESSharedFolderJoinPolicyFromAnyone;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMPOLICIESSharedFolderJoinPolicyOther;
    }
    return self;
}

- (BOOL)isFromTeamOnly {
    return _tag == DBXTEAMPOLICIESSharedFolderJoinPolicyFromTeamOnly;
}

- (BOOL)isFromAnyone {
    return _tag == DBXTEAMPOLICIESSharedFolderJoinPolicyFromAnyone;
}

- (BOOL)isOther {
    return _tag == DBXTEAMPOLICIESSharedFolderJoinPolicyOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case DBXTEAMPOLICIESSharedFolderJoinPolicyFromTeamOnly:
           return @"DBXTEAMPOLICIESSharedFolderJoinPolicyFromTeamOnly";
        case DBXTEAMPOLICIESSharedFolderJoinPolicyFromAnyone:
           return @"DBXTEAMPOLICIESSharedFolderJoinPolicyFromAnyone";
        case DBXTEAMPOLICIESSharedFolderJoinPolicyOther:
           return @"DBXTEAMPOLICIESSharedFolderJoinPolicyOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXTEAMPOLICIESSharedFolderJoinPolicySerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXTEAMPOLICIESSharedFolderJoinPolicySerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXTEAMPOLICIESSharedFolderJoinPolicySerializer serialize:self] description];
}

@end


@implementation DBXTEAMPOLICIESSharedFolderJoinPolicySerializer 

+ (NSDictionary *)serialize:(DBXTEAMPOLICIESSharedFolderJoinPolicy *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isFromTeamOnly]) {
        jsonDict[@".tag"] = @"from_team_only";
    }
    else if ([valueObj isFromAnyone]) {
        jsonDict[@".tag"] = @"from_anyone";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBXTEAMPOLICIESSharedFolderJoinPolicy *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"from_team_only"]) {
        return [[DBXTEAMPOLICIESSharedFolderJoinPolicy alloc] initWithFromTeamOnly];
    }
    else if ([tag isEqualToString:@"from_anyone"]) {
        return [[DBXTEAMPOLICIESSharedFolderJoinPolicy alloc] initWithFromAnyone];
    }
    else if ([tag isEqualToString:@"other"]) {
        return [[DBXTEAMPOLICIESSharedFolderJoinPolicy alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
