///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"
#import "DBXTEAMMembersDeactivateArg.h"

@class DBXTEAMMembersRemoveArg;
@class DBXTEAMUserSelectorArg;

/// 
/// The `DBXTEAMMembersRemoveArg` struct.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXTEAMMembersRemoveArg : DBXTEAMMembersDeactivateArg <DBXSerializable> 

/// If provided, files from the deleted member account will be transferred to
/// this user.
@property (nonatomic) DBXTEAMUserSelectorArg * _Nullable transferDestId;

/// If provided, errors during the transfer process will be sent via email to
/// this user. If the transfer_dest_id argument was provided, then this argument
/// must be provided as well.
@property (nonatomic) DBXTEAMUserSelectorArg * _Nullable transferAdminId;

/// Downgrade the member to a Basic account. The user will retain the email
/// address associated with their Dropbox  account and data in their account
/// that is not restricted to team members.
@property (nonatomic, copy) NSNumber * _Nonnull keepAccount;

/// Full constructor for the `MembersRemoveArg` struct (exposes all instance
/// variables).
- (nonnull instancetype)initWithUser:(DBXTEAMUserSelectorArg * _Nonnull)user wipeData:(NSNumber * _Nullable)wipeData transferDestId:(DBXTEAMUserSelectorArg * _Nullable)transferDestId transferAdminId:(DBXTEAMUserSelectorArg * _Nullable)transferAdminId keepAccount:(NSNumber * _Nullable)keepAccount;

/// Convenience constructor for the `MembersRemoveArg` struct (exposes only
/// non-nullable instance variables with no default value).
- (nonnull instancetype)initWithUser:(DBXTEAMUserSelectorArg * _Nonnull)user;

/// Returns a human-readable representation of the `DBXTEAMMembersRemoveArg`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXTEAMMembersRemoveArg` struct.
/// 
@interface DBXTEAMMembersRemoveArgSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXTEAMMembersRemoveArg` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXTEAMMembersRemoveArg * _Nonnull)obj;

/// Returns an instantiation of the `DBXTEAMMembersRemoveArg` object from a
/// json-compatible dictionary representation.
+ (DBXTEAMMembersRemoveArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
