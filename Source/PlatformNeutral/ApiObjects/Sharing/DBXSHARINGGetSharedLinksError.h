///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXSHARINGGetSharedLinksError;

/// 
/// The `DBXSHARINGGetSharedLinksError` union.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXSHARINGGetSharedLinksError : NSObject <DBXSerializable> 

/// The `DBXSHARINGGetSharedLinksErrorTag` enum type represents the possible tag
/// states that the `DBXSHARINGGetSharedLinksError` union can exist in.
typedef NS_ENUM(NSInteger, DBXSHARINGGetSharedLinksErrorTag) {
    /// (no description).
    DBXSHARINGGetSharedLinksErrorPath,

    /// (no description).
    DBXSHARINGGetSharedLinksErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic) DBXSHARINGGetSharedLinksErrorTag tag;

/// (no description).
@property (nonatomic, copy) NSString * _Nullable path;

/// Initializes union class with tag state of `Path`.
- (nonnull instancetype)initWithPath:(NSString * _Nullable)path;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Returns whether the union's current tag state has value `Path`.
- (BOOL)isPath;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the
/// `DBXSHARINGGetSharedLinksError` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXSHARINGGetSharedLinksError` union.
/// 
@interface DBXSHARINGGetSharedLinksErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXSHARINGGetSharedLinksError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXSHARINGGetSharedLinksError * _Nonnull)obj;

/// Returns an instantiation of the `DBXSHARINGGetSharedLinksError` object from
/// a json-compatible dictionary representation.
+ (DBXSHARINGGetSharedLinksError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
