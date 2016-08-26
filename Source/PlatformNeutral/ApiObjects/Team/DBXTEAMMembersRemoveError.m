///
/// Auto-generated by Stone, do not modify.
///

#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXTEAMMembersDeactivateError.h"
#import "DBXTEAMMembersRemoveError.h"

@implementation DBXTEAMMembersRemoveError 

- (instancetype)initWithUserNotFound {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMMembersRemoveErrorUserNotFound;
    }
    return self;
}

- (instancetype)initWithUserNotInTeam {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMMembersRemoveErrorUserNotInTeam;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMMembersRemoveErrorOther;
    }
    return self;
}

- (instancetype)initWithRemoveLastAdmin {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMMembersRemoveErrorRemoveLastAdmin;
    }
    return self;
}

- (instancetype)initWithRemovedAndTransferDestShouldDiffer {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMMembersRemoveErrorRemovedAndTransferDestShouldDiffer;
    }
    return self;
}

- (instancetype)initWithRemovedAndTransferAdminShouldDiffer {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMMembersRemoveErrorRemovedAndTransferAdminShouldDiffer;
    }
    return self;
}

- (instancetype)initWithTransferDestUserNotFound {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMMembersRemoveErrorTransferDestUserNotFound;
    }
    return self;
}

- (instancetype)initWithTransferDestUserNotInTeam {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMMembersRemoveErrorTransferDestUserNotInTeam;
    }
    return self;
}

- (instancetype)initWithTransferAdminUserNotFound {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMMembersRemoveErrorTransferAdminUserNotFound;
    }
    return self;
}

- (instancetype)initWithTransferAdminUserNotInTeam {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMMembersRemoveErrorTransferAdminUserNotInTeam;
    }
    return self;
}

- (instancetype)initWithUnspecifiedTransferAdminId {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMMembersRemoveErrorUnspecifiedTransferAdminId;
    }
    return self;
}

- (instancetype)initWithTransferAdminIsNotAdmin {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMMembersRemoveErrorTransferAdminIsNotAdmin;
    }
    return self;
}

- (instancetype)initWithCannotKeepAccountAndTransfer {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMMembersRemoveErrorCannotKeepAccountAndTransfer;
    }
    return self;
}

- (instancetype)initWithCannotKeepAccountAndDeleteData {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMMembersRemoveErrorCannotKeepAccountAndDeleteData;
    }
    return self;
}

- (instancetype)initWithEmailAddressTooLongToBeDisabled {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMMembersRemoveErrorEmailAddressTooLongToBeDisabled;
    }
    return self;
}

- (BOOL)isUserNotFound {
    return _tag == DBXTEAMMembersRemoveErrorUserNotFound;
}

- (BOOL)isUserNotInTeam {
    return _tag == DBXTEAMMembersRemoveErrorUserNotInTeam;
}

- (BOOL)isOther {
    return _tag == DBXTEAMMembersRemoveErrorOther;
}

- (BOOL)isRemoveLastAdmin {
    return _tag == DBXTEAMMembersRemoveErrorRemoveLastAdmin;
}

- (BOOL)isRemovedAndTransferDestShouldDiffer {
    return _tag == DBXTEAMMembersRemoveErrorRemovedAndTransferDestShouldDiffer;
}

- (BOOL)isRemovedAndTransferAdminShouldDiffer {
    return _tag == DBXTEAMMembersRemoveErrorRemovedAndTransferAdminShouldDiffer;
}

- (BOOL)isTransferDestUserNotFound {
    return _tag == DBXTEAMMembersRemoveErrorTransferDestUserNotFound;
}

- (BOOL)isTransferDestUserNotInTeam {
    return _tag == DBXTEAMMembersRemoveErrorTransferDestUserNotInTeam;
}

- (BOOL)isTransferAdminUserNotFound {
    return _tag == DBXTEAMMembersRemoveErrorTransferAdminUserNotFound;
}

- (BOOL)isTransferAdminUserNotInTeam {
    return _tag == DBXTEAMMembersRemoveErrorTransferAdminUserNotInTeam;
}

- (BOOL)isUnspecifiedTransferAdminId {
    return _tag == DBXTEAMMembersRemoveErrorUnspecifiedTransferAdminId;
}

