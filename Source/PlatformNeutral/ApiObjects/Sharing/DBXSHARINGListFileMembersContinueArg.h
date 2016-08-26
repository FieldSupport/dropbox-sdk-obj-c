///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXSHARINGListFileMembersContinueArg;

/// 
/// The `DBXSHARINGListFileMembersContinueArg` struct.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Arguments for listFileMembersContinue.
/// 
@interface DBXSHARINGListFileMembersContinueArg : NSObject <DBXSerializable> 

/// The cursor returned by your last call to listFileMembers,
/// listFileMembersContinue, or listFileMembersBatch.
@property (nonatomic, copy) NSString * _Nonnull cursor;

/// Full constructor for the `ListFileMembersContinueArg` struct (exposes all
/// instance variables).
- (nonnull instancetype)initWithCursor:(NSString * _Nonnull)cursor;

/// Returns a human-readable representation of the
/// `DBXSHARINGListFileMembersContinueArg` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXSHARINGListFileMembersContinueArg`
/// struct.
/// 
@interface DBXSHARINGListFileMembersContinueArgSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXSHARINGListFileMembersContinueArg` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXSHARINGListFileMembersContinueArg * _Nonnull)obj;

/// Returns an instantiation of the `DBXSHARINGListFileMembersContinueArg`
/// object from a json-compatible dictionary representation.
+ (DBXSHARINGListFileMembersContinueArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
