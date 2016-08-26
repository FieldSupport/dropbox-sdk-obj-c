///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXTEAMGroupFullInfo;
@class DBXTEAMGroupsGetInfoItem;

/// 
/// The `DBXTEAMGroupsGetInfoItem` union.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXTEAMGroupsGetInfoItem : NSObject <DBXSerializable> 

/// The `DBXTEAMGroupsGetInfoItemTag` enum type represents the possible tag
/// states that the `DBXTEAMGroupsGetInfoItem` union can exist in.
typedef NS_ENUM(NSInteger, DBXTEAMGroupsGetInfoItemTag) {
    /// An ID that was provided as a parameter to groupsGetInfo, and did not
    /// match a corresponding group. The ID can be a group ID, or an external
    /// ID, depending on how the method was called.
    DBXTEAMGroupsGetInfoItemIdNotFound,

    /// Info about a group.
    DBXTEAMGroupsGetInfoItemGroupInfo,

};

/// Represents the union's current tag state.
@property (nonatomic) DBXTEAMGroupsGetInfoItemTag tag;

/// An ID that was provided as a parameter to groupsGetInfo, and did not match a
/// corresponding group. The ID can be a group ID, or an external ID, depending
/// on how the method was called.
@property (nonatomic, copy) NSString * _Nonnull idNotFound;

/// Info about a group.
@property (nonatomic) DBXTEAMGroupFullInfo * _Nonnull groupInfo;

/// Initializes union class with tag state of `IdNotFound`.
- (nonnull instancetype)initWithIdNotFound:(NSString * _Nonnull)idNotFound;

/// Initializes union class with tag state of `GroupInfo`.
- (nonnull instancetype)initWithGroupInfo:(DBXTEAMGroupFullInfo * _Nonnull)groupInfo;

/// Returns whether the union's current tag state has value `IdNotFound`.
- (BOOL)isIdNotFound;

/// Returns whether the union's current tag state has value `GroupInfo`.
- (BOOL)isGroupInfo;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DBXTEAMGroupsGetInfoItem`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXTEAMGroupsGetInfoItem` union.
/// 
@interface DBXTEAMGroupsGetInfoItemSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXTEAMGroupsGetInfoItem` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXTEAMGroupsGetInfoItem * _Nonnull)obj;

/// Returns an instantiation of the `DBXTEAMGroupsGetInfoItem` object from a
/// json-compatible dictionary representation.
+ (DBXTEAMGroupsGetInfoItem * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