- (BOOL)isTransferAdminIsNotAdmin {
    return _tag == DBXTEAMMembersRemoveErrorTransferAdminIsNotAdmin;
}

- (BOOL)isCannotKeepAccountAndTransfer {
    return _tag == DBXTEAMMembersRemoveErrorCannotKeepAccountAndTransfer;
}

- (BOOL)isCannotKeepAccountAndDeleteData {
    return _tag == DBXTEAMMembersRemoveErrorCannotKeepAccountAndDeleteData;
}

- (BOOL)isEmailAddressTooLongToBeDisabled {
    return _tag == DBXTEAMMembersRemoveErrorEmailAddressTooLongToBeDisabled;
}

- (NSString *)getTagName {
    switch (_tag) {
        case DBXTEAMMembersRemoveErrorUserNotFound:
           return @"DBXTEAMMembersRemoveErrorUserNotFound";
        case DBXTEAMMembersRemoveErrorUserNotInTeam:
           return @"DBXTEAMMembersRemoveErrorUserNotInTeam";
        case DBXTEAMMembersRemoveErrorOther:
           return @"DBXTEAMMembersRemoveErrorOther";
        case DBXTEAMMembersRemoveErrorRemoveLastAdmin:
           return @"DBXTEAMMembersRemoveErrorRemoveLastAdmin";
        case DBXTEAMMembersRemoveErrorRemovedAndTransferDestShouldDiffer:
           return @"DBXTEAMMembersRemoveErrorRemovedAndTransferDestShouldDiffer";
        case DBXTEAMMembersRemoveErrorRemovedAndTransferAdminShouldDiffer:
           return @"DBXTEAMMembersRemoveErrorRemovedAndTransferAdminShouldDiffer";
        case DBXTEAMMembersRemoveErrorTransferDestUserNotFound:
           return @"DBXTEAMMembersRemoveErrorTransferDestUserNotFound";
        case DBXTEAMMembersRemoveErrorTransferDestUserNotInTeam:
           return @"DBXTEAMMembersRemoveErrorTransferDestUserNotInTeam";
        case DBXTEAMMembersRemoveErrorTransferAdminUserNotFound:
           return @"DBXTEAMMembersRemoveErrorTransferAdminUserNotFound";
        case DBXTEAMMembersRemoveErrorTransferAdminUserNotInTeam:
           return @"DBXTEAMMembersRemoveErrorTransferAdminUserNotInTeam";
        case DBXTEAMMembersRemoveErrorUnspecifiedTransferAdminId:
           return @"DBXTEAMMembersRemoveErrorUnspecifiedTransferAdminId";
        case DBXTEAMMembersRemoveErrorTransferAdminIsNotAdmin:
           return @"DBXTEAMMembersRemoveErrorTransferAdminIsNotAdmin";
        case DBXTEAMMembersRemoveErrorCannotKeepAccountAndTransfer:
           return @"DBXTEAMMembersRemoveErrorCannotKeepAccountAndTransfer";
        case DBXTEAMMembersRemoveErrorCannotKeepAccountAndDeleteData:
           return @"DBXTEAMMembersRemoveErrorCannotKeepAccountAndDeleteData";
        case DBXTEAMMembersRemoveErrorEmailAddressTooLongToBeDisabled:
           return @"DBXTEAMMembersRemoveErrorEmailAddressTooLongToBeDisabled";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXTEAMMembersRemoveErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXTEAMMembersRemoveErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXTEAMMembersRemoveErrorSerializer serialize:self] description];
}

@end


@implementation DBXTEAMMembersRemoveErrorSerializer 

