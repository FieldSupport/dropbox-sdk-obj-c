///
/// Auto-generated by Stone, do not modify.
///

#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXTEAMMembersListError.h"

@implementation DBXTEAMMembersListError 

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMMembersListErrorOther;
    }
    return self;
}

- (BOOL)isOther {
    return _tag == DBXTEAMMembersListErrorOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case DBXTEAMMembersListErrorOther:
           return @"DBXTEAMMembersListErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXTEAMMembersListErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXTEAMMembersListErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXTEAMMembersListErrorSerializer serialize:self] description];
}

@end


@implementation DBXTEAMMembersListErrorSerializer 

+ (NSDictionary *)serialize:(DBXTEAMMembersListError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBXTEAMMembersListError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"other"]) {
        return [[DBXTEAMMembersListError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
