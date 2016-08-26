///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXFILESThumbnailFormat;

/// 
/// The `DBXFILESThumbnailFormat` union.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXFILESThumbnailFormat : NSObject <DBXSerializable> 

/// The `DBXFILESThumbnailFormatTag` enum type represents the possible tag
/// states that the `DBXFILESThumbnailFormat` union can exist in.
typedef NS_ENUM(NSInteger, DBXFILESThumbnailFormatTag) {
    /// (no description).
    DBXFILESThumbnailFormatJpeg,

    /// (no description).
    DBXFILESThumbnailFormatPng,

};

/// Represents the union's current tag state.
@property (nonatomic) DBXFILESThumbnailFormatTag tag;

/// Initializes union class with tag state of `Jpeg`.
- (nonnull instancetype)initWithJpeg;

/// Initializes union class with tag state of `Png`.
- (nonnull instancetype)initWithPng;

/// Returns whether the union's current tag state has value `Jpeg`.
- (BOOL)isJpeg;

/// Returns whether the union's current tag state has value `Png`.
- (BOOL)isPng;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DBXFILESThumbnailFormat`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXFILESThumbnailFormat` union.
/// 
@interface DBXFILESThumbnailFormatSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXFILESThumbnailFormat` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXFILESThumbnailFormat * _Nonnull)obj;

/// Returns an instantiation of the `DBXFILESThumbnailFormat` object from a
/// json-compatible dictionary representation.
+ (DBXFILESThumbnailFormat * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
