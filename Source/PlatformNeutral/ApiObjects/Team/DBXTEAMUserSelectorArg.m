///
/// Auto-generated by Stone, do not modify.
///

#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXTEAMUserSelectorArg.h"

@implementation DBXTEAMUserSelectorArg 

- (instancetype)initWithTeamMemberId:(NSString *)teamMemberId {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMUserSelectorArgTeamMemberId;
        _teamMemberId = teamMemberId;
    }
    return self;
}

- (instancetype)initWithExternalId:(NSString *)externalId {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMUserSelectorArgExternalId;
        _externalId = externalId;
    }
    return self;
}

- (instancetype)initWithEmail:(NSString *)email {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMUserSelectorArgEmail;
        _email = email;
    }
    return self;
}

- (BOOL)isTeamMemberId {
    return _tag == DBXTEAMUserSelectorArgTeamMemberId;
}

- (BOOL)isExternalId {
    return _tag == DBXTEAMUserSelectorArgExternalId;
}

- (BOOL)isEmail {
    return _tag == DBXTEAMUserSelectorArgEmail;
}

- (NSString *)getTagName {
    switch (_tag) {
        case DBXTEAMUserSelectorArgTeamMemberId:
           return @"DBXTEAMUserSelectorArgTeamMemberId";
        case DBXTEAMUserSelectorArgExternalId:
           return @"DBXTEAMUserSelectorArgExternalId";
        case DBXTEAMUserSelectorArgEmail:
           return @"DBXTEAMUserSelectorArgEmail";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

- (NSString *)teamMemberId {
    if (_tag != DBXTEAMUserSelectorArgTeamMemberId) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required `DBXTEAMUserSelectorArgTeamMemberId`, but was %@.", [self getTagName]];
    }
    return _teamMemberId;
}

- (NSString *)externalId {
    if (_tag != DBXTEAMUserSelectorArgExternalId) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required `DBXTEAMUserSelectorArgExternalId`, but was %@.", [self getTagName]];
    }
    return _externalId;
}

- (NSString *)email {
    if (_tag != DBXTEAMUserSelectorArgEmail) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required `DBXTEAMUserSelectorArgEmail`, but was %@.", [self getTagName]];
    }
    return _email;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXTEAMUserSelectorArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXTEAMUserSelectorArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXTEAMUserSelectorArgSerializer serialize:self] description];
}

@end


@implementation DBXTEAMUserSelectorArgSerializer 

+ (NSDictionary *)serialize:(DBXTEAMUserSelectorArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isTeamMemberId]) {
        jsonDict[@"team_member_id"] = valueObj.teamMemberId;
        jsonDict[@".tag"] = @"team_member_id";
    }
    else if ([valueObj isExternalId]) {
        jsonDict[@"external_id"] = valueObj.externalId;
        jsonDict[@".tag"] = @"external_id";
    }
    else if ([valueObj isEmail]) {
        jsonDict[@"email"] = valueObj.email;
        jsonDict[@".tag"] = @"email";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBXTEAMUserSelectorArg *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"team_member_id"]) {
        NSString *teamMemberId = valueDict[@"team_member_id"];
        return [[DBXTEAMUserSelectorArg alloc] initWithTeamMemberId:teamMemberId];
    }
    else if ([tag isEqualToString:@"external_id"]) {
        NSString *externalId = valueDict[@"external_id"];
        return [[DBXTEAMUserSelectorArg alloc] initWithExternalId:externalId];
    }
    else if ([tag isEqualToString:@"email"]) {
        NSString *email = valueDict[@"email"];
        return [[DBXTEAMUserSelectorArg alloc] initWithEmail:email];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
