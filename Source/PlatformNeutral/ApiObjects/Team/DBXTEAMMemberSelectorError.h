///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXTEAMMemberSelectorError;

/// 
/// The `DBXTEAMMemberSelectorError` union.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXTEAMMemberSelectorError : NSObject <DBXSerializable> 

/// The `DBXTEAMMemberSelectorErrorTag` enum type represents the possible tag
/// states that the `DBXTEAMMemberSelectorError` union can exist in.
typedef NS_ENUM(NSInteger, DBXTEAMMemberSelectorErrorTag) {
    /// No matching user found. The provided team_member_id, email, or
    /// external_id does not exist on this team.
    DBXTEAMMemberSelectorErrorUserNotFound,

    /// The user is not a member of the team.
    DBXTEAMMemberSelectorErrorUserNotInTeam,

};

/// Represents the union's current tag state.
@property (nonatomic) DBXTEAMMemberSelectorErrorTag tag;

/// Initializes union class with tag state of `UserNotFound`.
- (nonnull instancetype)initWithUserNotFound;

/// Initializes union class with tag state of `UserNotInTeam`.
- (nonnull instancetype)initWithUserNotInTeam;

/// Returns whether the union's current tag state has value `UserNotFound`.
- (BOOL)isUserNotFound;

/// Returns whether the union's current tag state has value `UserNotInTeam`.
- (BOOL)isUserNotInTeam;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DBXTEAMMemberSelectorError`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXTEAMMemberSelectorError` union.
/// 
@interface DBXTEAMMemberSelectorErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXTEAMMemberSelectorError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXTEAMMemberSelectorError * _Nonnull)obj;

/// Returns an instantiation of the `DBXTEAMMemberSelectorError` object from a
/// json-compatible dictionary representation.
+ (DBXTEAMMemberSelectorError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
