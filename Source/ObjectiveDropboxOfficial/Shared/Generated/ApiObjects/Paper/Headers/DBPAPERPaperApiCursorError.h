///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBPAPERPaperApiCursorError;

#pragma mark - API Object

///
/// The `PaperApiCursorError` union.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBPAPERPaperApiCursorError : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The `DBPAPERPaperApiCursorErrorTag` enum type represents the possible tag
/// states with which the `DBPAPERPaperApiCursorError` union can exist.
typedef NS_ENUM(NSInteger, DBPAPERPaperApiCursorErrorTag) {
  /// The provided cursor is expired.
  DBPAPERPaperApiCursorErrorExpiredCursor,

  /// The provided cursor is invalid.
  DBPAPERPaperApiCursorErrorInvalidCursor,

  /// The provided cursor contains invalid user.
  DBPAPERPaperApiCursorErrorWrongUserInCursor,

  /// Indicates that the cursor has been invalidated. Call the corresponding
  /// non-continue endpoint to obtain a new cursor.
  DBPAPERPaperApiCursorErrorReset,

  /// (no description).
  DBPAPERPaperApiCursorErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBPAPERPaperApiCursorErrorTag tag;

#pragma mark - Constructors

///
/// Initializes union class with tag state of "expired_cursor".
///
/// Description of the "expired_cursor" tag state: The provided cursor is
/// expired.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithExpiredCursor;

///
/// Initializes union class with tag state of "invalid_cursor".
///
/// Description of the "invalid_cursor" tag state: The provided cursor is
/// invalid.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithInvalidCursor;

///
/// Initializes union class with tag state of "wrong_user_in_cursor".
///
/// Description of the "wrong_user_in_cursor" tag state: The provided cursor
/// contains invalid user.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithWrongUserInCursor;

///
/// Initializes union class with tag state of "reset".
///
/// Description of the "reset" tag state: Indicates that the cursor has been
/// invalidated. Call the corresponding non-continue endpoint to obtain a new
/// cursor.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithReset;

///
/// Initializes union class with tag state of "other".
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithOther;

#pragma mark - Tag state methods

///
/// Retrieves whether the union's current tag state has value "expired_cursor".
///
/// @return Whether the union's current tag state has value "expired_cursor".
///
- (BOOL)isExpiredCursor;

///
/// Retrieves whether the union's current tag state has value "invalid_cursor".
///
/// @return Whether the union's current tag state has value "invalid_cursor".
///
- (BOOL)isInvalidCursor;

///
/// Retrieves whether the union's current tag state has value
/// "wrong_user_in_cursor".
///
/// @return Whether the union's current tag state has value
/// "wrong_user_in_cursor".
///
- (BOOL)isWrongUserInCursor;

///
/// Retrieves whether the union's current tag state has value "reset".
///
/// @return Whether the union's current tag state has value "reset".
///
- (BOOL)isReset;

///
/// Retrieves whether the union's current tag state has value "other".
///
/// @return Whether the union's current tag state has value "other".
///
- (BOOL)isOther;

///
/// Retrieves string value of union's current tag state.
///
/// @return A human-readable string representing the union's current tag state.
///
- (NSString * _Nonnull)tagName;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `DBPAPERPaperApiCursorError` union.
///
@interface DBPAPERPaperApiCursorErrorSerializer : NSObject

///
/// Serializes `DBPAPERPaperApiCursorError` instances.
///
/// @param instance An instance of the `DBPAPERPaperApiCursorError` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBPAPERPaperApiCursorError` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBPAPERPaperApiCursorError * _Nonnull)instance;

///
/// Deserializes `DBPAPERPaperApiCursorError` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBPAPERPaperApiCursorError` API object.
///
/// @return An instantiation of the `DBPAPERPaperApiCursorError` object.
///
+ (DBPAPERPaperApiCursorError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
