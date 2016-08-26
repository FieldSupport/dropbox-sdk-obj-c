///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXTEAMGroupsGetInfoError;

/// 
/// The `DBXTEAMGroupsGetInfoError` union.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXTEAMGroupsGetInfoError : NSObject <DBXSerializable> 

/// The `DBXTEAMGroupsGetInfoErrorTag` enum type represents the possible tag
/// states that the `DBXTEAMGroupsGetInfoError` union can exist in.
typedef NS_ENUM(NSInteger, DBXTEAMGroupsGetInfoErrorTag) {
    /// The group is not on your team.
    DBXTEAMGroupsGetInfoErrorGroupNotOnTeam,

    /// (no description).
    DBXTEAMGroupsGetInfoErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic) DBXTEAMGroupsGetInfoErrorTag tag;

/// Initializes union class with tag state of `GroupNotOnTeam`.
- (nonnull instancetype)initWithGroupNotOnTeam;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Returns whether the union's current tag state has value `GroupNotOnTeam`.
- (BOOL)isGroupNotOnTeam;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DBXTEAMGroupsGetInfoError`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXTEAMGroupsGetInfoError` union.
/// 
@interface DBXTEAMGroupsGetInfoErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXTEAMGroupsGetInfoError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXTEAMGroupsGetInfoError * _Nonnull)obj;

/// Returns an instantiation of the `DBXTEAMGroupsGetInfoError` object from a
/// json-compatible dictionary representation.
+ (DBXTEAMGroupsGetInfoError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
