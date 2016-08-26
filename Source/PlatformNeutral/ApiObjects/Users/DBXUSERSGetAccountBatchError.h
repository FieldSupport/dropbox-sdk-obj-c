///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXUSERSGetAccountBatchError;

/// 
/// The `DBXUSERSGetAccountBatchError` union.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXUSERSGetAccountBatchError : NSObject <DBXSerializable> 

/// The `DBXUSERSGetAccountBatchErrorTag` enum type represents the possible tag
/// states that the `DBXUSERSGetAccountBatchError` union can exist in.
typedef NS_ENUM(NSInteger, DBXUSERSGetAccountBatchErrorTag) {
    /// The value is an account ID specified in accountIds in GetAccountBatchArg
    /// that does not exist.
    DBXUSERSGetAccountBatchErrorNoAccount,

    /// (no description).
    DBXUSERSGetAccountBatchErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic) DBXUSERSGetAccountBatchErrorTag tag;

/// The value is an account ID specified in accountIds in GetAccountBatchArg
/// that does not exist.
@property (nonatomic, copy) NSString * _Nonnull noAccount;

/// Initializes union class with tag state of `NoAccount`.
- (nonnull instancetype)initWithNoAccount:(NSString * _Nonnull)noAccount;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Returns whether the union's current tag state has value `NoAccount`.
- (BOOL)isNoAccount;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the
/// `DBXUSERSGetAccountBatchError` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXUSERSGetAccountBatchError` union.
/// 
@interface DBXUSERSGetAccountBatchErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXUSERSGetAccountBatchError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXUSERSGetAccountBatchError * _Nonnull)obj;

/// Returns an instantiation of the `DBXUSERSGetAccountBatchError` object from a
/// json-compatible dictionary representation.
+ (DBXUSERSGetAccountBatchError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
