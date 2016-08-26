///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXSHARINGPendingUploadMode;

/// 
/// The `DBXSHARINGPendingUploadMode` union.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Flag to indicate pending upload default (for linking to not-yet-existing
/// paths).
/// 
@interface DBXSHARINGPendingUploadMode : NSObject <DBXSerializable> 

/// The `DBXSHARINGPendingUploadModeTag` enum type represents the possible tag
/// states that the `DBXSHARINGPendingUploadMode` union can exist in.
typedef NS_ENUM(NSInteger, DBXSHARINGPendingUploadModeTag) {
    /// Assume pending uploads are files.
    DBXSHARINGPendingUploadModeFile,

    /// Assume pending uploads are folders.
    DBXSHARINGPendingUploadModeFolder,

};

/// Represents the union's current tag state.
@property (nonatomic) DBXSHARINGPendingUploadModeTag tag;

/// Initializes union class with tag state of `File`.
- (nonnull instancetype)initWithFile;

/// Initializes union class with tag state of `Folder`.
- (nonnull instancetype)initWithFolder;

/// Returns whether the union's current tag state has value `File`.
- (BOOL)isFile;

/// Returns whether the union's current tag state has value `Folder`.
- (BOOL)isFolder;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DBXSHARINGPendingUploadMode`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXSHARINGPendingUploadMode` union.
/// 
@interface DBXSHARINGPendingUploadModeSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXSHARINGPendingUploadMode` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXSHARINGPendingUploadMode * _Nonnull)obj;

/// Returns an instantiation of the `DBXSHARINGPendingUploadMode` object from a
/// json-compatible dictionary representation.
+ (DBXSHARINGPendingUploadMode * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
