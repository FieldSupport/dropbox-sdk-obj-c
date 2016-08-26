///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXTEAMMembersRemoveError;

/// 
/// The `DBXTEAMMembersRemoveError` union.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXTEAMMembersRemoveError : NSObject <DBXSerializable> 

/// The `DBXTEAMMembersRemoveErrorTag` enum type represents the possible tag
/// states that the `DBXTEAMMembersRemoveError` union can exist in.
typedef NS_ENUM(NSInteger, DBXTEAMMembersRemoveErrorTag) {
    /// No matching user found. The provided team_member_id, email, or
    /// external_id does not exist on this team.
    DBXTEAMMembersRemoveErrorUserNotFound,

    /// The user is not a member of the team.
    DBXTEAMMembersRemoveErrorUserNotInTeam,

    /// (no description).
    DBXTEAMMembersRemoveErrorOther,

    /// The user is the last admin of the team, so it cannot be removed from it.
    DBXTEAMMembersRemoveErrorRemoveLastAdmin,

    /// Expected removed user and transfer_dest user to be different
    DBXTEAMMembersRemoveErrorRemovedAndTransferDestShouldDiffer,

    /// Expected removed user and transfer_admin user to be different.
    DBXTEAMMembersRemoveErrorRemovedAndTransferAdminShouldDiffer,

    /// No matching user found for the argument transfer_dest_id.
    DBXTEAMMembersRemoveErrorTransferDestUserNotFound,

    /// The provided transfer_dest_id does not exist on this team.
    DBXTEAMMembersRemoveErrorTransferDestUserNotInTeam,

    /// No matching user found for the argument transfer_admin_id.
    DBXTEAMMembersRemoveErrorTransferAdminUserNotFound,

    /// The provided transfer_admin_id does not exist on this team.
    DBXTEAMMembersRemoveErrorTransferAdminUserNotInTeam,

    /// The transfer_admin_id argument must be provided when file transfer is
    /// requested.
    DBXTEAMMembersRemoveErrorUnspecifiedTransferAdminId,

    /// Specified transfer_admin user is not a team admin.
    DBXTEAMMembersRemoveErrorTransferAdminIsNotAdmin,

    /// Cannot keep account and transfer the data to another user at the same
    /// time.
    DBXTEAMMembersRemoveErrorCannotKeepAccountAndTransfer,

    /// Cannot keep account and delete the data at the same time.
    DBXTEAMMembersRemoveErrorCannotKeepAccountAndDeleteData,

    /// The email address of the user is too long to be disabled.
    DBXTEAMMembersRemoveErrorEmailAddressTooLongToBeDisabled,

};

/// Represents the union's current tag state.
@property (nonatomic) DBXTEAMMembersRemoveErrorTag tag;

/// Initializes union class with tag state of `UserNotFound`.
- (nonnull instancetype)initWithUserNotFound;

/// Initializes union class with tag state of `UserNotInTeam`.
- (nonnull instancetype)initWithUserNotInTeam;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Initializes union class with tag state of `RemoveLastAdmin`.
- (nonnull instancetype)initWithRemoveLastAdmin;

/// Initializes union class with tag state of
/// `RemovedAndTransferDestShouldDiffer`.
- (nonnull instancetype)initWithRemovedAndTransferDestShouldDiffer;

/// Initializes union class with tag state of
/// `RemovedAndTransferAdminShouldDiffer`.
- (nonnull instancetype)initWithRemovedAndTransferAdminShouldDiffer;

/// Initializes union class with tag state of `TransferDestUserNotFound`.
- (nonnull instancetype)initWithTransferDestUserNotFound;

/// Initializes union class with tag state of `TransferDestUserNotInTeam`.
- (nonnull instancetype)initWithTransferDestUserNotInTeam;

/// Initializes union class with tag state of `TransferAdminUserNotFound`.
- (nonnull instancetype)initWithTransferAdminUserNotFound;

/// Initializes union class with tag state of `TransferAdminUserNotInTeam`.
- (nonnull instancetype)initWithTransferAdminUserNotInTeam;

/// Initializes union class with tag state of `UnspecifiedTransferAdminId`.
- (nonnull instancetype)initWithUnspecifiedTransferAdminId;

/// Initializes union class with tag state of `TransferAdminIsNotAdmin`.
- (nonnull instancetype)initWithTransferAdminIsNotAdmin;

/// Initializes union class with tag state of `CannotKeepAccountAndTransfer`.
- (nonnull instancetype)initWithCannotKeepAccountAndTransfer;

/// Initializes union class with tag state of `CannotKeepAccountAndDeleteData`.
- (nonnull instancetype)initWithCannotKeepAccountAndDeleteData;

/// Initializes union class with tag state of `EmailAddressTooLongToBeDisabled`.
- (nonnull instancetype)initWithEmailAddressTooLongToBeDisabled;

/// Returns whether the union's current tag state has value `UserNotFound`.
- (BOOL)isUserNotFound;

/// Returns whether the union's current tag state has value `UserNotInTeam`.
- (BOOL)isUserNotInTeam;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns whether the union's current tag state has value `RemoveLastAdmin`.
- (BOOL)isRemoveLastAdmin;

/// Returns whether the union's current tag state has value
/// `RemovedAndTransferDestShouldDiffer`.
- (BOOL)isRemovedAndTransferDestShouldDiffer;

/// Returns whether the union's current tag state has value
/// `RemovedAndTransferAdminShouldDiffer`.
- (BOOL)isRemovedAndTransferAdminShouldDiffer;

/// Returns whether the union's current tag state has value
/// `TransferDestUserNotFound`.
- (BOOL)isTransferDestUserNotFound;

/// Returns whether the union's current tag state has value
/// `TransferDestUserNotInTeam`.
- (BOOL)isTransferDestUserNotInTeam;

/// Returns whether the union's current tag state has value
/// `TransferAdminUserNotFound`.
- (BOOL)isTransferAdminUserNotFound;

/// Returns whether the union's current tag state has value
/// `TransferAdminUserNotInTeam`.
- (BOOL)isTransferAdminUserNotInTeam;

/// Returns whether the union's current tag state has value
/// `UnspecifiedTransferAdminId`.
- (BOOL)isUnspecifiedTransferAdminId;

/// Returns whether the union's current tag state has value
/// `TransferAdminIsNotAdmin`.
- (BOOL)isTransferAdminIsNotAdmin;

/// Returns whether the union's current tag state has value
/// `CannotKeepAccountAndTransfer`.
- (BOOL)isCannotKeepAccountAndTransfer;

/// Returns whether the union's current tag state has value
/// `CannotKeepAccountAndDeleteData`.
- (BOOL)isCannotKeepAccountAndDeleteData;

/// Returns whether the union's current tag state has value
/// `EmailAddressTooLongToBeDisabled`.
- (BOOL)isEmailAddressTooLongToBeDisabled;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DBXTEAMMembersRemoveError`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXTEAMMembersRemoveError` union.
/// 
@interface DBXTEAMMembersRemoveErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXTEAMMembersRemoveError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXTEAMMembersRemoveError * _Nonnull)obj;

/// Returns an instantiation of the `DBXTEAMMembersRemoveError` object from a
/// json-compatible dictionary representation.
+ (DBXTEAMMembersRemoveError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
