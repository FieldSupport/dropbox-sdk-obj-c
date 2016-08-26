///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXSHARINGSharedFolderAccessError;
@class DBXSHARINGUnshareFolderError;

/// 
/// The `DBXSHARINGUnshareFolderError` union.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXSHARINGUnshareFolderError : NSObject <DBXSerializable> 

/// The `DBXSHARINGUnshareFolderErrorTag` enum type represents the possible tag
/// states that the `DBXSHARINGUnshareFolderError` union can exist in.
typedef NS_ENUM(NSInteger, DBXSHARINGUnshareFolderErrorTag) {
    /// (no description).
    DBXSHARINGUnshareFolderErrorAccessError,

    /// This action cannot be performed on a team shared folder.
    DBXSHARINGUnshareFolderErrorTeamFolder,

    /// The current user does not have permission to perform this action.
    DBXSHARINGUnshareFolderErrorNoPermission,

    /// (no description).
    DBXSHARINGUnshareFolderErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic) DBXSHARINGUnshareFolderErrorTag tag;

/// (no description).
@property (nonatomic) DBXSHARINGSharedFolderAccessError * _Nonnull accessError;

/// Initializes union class with tag state of `AccessError`.
- (nonnull instancetype)initWithAccessError:(DBXSHARINGSharedFolderAccessError * _Nonnull)accessError;

/// Initializes union class with tag state of `TeamFolder`.
- (nonnull instancetype)initWithTeamFolder;

/// Initializes union class with tag state of `NoPermission`.
- (nonnull instancetype)initWithNoPermission;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Returns whether the union's current tag state has value `AccessError`.
- (BOOL)isAccessError;

/// Returns whether the union's current tag state has value `TeamFolder`.
- (BOOL)isTeamFolder;

/// Returns whether the union's current tag state has value `NoPermission`.
- (BOOL)isNoPermission;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the
/// `DBXSHARINGUnshareFolderError` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXSHARINGUnshareFolderError` union.
/// 
@interface DBXSHARINGUnshareFolderErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXSHARINGUnshareFolderError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXSHARINGUnshareFolderError * _Nonnull)obj;

/// Returns an instantiation of the `DBXSHARINGUnshareFolderError` object from a
/// json-compatible dictionary representation.
+ (DBXSHARINGUnshareFolderError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
