///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXTEAMApiApp;
@class DBXTEAMMemberLinkedApps;

/// 
/// The `DBXTEAMMemberLinkedApps` struct.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Information on linked applications of a team member.
/// 
@interface DBXTEAMMemberLinkedApps : NSObject <DBXSerializable> 

/// The member unique Id
@property (nonatomic, copy) NSString * _Nonnull teamMemberId;

/// List of third party applications linked by this team member
@property (nonatomic) NSArray<DBXTEAMApiApp *> * _Nonnull linkedApiApps;

/// Full constructor for the `MemberLinkedApps` struct (exposes all instance
/// variables).
- (nonnull instancetype)initWithTeamMemberId:(NSString * _Nonnull)teamMemberId linkedApiApps:(NSArray<DBXTEAMApiApp *> * _Nonnull)linkedApiApps;

/// Returns a human-readable representation of the `DBXTEAMMemberLinkedApps`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXTEAMMemberLinkedApps` struct.
/// 
@interface DBXTEAMMemberLinkedAppsSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXTEAMMemberLinkedApps` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXTEAMMemberLinkedApps * _Nonnull)obj;

/// Returns an instantiation of the `DBXTEAMMemberLinkedApps` object from a
/// json-compatible dictionary representation.
+ (DBXTEAMMemberLinkedApps * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
