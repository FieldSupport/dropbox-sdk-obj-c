///
/// Auto-generated by Stone, do not modify.
///

#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXTEAMPOLICIESEmmState.h"

@implementation DBXTEAMPOLICIESEmmState 

- (instancetype)initWithDisabled {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMPOLICIESEmmStateDisabled;
    }
    return self;
}

- (instancetype)initWithOptional {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMPOLICIESEmmStateOptional;
    }
    return self;
}

- (instancetype)initWithRequired {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMPOLICIESEmmStateRequired;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMPOLICIESEmmStateOther;
    }
    return self;
}

- (BOOL)isDisabled {
    return _tag == DBXTEAMPOLICIESEmmStateDisabled;
}

- (BOOL)isOptional {
    return _tag == DBXTEAMPOLICIESEmmStateOptional;
}

- (BOOL)isRequired {
    return _tag == DBXTEAMPOLICIESEmmStateRequired;
}

- (BOOL)isOther {
    return _tag == DBXTEAMPOLICIESEmmStateOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case DBXTEAMPOLICIESEmmStateDisabled:
           return @"DBXTEAMPOLICIESEmmStateDisabled";
        case DBXTEAMPOLICIESEmmStateOptional:
           return @"DBXTEAMPOLICIESEmmStateOptional";
        case DBXTEAMPOLICIESEmmStateRequired:
           return @"DBXTEAMPOLICIESEmmStateRequired";
        case DBXTEAMPOLICIESEmmStateOther:
           return @"DBXTEAMPOLICIESEmmStateOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXTEAMPOLICIESEmmStateSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXTEAMPOLICIESEmmStateSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXTEAMPOLICIESEmmStateSerializer serialize:self] description];
}

@end


@implementation DBXTEAMPOLICIESEmmStateSerializer 

+ (NSDictionary *)serialize:(DBXTEAMPOLICIESEmmState *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isDisabled]) {
        jsonDict[@".tag"] = @"disabled";
    }
    else if ([valueObj isOptional]) {
        jsonDict[@".tag"] = @"optional";
    }
    else if ([valueObj isRequired]) {
        jsonDict[@".tag"] = @"required";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBXTEAMPOLICIESEmmState *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"disabled"]) {
        return [[DBXTEAMPOLICIESEmmState alloc] initWithDisabled];
    }
    else if ([tag isEqualToString:@"optional"]) {
        return [[DBXTEAMPOLICIESEmmState alloc] initWithOptional];
    }
    else if ([tag isEqualToString:@"required"]) {
        return [[DBXTEAMPOLICIESEmmState alloc] initWithRequired];
    }
    else if ([tag isEqualToString:@"other"]) {
        return [[DBXTEAMPOLICIESEmmState alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
