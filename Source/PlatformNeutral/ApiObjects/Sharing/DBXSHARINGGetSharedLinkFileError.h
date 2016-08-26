///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXSHARINGGetSharedLinkFileError;

/// 
/// The `DBXSHARINGGetSharedLinkFileError` union.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXSHARINGGetSharedLinkFileError : NSObject <DBXSerializable> 

/// The `DBXSHARINGGetSharedLinkFileErrorTag` enum type represents the possible
/// tag states that the `DBXSHARINGGetSharedLinkFileError` union can exist in.
typedef NS_ENUM(NSInteger, DBXSHARINGGetSharedLinkFileErrorTag) {
    /// The shared link wasn't found
    DBXSHARINGGetSharedLinkFileErrorSharedLinkNotFound,

    /// The caller is not allowed to access this shared link
    DBXSHARINGGetSharedLinkFileErrorSharedLinkAccessDenied,

    /// (no description).
    DBXSHARINGGetSharedLinkFileErrorOther,

    /// Directories cannot be retrieved by this endpoint.
    DBXSHARINGGetSharedLinkFileErrorSharedLinkIsDirectory,

};

/// Represents the union's current tag state.
@property (nonatomic) DBXSHARINGGetSharedLinkFileErrorTag tag;

/// Initializes union class with tag state of `SharedLinkNotFound`.
- (nonnull instancetype)initWithSharedLinkNotFound;

/// Initializes union class with tag state of `SharedLinkAccessDenied`.
- (nonnull instancetype)initWithSharedLinkAccessDenied;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Initializes union class with tag state of `SharedLinkIsDirectory`.
- (nonnull instancetype)initWithSharedLinkIsDirectory;

/// Returns whether the union's current tag state has value
/// `SharedLinkNotFound`.
- (BOOL)isSharedLinkNotFound;

/// Returns whether the union's current tag state has value
/// `SharedLinkAccessDenied`.
- (BOOL)isSharedLinkAccessDenied;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns whether the union's current tag state has value
/// `SharedLinkIsDirectory`.
- (BOOL)isSharedLinkIsDirectory;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the
/// `DBXSHARINGGetSharedLinkFileError` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXSHARINGGetSharedLinkFileError` union.
/// 
@interface DBXSHARINGGetSharedLinkFileErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXSHARINGGetSharedLinkFileError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXSHARINGGetSharedLinkFileError * _Nonnull)obj;

/// Returns an instantiation of the `DBXSHARINGGetSharedLinkFileError` object
/// from a json-compatible dictionary representation.
+ (DBXSHARINGGetSharedLinkFileError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
