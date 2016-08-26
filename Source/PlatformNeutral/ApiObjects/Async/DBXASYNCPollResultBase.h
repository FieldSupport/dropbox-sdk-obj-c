///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXASYNCPollResultBase;

/// 
/// The `DBXASYNCPollResultBase` union.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Result returned by methods that poll for the status of an asynchronous job.
/// Unions that extend this union should add a 'complete' field with a type of
/// the information returned upon job completion. See PollEmptyResult for an
/// example.
/// 
@interface DBXASYNCPollResultBase : NSObject <DBXSerializable> 

/// The `DBXASYNCPollResultBaseTag` enum type represents the possible tag states
/// that the `DBXASYNCPollResultBase` union can exist in.
typedef NS_ENUM(NSInteger, DBXASYNCPollResultBaseTag) {
    /// The asynchronous job is still in progress.
    DBXASYNCPollResultBaseInProgress,

};

/// Represents the union's current tag state.
@property (nonatomic) DBXASYNCPollResultBaseTag tag;

/// Initializes union class with tag state of `InProgress`.
- (nonnull instancetype)initWithInProgress;

/// Returns whether the union's current tag state has value `InProgress`.
- (BOOL)isInProgress;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DBXASYNCPollResultBase`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXASYNCPollResultBase` union.
/// 
@interface DBXASYNCPollResultBaseSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXASYNCPollResultBase` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXASYNCPollResultBase * _Nonnull)obj;

/// Returns an instantiation of the `DBXASYNCPollResultBase` object from a
/// json-compatible dictionary representation.
+ (DBXASYNCPollResultBase * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
