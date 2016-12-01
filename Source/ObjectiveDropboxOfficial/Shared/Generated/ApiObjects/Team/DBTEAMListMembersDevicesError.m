///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMListMembersDevicesError.h"

#pragma mark - API Object

@implementation DBTEAMListMembersDevicesError

#pragma mark - Constructors

- (instancetype)initWithReset {
  self = [super init];
  if (self) {
    _tag = DBTEAMListMembersDevicesErrorReset;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBTEAMListMembersDevicesErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isReset {
  return _tag == DBTEAMListMembersDevicesErrorReset;
}

- (BOOL)isOther {
  return _tag == DBTEAMListMembersDevicesErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMListMembersDevicesErrorReset:
    return @"DBTEAMListMembersDevicesErrorReset";
  case DBTEAMListMembersDevicesErrorOther:
    return @"DBTEAMListMembersDevicesErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMListMembersDevicesErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMListMembersDevicesErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMListMembersDevicesErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMListMembersDevicesErrorSerializer

+ (NSDictionary *)serialize:(DBTEAMListMembersDevicesError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isReset]) {
    jsonDict[@".tag"] = @"reset";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBTEAMListMembersDevicesError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"reset"]) {
    return [[DBTEAMListMembersDevicesError alloc] initWithReset];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBTEAMListMembersDevicesError alloc] initWithOther];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end