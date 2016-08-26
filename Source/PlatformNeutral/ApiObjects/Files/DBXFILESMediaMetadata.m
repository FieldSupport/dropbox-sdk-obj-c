///
/// Auto-generated by Stone, do not modify.
///

#import "DBXFILESDimensions.h"
#import "DBXFILESGpsCoordinates.h"
#import "DBXFILESMediaMetadata.h"
#import "DBXFILESPhotoMetadata.h"
#import "DBXFILESVideoMetadata.h"
#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"

@implementation DBXFILESMediaMetadata 

- (instancetype)initWithDimensions:(DBXFILESDimensions *)dimensions location:(DBXFILESGpsCoordinates *)location timeTaken:(NSDate *)timeTaken {

    self = [super init];
    if (self != nil) {
        _dimensions = dimensions;
        _location = location;
        _timeTaken = timeTaken;
    }
    return self;
}

- (instancetype)init {
    return [self initWithDimensions:nil location:nil timeTaken:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXFILESMediaMetadataSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXFILESMediaMetadataSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXFILESMediaMetadataSerializer serialize:self] description];
}

@end


@implementation DBXFILESMediaMetadataSerializer 

+ (NSDictionary *)serialize:(DBXFILESMediaMetadata *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if (valueObj.dimensions) {
        jsonDict[@"dimensions"] = [DBXFILESDimensionsSerializer serialize:valueObj.dimensions];
    }
    if (valueObj.location) {
        jsonDict[@"location"] = [DBXFILESGpsCoordinatesSerializer serialize:valueObj.location];
    }
    if (valueObj.timeTaken) {
        jsonDict[@"time_taken"] = [DBXNSDateSerializer serialize:valueObj.timeTaken dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    }

    if ([valueObj isKindOfClass:[DBXFILESPhotoMetadata class]]) {
        NSDictionary *subTypeFields = [DBXFILESPhotoMetadataSerializer serialize:(DBXFILESPhotoMetadata *)valueObj];
        for (NSString* key in subTypeFields) {
            jsonDict[key] = subTypeFields[key];
        }
        jsonDict[@".tag"] = @"photo";
    }
    else if ([valueObj isKindOfClass:[DBXFILESVideoMetadata class]]) {
        NSDictionary *subTypeFields = [DBXFILESVideoMetadataSerializer serialize:(DBXFILESVideoMetadata *)valueObj];
        for (NSString* key in subTypeFields) {
            jsonDict[key] = subTypeFields[key];
        }
        jsonDict[@".tag"] = @"video";
    }

    return jsonDict;
}

+ (DBXFILESMediaMetadata *)deserialize:(NSDictionary *)valueDict {
    if ([valueDict[@".tag"] isEqualToString:@"photo"]) {
        return [DBXFILESPhotoMetadataSerializer deserialize:valueDict];
    }
    if ([valueDict[@".tag"] isEqualToString:@"video"]) {
        return [DBXFILESVideoMetadataSerializer deserialize:valueDict];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
