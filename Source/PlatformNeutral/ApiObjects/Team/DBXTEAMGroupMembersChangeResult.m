///
/// Auto-generated by Stone, do not modify.
///

#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXTEAMGroupFullInfo.h"
#import "DBXTEAMGroupMembersChangeResult.h"

@implementation DBXTEAMGroupMembersChangeResult 

- (instancetype)initWithGroupInfo:(DBXTEAMGroupFullInfo *)groupInfo asyncJobId:(NSString *)asyncJobId {
    [DBXStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:nil](asyncJobId);

    self = [super init];
    if (self != nil) {
        _groupInfo = groupInfo;
        _asyncJobId = asyncJobId;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXTEAMGroupMembersChangeResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXTEAMGroupMembersChangeResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXTEAMGroupMembersChangeResultSerializer serialize:self] description];
}

@end


@implementation DBXTEAMGroupMembersChangeResultSerializer 

+ (NSDictionary *)serialize:(DBXTEAMGroupMembersChangeResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"group_info"] = [DBXTEAMGroupFullInfoSerializer serialize:valueObj.groupInfo];
    jsonDict[@"async_job_id"] = valueObj.asyncJobId;

    return jsonDict;
}

+ (DBXTEAMGroupMembersChangeResult *)deserialize:(NSDictionary *)valueDict {
    DBXTEAMGroupFullInfo *groupInfo = [DBXTEAMGroupFullInfoSerializer deserialize:valueDict[@"group_info"]];
    NSString *asyncJobId = valueDict[@"async_job_id"];

    return [[DBXTEAMGroupMembersChangeResult alloc] initWithGroupInfo:groupInfo asyncJobId:asyncJobId];
}

@end
