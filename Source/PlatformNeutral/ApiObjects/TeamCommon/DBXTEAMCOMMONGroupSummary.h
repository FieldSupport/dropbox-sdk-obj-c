///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXTEAMCOMMONGroupManagementType;
@class DBXTEAMCOMMONGroupSummary;

/// 
/// The `DBXTEAMCOMMONGroupSummary` struct.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Information about a group.
/// 
@interface DBXTEAMCOMMONGroupSummary : NSObject <DBXSerializable> 

/// (no description).
@property (nonatomic, copy) NSString * _Nonnull groupName;

/// (no description).
@property (nonatomic, copy) NSString * _Nonnull groupId;

/// External ID of group. This is an arbitrary ID that an admin can attach to a
/// group.
@property (nonatomic, copy) NSString * _Nullable groupExternalId;

/// The number of members in the group.
@property (nonatomic, copy) NSNumber * _Nullable memberCount;

/// Who is allowed to manage the group.
@property (nonatomic) DBXTEAMCOMMONGroupManagementType * _Nonnull groupManagementType;

/// Full constructor for the `GroupSummary` struct (exposes all instance
/// variables).
- (nonnull instancetype)initWithGroupName:(NSString * _Nonnull)groupName groupId:(NSString * _Nonnull)groupId groupManagementType:(DBXTEAMCOMMONGroupManagementType * _Nonnull)groupManagementType groupExternalId:(NSString * _Nullable)groupExternalId memberCount:(NSNumber * _Nullable)memberCount;

/// Convenience constructor for the `GroupSummary` struct (exposes only
/// non-nullable instance variables with no default value).
- (nonnull instancetype)initWithGroupName:(NSString * _Nonnull)groupName groupId:(NSString * _Nonnull)groupId groupManagementType:(DBXTEAMCOMMONGroupManagementType * _Nonnull)groupManagementType;

/// Returns a human-readable representation of the `DBXTEAMCOMMONGroupSummary`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXTEAMCOMMONGroupSummary` struct.
/// 
@interface DBXTEAMCOMMONGroupSummarySerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXTEAMCOMMONGroupSummary` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXTEAMCOMMONGroupSummary * _Nonnull)obj;

/// Returns an instantiation of the `DBXTEAMCOMMONGroupSummary` object from a
/// json-compatible dictionary representation.
+ (DBXTEAMCOMMONGroupSummary * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