+ (NSDictionary *)serialize:(DBXTEAMMembersRemoveError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isUserNotFound]) {
        jsonDict[@".tag"] = @"user_not_found";
    }
    else if ([valueObj isUserNotInTeam]) {
        jsonDict[@".tag"] = @"user_not_in_team";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else if ([valueObj isRemoveLastAdmin]) {
        jsonDict[@".tag"] = @"remove_last_admin";
    }
    else if ([valueObj isRemovedAndTransferDestShouldDiffer]) {
        jsonDict[@".tag"] = @"removed_and_transfer_dest_should_differ";
    }
    else if ([valueObj isRemovedAndTransferAdminShouldDiffer]) {
        jsonDict[@".tag"] = @"removed_and_transfer_admin_should_differ";
    }
    else if ([valueObj isTransferDestUserNotFound]) {
        jsonDict[@".tag"] = @"transfer_dest_user_not_found";
    }
    else if ([valueObj isTransferDestUserNotInTeam]) {
        jsonDict[@".tag"] = @"transfer_dest_user_not_in_team";
    }
    else if ([valueObj isTransferAdminUserNotFound]) {
        jsonDict[@".tag"] = @"transfer_admin_user_not_found";
    }
    else if ([valueObj isTransferAdminUserNotInTeam]) {
        jsonDict[@".tag"] = @"transfer_admin_user_not_in_team";
    }
    else if ([valueObj isUnspecifiedTransferAdminId]) {
        jsonDict[@".tag"] = @"unspecified_transfer_admin_id";
    }
    else if ([valueObj isTransferAdminIsNotAdmin]) {
        jsonDict[@".tag"] = @"transfer_admin_is_not_admin";
    }
    else if ([valueObj isCannotKeepAccountAndTransfer]) {
        jsonDict[@".tag"] = @"cannot_keep_account_and_transfer";
    }
    else if ([valueObj isCannotKeepAccountAndDeleteData]) {
        jsonDict[@".tag"] = @"cannot_keep_account_and_delete_data";
    }
    else if ([valueObj isEmailAddressTooLongToBeDisabled]) {
        jsonDict[@".tag"] = @"email_address_too_long_to_be_disabled";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBXTEAMMembersRemoveError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"user_not_found"]) {
        return [[DBXTEAMMembersRemoveError alloc] initWithUserNotFound];
    }
    else if ([tag isEqualToString:@"user_not_in_team"]) {
        return [[DBXTEAMMembersRemoveError alloc] initWithUserNotInTeam];
    }
    else if ([tag isEqualToString:@"other"]) {
        return [[DBXTEAMMembersRemoveError alloc] initWithOther];
    }
    else if ([tag isEqualToString:@"remove_last_admin"]) {
        return [[DBXTEAMMembersRemoveError alloc] initWithRemoveLastAdmin];
    }
    else if ([tag isEqualToString:@"removed_and_transfer_dest_should_differ"]) {
        return [[DBXTEAMMembersRemoveError alloc] initWithRemovedAndTransferDestShouldDiffer];
    }
    else if ([tag isEqualToString:@"removed_and_transfer_admin_should_differ"]) {
        return [[DBXTEAMMembersRemoveError alloc] initWithRemovedAndTransferAdminShouldDiffer];
    }
    else if ([tag isEqualToString:@"transfer_dest_user_not_found"]) {
        return [[DBXTEAMMembersRemoveError alloc] initWithTransferDestUserNotFound];
    }
    else if ([tag isEqualToString:@"transfer_dest_user_not_in_team"]) {
        return [[DBXTEAMMembersRemoveError alloc] initWithTransferDestUserNotInTeam];
    }
    else if ([tag isEqualToString:@"transfer_admin_user_not_found"]) {
        return [[DBXTEAMMembersRemoveError alloc] initWithTransferAdminUserNotFound];
    }
    else if ([tag isEqualToString:@"transfer_admin_user_not_in_team"]) {
        return [[DBXTEAMMembersRemoveError alloc] initWithTransferAdminUserNotInTeam];
    }
    else if ([tag isEqualToString:@"unspecified_transfer_admin_id"]) {
        return [[DBXTEAMMembersRemoveError alloc] initWithUnspecifiedTransferAdminId];
    }
    else if ([tag isEqualToString:@"transfer_admin_is_not_admin"]) {
        return [[DBXTEAMMembersRemoveError alloc] initWithTransferAdminIsNotAdmin];
    }
    else if ([tag isEqualToString:@"cannot_keep_account_and_transfer"]) {
        return [[DBXTEAMMembersRemoveError alloc] initWithCannotKeepAccountAndTransfer];
    }
    else if ([tag isEqualToString:@"cannot_keep_account_and_delete_data"]) {
        return [[DBXTEAMMembersRemoveError alloc] initWithCannotKeepAccountAndDeleteData];
    }
    else if ([tag isEqualToString:@"email_address_too_long_to_be_disabled"]) {
        return [[DBXTEAMMembersRemoveError alloc] initWithEmailAddressTooLongToBeDisabled];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
