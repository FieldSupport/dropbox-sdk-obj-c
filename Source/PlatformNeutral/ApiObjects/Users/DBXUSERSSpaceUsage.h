///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXUSERSSpaceAllocation;
@class DBXUSERSSpaceUsage;

/// 
/// The `DBXUSERSSpaceUsage` struct.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Information about a user's space usage and quota.
/// 
@interface DBXUSERSSpaceUsage : NSObject <DBXSerializable> 

/// The user's total space usage (bytes).
@property (nonatomic, copy) NSNumber * _Nonnull used;

/// The user's space allocation.
@property (nonatomic) DBXUSERSSpaceAllocation * _Nonnull allocation;

/// Full constructor for the `SpaceUsage` struct (exposes all instance
/// variables).
- (nonnull instancetype)initWithUsed:(NSNumber * _Nonnull)used allocation:(DBXUSERSSpaceAllocation * _Nonnull)allocation;

/// Returns a human-readable representation of the `DBXUSERSSpaceUsage` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXUSERSSpaceUsage` struct.
/// 
@interface DBXUSERSSpaceUsageSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXUSERSSpaceUsage` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXUSERSSpaceUsage * _Nonnull)obj;

/// Returns an instantiation of the `DBXUSERSSpaceUsage` object from a
/// json-compatible dictionary representation.
+ (DBXUSERSSpaceUsage * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
