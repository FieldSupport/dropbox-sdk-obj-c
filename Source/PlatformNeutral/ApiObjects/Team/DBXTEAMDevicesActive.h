///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXTEAMDevicesActive;

/// 
/// The `DBXTEAMDevicesActive` struct.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Each of the items is an array of values, one value per day. The value is the
/// number of devices active within a time window, ending with that day. If
/// there is no data for a day, then the value will be None.
/// 
@interface DBXTEAMDevicesActive : NSObject <DBXSerializable> 

/// Array of number of linked windows (desktop) clients with activity.
@property (nonatomic) NSArray<NSNumber *> * _Nonnull windows;

/// Array of number of linked mac (desktop) clients with activity.
@property (nonatomic) NSArray<NSNumber *> * _Nonnull macos;

/// Array of number of linked linus (desktop) clients with activity.
@property (nonatomic) NSArray<NSNumber *> * _Nonnull linux;

/// Array of number of linked ios devices with activity.
@property (nonatomic) NSArray<NSNumber *> * _Nonnull ios;

/// Array of number of linked android devices with activity.
@property (nonatomic) NSArray<NSNumber *> * _Nonnull android;

/// Array of number of other linked devices (blackberry, windows phone, etc)
/// with activity.
@property (nonatomic) NSArray<NSNumber *> * _Nonnull other;

/// Array of total number of linked clients with activity.
@property (nonatomic) NSArray<NSNumber *> * _Nonnull total;

/// Full constructor for the `DevicesActive` struct (exposes all instance
/// variables).
- (nonnull instancetype)initWithWindows:(NSArray<NSNumber *> * _Nonnull)windows macos:(NSArray<NSNumber *> * _Nonnull)macos linux:(NSArray<NSNumber *> * _Nonnull)linux ios:(NSArray<NSNumber *> * _Nonnull)ios android:(NSArray<NSNumber *> * _Nonnull)android other:(NSArray<NSNumber *> * _Nonnull)other total:(NSArray<NSNumber *> * _Nonnull)total;

/// Returns a human-readable representation of the `DBXTEAMDevicesActive`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXTEAMDevicesActive` struct.
/// 
@interface DBXTEAMDevicesActiveSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXTEAMDevicesActive` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXTEAMDevicesActive * _Nonnull)obj;

/// Returns an instantiation of the `DBXTEAMDevicesActive` object from a
/// json-compatible dictionary representation.
+ (DBXTEAMDevicesActive * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
