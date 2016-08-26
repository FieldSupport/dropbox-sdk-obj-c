///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXFILESCommitInfo;
@class DBXFILESWriteMode;

/// 
/// The `DBXFILESCommitInfo` struct.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXFILESCommitInfo : NSObject <DBXSerializable> 

/// Path in the user's Dropbox to save the file.
@property (nonatomic, copy) NSString * _Nonnull path;

/// Selects what to do if the file already exists.
@property (nonatomic) DBXFILESWriteMode * _Nonnull mode;

/// If there's a conflict, as determined by mode, have the Dropbox server try to
/// autorename the file to avoid conflict.
@property (nonatomic, copy) NSNumber * _Nonnull autorename;

/// The value to store as the clientModified timestamp. Dropbox automatically
/// records the time at which the file was written to the Dropbox servers. It
/// can also record an additional timestamp, provided by Dropbox desktop
/// clients, mobile clients, and API apps of when the file was actually created
/// or modified.
@property (nonatomic) NSDate * _Nullable clientModified;

/// Normally, users are made aware of any file modifications in their Dropbox
/// account via notifications in the client software. If true, this tells the
/// clients that this modification shouldn't result in a user notification.
@property (nonatomic, copy) NSNumber * _Nonnull mute;

/// Full constructor for the `CommitInfo` struct (exposes all instance
/// variables).
- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path mode:(DBXFILESWriteMode * _Nullable)mode autorename:(NSNumber * _Nullable)autorename clientModified:(NSDate * _Nullable)clientModified mute:(NSNumber * _Nullable)mute;

/// Convenience constructor for the `CommitInfo` struct (exposes only
/// non-nullable instance variables with no default value).
- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path;

/// Returns a human-readable representation of the `DBXFILESCommitInfo` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXFILESCommitInfo` struct.
/// 
@interface DBXFILESCommitInfoSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXFILESCommitInfo` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXFILESCommitInfo * _Nonnull)obj;

/// Returns an instantiation of the `DBXFILESCommitInfo` object from a
/// json-compatible dictionary representation.
+ (DBXFILESCommitInfo * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
