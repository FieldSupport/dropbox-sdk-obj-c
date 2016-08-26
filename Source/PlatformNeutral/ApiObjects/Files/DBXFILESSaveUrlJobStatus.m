///
/// Auto-generated by Stone, do not modify.
///

#import "DBXASYNCPollResultBase.h"
#import "DBXFILESFileMetadata.h"
#import "DBXFILESSaveUrlError.h"
#import "DBXFILESSaveUrlJobStatus.h"
#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"

@implementation DBXFILESSaveUrlJobStatus 

- (instancetype)initWithInProgress {
    self = [super init];
    if (self != nil) {
        _tag = DBXFILESSaveUrlJobStatusInProgress;
    }
    return self;
}

- (instancetype)initWithComplete:(DBXFILESFileMetadata *)complete {
    self = [super init];
    if (self != nil) {
        _tag = DBXFILESSaveUrlJobStatusComplete;
        _complete = complete;
    }
    return self;
}

- (instancetype)initWithFailed:(DBXFILESSaveUrlError *)failed {
    self = [super init];
    if (self != nil) {
        _tag = DBXFILESSaveUrlJobStatusFailed;
        _failed = failed;
    }
    return self;
}

- (BOOL)isInProgress {
    return _tag == DBXFILESSaveUrlJobStatusInProgress;
}

- (BOOL)isComplete {
    return _tag == DBXFILESSaveUrlJobStatusComplete;
}

- (BOOL)isFailed {
    return _tag == DBXFILESSaveUrlJobStatusFailed;
}

- (NSString *)getTagName {
    switch (_tag) {
        case DBXFILESSaveUrlJobStatusInProgress:
           return @"DBXFILESSaveUrlJobStatusInProgress";
        case DBXFILESSaveUrlJobStatusComplete:
           return @"DBXFILESSaveUrlJobStatusComplete";
        case DBXFILESSaveUrlJobStatusFailed:
           return @"DBXFILESSaveUrlJobStatusFailed";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

- (DBXFILESFileMetadata *)complete {
    if (_tag != DBXFILESSaveUrlJobStatusComplete) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required `DBXFILESSaveUrlJobStatusComplete`, but was %@.", [self getTagName]];
    }
    return _complete;
}

- (DBXFILESSaveUrlError *)failed {
    if (_tag != DBXFILESSaveUrlJobStatusFailed) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required `DBXFILESSaveUrlJobStatusFailed`, but was %@.", [self getTagName]];
    }
    return _failed;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXFILESSaveUrlJobStatusSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXFILESSaveUrlJobStatusSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXFILESSaveUrlJobStatusSerializer serialize:self] description];
}

@end


@implementation DBXFILESSaveUrlJobStatusSerializer 

+ (NSDictionary *)serialize:(DBXFILESSaveUrlJobStatus *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isInProgress]) {
        jsonDict[@".tag"] = @"in_progress";
    }
    else if ([valueObj isComplete]) {
        jsonDict = [[DBXFILESFileMetadataSerializer serialize:valueObj.complete] mutableCopy];
        jsonDict[@".tag"] = @"complete";
    }
    else if ([valueObj isFailed]) {
        jsonDict = [[DBXFILESSaveUrlErrorSerializer serialize:valueObj.failed] mutableCopy];
        jsonDict[@".tag"] = @"failed";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBXFILESSaveUrlJobStatus *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"in_progress"]) {
        return [[DBXFILESSaveUrlJobStatus alloc] initWithInProgress];
    }
    else if ([tag isEqualToString:@"complete"]) {
        DBXFILESFileMetadata *complete = [DBXFILESFileMetadataSerializer deserialize:valueDict];
        return [[DBXFILESSaveUrlJobStatus alloc] initWithComplete:complete];
    }
    else if ([tag isEqualToString:@"failed"]) {
        DBXFILESSaveUrlError *failed = [DBXFILESSaveUrlErrorSerializer deserialize:valueDict[@"failed"]];
        return [[DBXFILESSaveUrlJobStatus alloc] initWithFailed:failed];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
