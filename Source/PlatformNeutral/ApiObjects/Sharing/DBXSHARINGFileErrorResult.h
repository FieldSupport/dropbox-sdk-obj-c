///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXSHARINGFileErrorResult;

/// 
/// The `DBXSHARINGFileErrorResult` union.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXSHARINGFileErrorResult : NSObject <DBXSerializable> 

/// The `DBXSHARINGFileErrorResultTag` enum type represents the possible tag
/// states that the `DBXSHARINGFileErrorResult` union can exist in.
typedef NS_ENUM(NSInteger, DBXSHARINGFileErrorResultTag) {
    /// File specified by id was not found.
    DBXSHARINGFileErrorResultFileNotFoundError,

    /// User does not have permission to take the specified action on the file.
    DBXSHARINGFileErrorResultInvalidFileActionError,

    /// User does not have permission to access file specified by file.Id.
    DBXSHARINGFileErrorResultPermissionDeniedError,

    /// (no description).
    DBXSHARINGFileErrorResultOther,

};

/// Represents the union's current tag state.
@property (nonatomic) DBXSHARINGFileErrorResultTag tag;

/// File specified by id was not found.
@property (nonatomic, copy) NSString * _Nonnull fileNotFoundError;

/// User does not have permission to take the specified action on the file.
@property (nonatomic, copy) NSString * _Nonnull invalidFileActionError;

/// User does not have permission to access file specified by file.Id.
@property (nonatomic, copy) NSString * _Nonnull permissionDeniedError;

/// Initializes union class with tag state of `FileNotFoundError`.
- (nonnull instancetype)initWithFileNotFoundError:(NSString * _Nonnull)fileNotFoundError;

/// Initializes union class with tag state of `InvalidFileActionError`.
- (nonnull instancetype)initWithInvalidFileActionError:(NSString * _Nonnull)invalidFileActionError;

/// Initializes union class with tag state of `PermissionDeniedError`.
- (nonnull instancetype)initWithPermissionDeniedError:(NSString * _Nonnull)permissionDeniedError;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Returns whether the union's current tag state has value `FileNotFoundError`.
- (BOOL)isFileNotFoundError;

/// Returns whether the union's current tag state has value
/// `InvalidFileActionError`.
- (BOOL)isInvalidFileActionError;

/// Returns whether the union's current tag state has value
/// `PermissionDeniedError`.
- (BOOL)isPermissionDeniedError;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DBXSHARINGFileErrorResult`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXSHARINGFileErrorResult` union.
/// 
@interface DBXSHARINGFileErrorResultSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXSHARINGFileErrorResult` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXSHARINGFileErrorResult * _Nonnull)obj;

/// Returns an instantiation of the `DBXSHARINGFileErrorResult` object from a
/// json-compatible dictionary representation.
+ (DBXSHARINGFileErrorResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
