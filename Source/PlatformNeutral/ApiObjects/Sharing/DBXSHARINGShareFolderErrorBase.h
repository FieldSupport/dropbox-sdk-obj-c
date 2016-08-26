///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXSHARINGShareFolderErrorBase;
@class DBXSHARINGSharePathError;

/// 
/// The `DBXSHARINGShareFolderErrorBase` union.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXSHARINGShareFolderErrorBase : NSObject <DBXSerializable> 

/// The `DBXSHARINGShareFolderErrorBaseTag` enum type represents the possible
/// tag states that the `DBXSHARINGShareFolderErrorBase` union can exist in.
typedef NS_ENUM(NSInteger, DBXSHARINGShareFolderErrorBaseTag) {
    /// The current user's e-mail address is unverified.
    DBXSHARINGShareFolderErrorBaseEmailUnverified,

    /// path in ShareFolderArg is invalid.
    DBXSHARINGShareFolderErrorBaseBadPath,

    /// Team policy is more restrictive than memberPolicy in ShareFolderArg.
    DBXSHARINGShareFolderErrorBaseTeamPolicyDisallowsMemberPolicy,

    /// The current user's account is not allowed to select the specified
    /// sharedLinkPolicy in ShareFolderArg.
    DBXSHARINGShareFolderErrorBaseDisallowedSharedLinkPolicy,

    /// (no description).
    DBXSHARINGShareFolderErrorBaseOther,

};

/// Represents the union's current tag state.
@property (nonatomic) DBXSHARINGShareFolderErrorBaseTag tag;

/// path in ShareFolderArg is invalid.
@property (nonatomic) DBXSHARINGSharePathError * _Nonnull badPath;

/// Initializes union class with tag state of `EmailUnverified`.
- (nonnull instancetype)initWithEmailUnverified;

/// Initializes union class with tag state of `BadPath`.
- (nonnull instancetype)initWithBadPath:(DBXSHARINGSharePathError * _Nonnull)badPath;

/// Initializes union class with tag state of `TeamPolicyDisallowsMemberPolicy`.
- (nonnull instancetype)initWithTeamPolicyDisallowsMemberPolicy;

/// Initializes union class with tag state of `DisallowedSharedLinkPolicy`.
- (nonnull instancetype)initWithDisallowedSharedLinkPolicy;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Returns whether the union's current tag state has value `EmailUnverified`.
- (BOOL)isEmailUnverified;

/// Returns whether the union's current tag state has value `BadPath`.
- (BOOL)isBadPath;

/// Returns whether the union's current tag state has value
/// `TeamPolicyDisallowsMemberPolicy`.
- (BOOL)isTeamPolicyDisallowsMemberPolicy;

/// Returns whether the union's current tag state has value
/// `DisallowedSharedLinkPolicy`.
- (BOOL)isDisallowedSharedLinkPolicy;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the
/// `DBXSHARINGShareFolderErrorBase` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXSHARINGShareFolderErrorBase` union.
/// 
@interface DBXSHARINGShareFolderErrorBaseSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXSHARINGShareFolderErrorBase` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXSHARINGShareFolderErrorBase * _Nonnull)obj;

/// Returns an instantiation of the `DBXSHARINGShareFolderErrorBase` object from
/// a json-compatible dictionary representation.
+ (DBXSHARINGShareFolderErrorBase * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
