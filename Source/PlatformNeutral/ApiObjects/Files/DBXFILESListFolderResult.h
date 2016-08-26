///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXFILESListFolderResult;
@class DBXFILESMetadata;

/// 
/// The `DBXFILESListFolderResult` struct.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXFILESListFolderResult : NSObject <DBXSerializable> 

/// The files and (direct) subfolders in the folder.
@property (nonatomic) NSArray<DBXFILESMetadata *> * _Nonnull entries;

/// Pass the cursor into listFolderContinue to see what's changed in the folder
/// since your previous query.
@property (nonatomic, copy) NSString * _Nonnull cursor;

/// If true, then there are more entries available. Pass the cursor to
/// listFolderContinue to retrieve the rest.
@property (nonatomic, copy) NSNumber * _Nonnull hasMore;

/// Full constructor for the `ListFolderResult` struct (exposes all instance
/// variables).
- (nonnull instancetype)initWithEntries:(NSArray<DBXFILESMetadata *> * _Nonnull)entries cursor:(NSString * _Nonnull)cursor hasMore:(NSNumber * _Nonnull)hasMore;

/// Returns a human-readable representation of the `DBXFILESListFolderResult`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXFILESListFolderResult` struct.
/// 
@interface DBXFILESListFolderResultSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXFILESListFolderResult` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXFILESListFolderResult * _Nonnull)obj;

/// Returns an instantiation of the `DBXFILESListFolderResult` object from a
/// json-compatible dictionary representation.
+ (DBXFILESListFolderResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
