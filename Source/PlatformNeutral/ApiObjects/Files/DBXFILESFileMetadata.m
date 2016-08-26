///
/// Auto-generated by Stone, do not modify.
///

#import "DBXFILESFileMetadata.h"
#import "DBXFILESFileSharingInfo.h"
#import "DBXFILESMediaInfo.h"
#import "DBXFILESMetadata.h"
#import "DBXPROPERTIESPropertyGroup.h"
#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"

@implementation DBXFILESFileMetadata 

- (instancetype)initWithName:(NSString *)name id_:(NSString *)id_ clientModified:(NSDate *)clientModified serverModified:(NSDate *)serverModified rev:(NSString *)rev size:(NSNumber *)size pathLower:(NSString *)pathLower pathDisplay:(NSString *)pathDisplay parentSharedFolderId:(NSString *)parentSharedFolderId mediaInfo:(DBXFILESMediaInfo *)mediaInfo sharingInfo:(DBXFILESFileSharingInfo *)sharingInfo propertyGroups:(NSArray<DBXPROPERTIESPropertyGroup *> *)propertyGroups hasExplicitSharedMembers:(NSNumber *)hasExplicitSharedMembers {
    [DBXStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:nil](id_);
    [DBXStoneValidators stringValidator:[NSNumber numberWithInt:9] maxLength:nil pattern:@"[0-9a-f]+"](rev);
    [DBXStoneValidators nullableValidator:[DBXStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"]](parentSharedFolderId);
    [DBXStoneValidators nullableValidator:[DBXStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](propertyGroups);

    self = [super initWithName:name pathLower:pathLower pathDisplay:pathDisplay parentSharedFolderId:parentSharedFolderId];
    if (self != nil) {
        _id_ = id_;
        _clientModified = clientModified;
        _serverModified = serverModified;
        _rev = rev;
        _size = size;
        _mediaInfo = mediaInfo;
        _sharingInfo = sharingInfo;
        _propertyGroups = propertyGroups;
        _hasExplicitSharedMembers = hasExplicitSharedMembers;
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name id_:(NSString *)id_ clientModified:(NSDate *)clientModified serverModified:(NSDate *)serverModified rev:(NSString *)rev size:(NSNumber *)size {
    return [self initWithName:name id_:id_ clientModified:clientModified serverModified:serverModified rev:rev size:size pathLower:nil pathDisplay:nil parentSharedFolderId:nil mediaInfo:nil sharingInfo:nil propertyGroups:nil hasExplicitSharedMembers:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXFILESFileMetadataSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXFILESFileMetadataSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXFILESFileMetadataSerializer serialize:self] description];
}

@end


@implementation DBXFILESFileMetadataSerializer 

+ (NSDictionary *)serialize:(DBXFILESFileMetadata *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"name"] = valueObj.name;
    jsonDict[@"id"] = valueObj.id_;
    jsonDict[@"client_modified"] = [DBXNSDateSerializer serialize:valueObj.clientModified dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    jsonDict[@"server_modified"] = [DBXNSDateSerializer serialize:valueObj.serverModified dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    jsonDict[@"rev"] = valueObj.rev;
    jsonDict[@"size"] = valueObj.size;
    if (valueObj.pathLower) {
        jsonDict[@"path_lower"] = valueObj.pathLower;
    }
    if (valueObj.pathDisplay) {
        jsonDict[@"path_display"] = valueObj.pathDisplay;
    }
    if (valueObj.parentSharedFolderId) {
        jsonDict[@"parent_shared_folder_id"] = valueObj.parentSharedFolderId;
    }
    if (valueObj.mediaInfo) {
        jsonDict[@"media_info"] = [DBXFILESMediaInfoSerializer serialize:valueObj.mediaInfo];
    }
    if (valueObj.sharingInfo) {
        jsonDict[@"sharing_info"] = [DBXFILESFileSharingInfoSerializer serialize:valueObj.sharingInfo];
    }
    if (valueObj.propertyGroups) {
        jsonDict[@"property_groups"] = [DBXArraySerializer serialize:valueObj.propertyGroups withBlock:^id(id elem) { return [DBXPROPERTIESPropertyGroupSerializer serialize:elem]; }];
    }
    if (valueObj.hasExplicitSharedMembers) {
        jsonDict[@"has_explicit_shared_members"] = valueObj.hasExplicitSharedMembers;
    }

    return jsonDict;
}

+ (DBXFILESFileMetadata *)deserialize:(NSDictionary *)valueDict {
    NSString *name = valueDict[@"name"];
    NSString *id_ = valueDict[@"id"];
    NSDate *clientModified = [DBXNSDateSerializer deserialize:valueDict[@"client_modified"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    NSDate *serverModified = [DBXNSDateSerializer deserialize:valueDict[@"server_modified"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    NSString *rev = valueDict[@"rev"];
    NSNumber *size = valueDict[@"size"];
    NSString *pathLower = valueDict[@"path_lower"] ?: nil;
    NSString *pathDisplay = valueDict[@"path_display"] ?: nil;
    NSString *parentSharedFolderId = valueDict[@"parent_shared_folder_id"] ?: nil;
    DBXFILESMediaInfo *mediaInfo = valueDict[@"media_info"] ? [DBXFILESMediaInfoSerializer deserialize:valueDict[@"media_info"]] : nil;
    DBXFILESFileSharingInfo *sharingInfo = valueDict[@"sharing_info"] ? [DBXFILESFileSharingInfoSerializer deserialize:valueDict[@"sharing_info"]] : nil;
    NSArray<DBXPROPERTIESPropertyGroup *> *propertyGroups = valueDict[@"property_groups"] ? [DBXArraySerializer deserialize:valueDict[@"property_groups"] withBlock:^id(id elem) { return [DBXPROPERTIESPropertyGroupSerializer deserialize:elem]; }] : nil;
    NSNumber *hasExplicitSharedMembers = valueDict[@"has_explicit_shared_members"] ?: nil;

    return [[DBXFILESFileMetadata alloc] initWithName:name id_:id_ clientModified:clientModified serverModified:serverModified rev:rev size:size pathLower:pathLower pathDisplay:pathDisplay parentSharedFolderId:parentSharedFolderId mediaInfo:mediaInfo sharingInfo:sharingInfo propertyGroups:propertyGroups hasExplicitSharedMembers:hasExplicitSharedMembers];
}

@end
