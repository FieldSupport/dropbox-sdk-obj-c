///
/// Auto-generated by Stone, do not modify.
///

#import "DBXASYNCPollError.h"
#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXTEAMGroupsPollError.h"

@implementation DBXTEAMGroupsPollError 

- (instancetype)initWithInvalidAsyncJobId {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMGroupsPollErrorInvalidAsyncJobId;
    }
    return self;
}

- (instancetype)initWithInternalError {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMGroupsPollErrorInternalError;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMGroupsPollErrorOther;
    }
    return self;
}

- (instancetype)initWithAccessDenied {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMGroupsPollErrorAccessDenied;
    }
    return self;
}

- (BOOL)isInvalidAsyncJobId {
    return _tag == DBXTEAMGroupsPollErrorInvalidAsyncJobId;
}

- (BOOL)isInternalError {
    return _tag == DBXTEAMGroupsPollErrorInternalError;
}

- (BOOL)isOther {
    return _tag == DBXTEAMGroupsPollErrorOther;
}

- (BOOL)isAccessDenied {
    return _tag == DBXTEAMGroupsPollErrorAccessDenied;
}

- (NSString *)getTagName {
    switch (_tag) {
        case DBXTEAMGroupsPollErrorInvalidAsyncJobId:
           return @"DBXTEAMGroupsPollErrorInvalidAsyncJobId";
        case DBXTEAMGroupsPollErrorInternalError:
           return @"DBXTEAMGroupsPollErrorInternalError";
        case DBXTEAMGroupsPollErrorOther:
           return @"DBXTEAMGroupsPollErrorOther";
        case DBXTEAMGroupsPollErrorAccessDenied:
           return @"DBXTEAMGroupsPollErrorAccessDenied";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXTEAMGroupsPollErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXTEAMGroupsPollErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXTEAMGroupsPollErrorSerializer serialize:self] description];
}

@end


@implementation DBXTEAMGroupsPollErrorSerializer 

+ (NSDictionary *)serialize:(DBXTEAMGroupsPollError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isInvalidAsyncJobId]) {
        jsonDict[@".tag"] = @"invalid_async_job_id";
    }
    else if ([valueObj isInternalError]) {
        jsonDict[@".tag"] = @"internal_error";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else if ([valueObj isAccessDenied]) {
        jsonDict[@".tag"] = @"access_denied";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBXTEAMGroupsPollError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"invalid_async_job_id"]) {
        return [[DBXTEAMGroupsPollError alloc] initWithInvalidAsyncJobId];
    }
    else if ([tag isEqualToString:@"internal_error"]) {
        return [[DBXTEAMGroupsPollError alloc] initWithInternalError];
    }
    else if ([tag isEqualToString:@"other"]) {
        return [[DBXTEAMGroupsPollError alloc] initWithOther];
    }
    else if ([tag isEqualToString:@"access_denied"]) {
        return [[DBXTEAMGroupsPollError alloc] initWithAccessDenied];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
