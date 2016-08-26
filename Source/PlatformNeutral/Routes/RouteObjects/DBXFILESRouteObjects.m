///
/// Auto-generated by Stone, do not modify.
///

#import "DBXFILESRouteObjects.h"
#import "DBXFILESRoutes.h"
#import "DBXStoneBase.h"

@implementation DBXFILESRouteObjects 

static DBXRoute *DBXFILESAlphaGetMetadata;
static DBXRoute *DBXFILESAlphaUpload;
static DBXRoute *DBXFILESDCopy;
static DBXRoute *DBXFILESDCopyReferenceGet;
static DBXRoute *DBXFILESDCopyReferenceSave;
static DBXRoute *DBXFILESCreateFolder;
static DBXRoute *DBXFILESDelete_;
static DBXRoute *DBXFILESDownload;
static DBXRoute *DBXFILESGetMetadata;
static DBXRoute *DBXFILESGetPreview;
static DBXRoute *DBXFILESGetTemporaryLink;
static DBXRoute *DBXFILESGetThumbnail;
static DBXRoute *DBXFILESListFolder;
static DBXRoute *DBXFILESListFolderContinue;
static DBXRoute *DBXFILESListFolderGetLatestCursor;
static DBXRoute *DBXFILESListFolderLongpoll;
static DBXRoute *DBXFILESListRevisions;
static DBXRoute *DBXFILESMove;
static DBXRoute *DBXFILESPermanentlyDelete;
static DBXRoute *DBXFILESPropertiesAdd;
static DBXRoute *DBXFILESPropertiesOverwrite;
static DBXRoute *DBXFILESPropertiesRemove;
static DBXRoute *DBXFILESPropertiesTemplateGet;
static DBXRoute *DBXFILESPropertiesTemplateList;
static DBXRoute *DBXFILESPropertiesUpdate;
static DBXRoute *DBXFILESRestore;
static DBXRoute *DBXFILESSaveUrl;
static DBXRoute *DBXFILESSaveUrlCheckJobStatus;
static DBXRoute *DBXFILESSearch;
static DBXRoute *DBXFILESUpload;
static DBXRoute *DBXFILESUploadSessionAppend;
static DBXRoute *DBXFILESUploadSessionAppendV2;
static DBXRoute *DBXFILESUploadSessionFinish;
static DBXRoute *DBXFILESUploadSessionFinishBatch;
static DBXRoute *DBXFILESUploadSessionFinishBatchCheck;
static DBXRoute *DBXFILESUploadSessionStart;

+ (DBXRoute *)DBXFILESAlphaGetMetadata {
    if (!DBXFILESAlphaGetMetadata) {
        DBXFILESAlphaGetMetadata = [[DBXRoute alloc] init:
            @"alpha/get_metadata"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESMetadata class]
            errorType:[DBXFILESAlphaGetMetadataError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESAlphaGetMetadata;
}

+ (DBXRoute *)DBXFILESAlphaUpload {
    if (!DBXFILESAlphaUpload) {
        DBXFILESAlphaUpload = [[DBXRoute alloc] init:
            @"alpha/upload"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESFileMetadata class]
            errorType:[DBXFILESUploadErrorWithProperties class]
            attrs:@{@"host": @"content",
                    @"style": @"upload"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESAlphaUpload;
}

+ (DBXRoute *)DBXFILESDCopy {
    if (!DBXFILESDCopy) {
        DBXFILESDCopy = [[DBXRoute alloc] init:
            @"copy"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESMetadata class]
            errorType:[DBXFILESRelocationError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESDCopy;
}

+ (DBXRoute *)DBXFILESDCopyReferenceGet {
    if (!DBXFILESDCopyReferenceGet) {
        DBXFILESDCopyReferenceGet = [[DBXRoute alloc] init:
            @"copy_reference/get"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESGetCopyReferenceResult class]
            errorType:[DBXFILESGetCopyReferenceError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESDCopyReferenceGet;
}

+ (DBXRoute *)DBXFILESDCopyReferenceSave {
    if (!DBXFILESDCopyReferenceSave) {
        DBXFILESDCopyReferenceSave = [[DBXRoute alloc] init:
            @"copy_reference/save"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESSaveCopyReferenceResult class]
            errorType:[DBXFILESSaveCopyReferenceError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESDCopyReferenceSave;
}

+ (DBXRoute *)DBXFILESCreateFolder {
    if (!DBXFILESCreateFolder) {
        DBXFILESCreateFolder = [[DBXRoute alloc] init:
            @"create_folder"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESFolderMetadata class]
            errorType:[DBXFILESCreateFolderError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESCreateFolder;
}

+ (DBXRoute *)DBXFILESDelete_ {
    if (!DBXFILESDelete_) {
        DBXFILESDelete_ = [[DBXRoute alloc] init:
            @"delete"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESMetadata class]
            errorType:[DBXFILESDeleteError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESDelete_;
}

+ (DBXRoute *)DBXFILESDownload {
    if (!DBXFILESDownload) {
        DBXFILESDownload = [[DBXRoute alloc] init:
            @"download"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESFileMetadata class]
            errorType:[DBXFILESDownloadError class]
            attrs:@{@"host": @"content",
                    @"style": @"download"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESDownload;
}

+ (DBXRoute *)DBXFILESGetMetadata {
    if (!DBXFILESGetMetadata) {
        DBXFILESGetMetadata = [[DBXRoute alloc] init:
            @"get_metadata"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESMetadata class]
            errorType:[DBXFILESGetMetadataError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESGetMetadata;
}

+ (DBXRoute *)DBXFILESGetPreview {
    if (!DBXFILESGetPreview) {
        DBXFILESGetPreview = [[DBXRoute alloc] init:
            @"get_preview"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESFileMetadata class]
            errorType:[DBXFILESPreviewError class]
            attrs:@{@"host": @"content",
                    @"style": @"download"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESGetPreview;
}

+ (DBXRoute *)DBXFILESGetTemporaryLink {
    if (!DBXFILESGetTemporaryLink) {
        DBXFILESGetTemporaryLink = [[DBXRoute alloc] init:
            @"get_temporary_link"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESGetTemporaryLinkResult class]
            errorType:[DBXFILESGetTemporaryLinkError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESGetTemporaryLink;
}

+ (DBXRoute *)DBXFILESGetThumbnail {
    if (!DBXFILESGetThumbnail) {
        DBXFILESGetThumbnail = [[DBXRoute alloc] init:
            @"get_thumbnail"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESFileMetadata class]
            errorType:[DBXFILESThumbnailError class]
            attrs:@{@"host": @"content",
                    @"style": @"download"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESGetThumbnail;
}

+ (DBXRoute *)DBXFILESListFolder {
    if (!DBXFILESListFolder) {
        DBXFILESListFolder = [[DBXRoute alloc] init:
            @"list_folder"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESListFolderResult class]
            errorType:[DBXFILESListFolderError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESListFolder;
}

+ (DBXRoute *)DBXFILESListFolderContinue {
    if (!DBXFILESListFolderContinue) {
        DBXFILESListFolderContinue = [[DBXRoute alloc] init:
            @"list_folder/continue"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESListFolderResult class]
            errorType:[DBXFILESListFolderContinueError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESListFolderContinue;
}

+ (DBXRoute *)DBXFILESListFolderGetLatestCursor {
    if (!DBXFILESListFolderGetLatestCursor) {
        DBXFILESListFolderGetLatestCursor = [[DBXRoute alloc] init:
            @"list_folder/get_latest_cursor"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESListFolderGetLatestCursorResult class]
            errorType:[DBXFILESListFolderError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESListFolderGetLatestCursor;
}

+ (DBXRoute *)DBXFILESListFolderLongpoll {
    if (!DBXFILESListFolderLongpoll) {
        DBXFILESListFolderLongpoll = [[DBXRoute alloc] init:
            @"list_folder/longpoll"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESListFolderLongpollResult class]
            errorType:[DBXFILESListFolderLongpollError class]
            attrs:@{@"host": @"notify",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESListFolderLongpoll;
}

+ (DBXRoute *)DBXFILESListRevisions {
    if (!DBXFILESListRevisions) {
        DBXFILESListRevisions = [[DBXRoute alloc] init:
            @"list_revisions"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESListRevisionsResult class]
            errorType:[DBXFILESListRevisionsError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESListRevisions;
}

+ (DBXRoute *)DBXFILESMove {
    if (!DBXFILESMove) {
        DBXFILESMove = [[DBXRoute alloc] init:
            @"move"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESMetadata class]
            errorType:[DBXFILESRelocationError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESMove;
}

+ (DBXRoute *)DBXFILESPermanentlyDelete {
    if (!DBXFILESPermanentlyDelete) {
        DBXFILESPermanentlyDelete = [[DBXRoute alloc] init:
            @"permanently_delete"
            namespace_:@"files"
            deprecated:@NO
            resultType:nil
            errorType:[DBXFILESDeleteError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESPermanentlyDelete;
}

+ (DBXRoute *)DBXFILESPropertiesAdd {
    if (!DBXFILESPropertiesAdd) {
        DBXFILESPropertiesAdd = [[DBXRoute alloc] init:
            @"properties/add"
            namespace_:@"files"
            deprecated:@NO
            resultType:nil
            errorType:[DBXFILESAddPropertiesError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESPropertiesAdd;
}

+ (DBXRoute *)DBXFILESPropertiesOverwrite {
    if (!DBXFILESPropertiesOverwrite) {
        DBXFILESPropertiesOverwrite = [[DBXRoute alloc] init:
            @"properties/overwrite"
            namespace_:@"files"
            deprecated:@NO
            resultType:nil
            errorType:[DBXFILESInvalidPropertyGroupError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESPropertiesOverwrite;
}

+ (DBXRoute *)DBXFILESPropertiesRemove {
    if (!DBXFILESPropertiesRemove) {
        DBXFILESPropertiesRemove = [[DBXRoute alloc] init:
            @"properties/remove"
            namespace_:@"files"
            deprecated:@NO
            resultType:nil
            errorType:[DBXFILESRemovePropertiesError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESPropertiesRemove;
}

+ (DBXRoute *)DBXFILESPropertiesTemplateGet {
    if (!DBXFILESPropertiesTemplateGet) {
        DBXFILESPropertiesTemplateGet = [[DBXRoute alloc] init:
            @"properties/template/get"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXPROPERTIESGetPropertyTemplateResult class]
            errorType:[DBXPROPERTIESPropertyTemplateError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESPropertiesTemplateGet;
}

+ (DBXRoute *)DBXFILESPropertiesTemplateList {
    if (!DBXFILESPropertiesTemplateList) {
        DBXFILESPropertiesTemplateList = [[DBXRoute alloc] init:
            @"properties/template/list"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXPROPERTIESListPropertyTemplateIds class]
            errorType:[DBXPROPERTIESPropertyTemplateError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESPropertiesTemplateList;
}

+ (DBXRoute *)DBXFILESPropertiesUpdate {
    if (!DBXFILESPropertiesUpdate) {
        DBXFILESPropertiesUpdate = [[DBXRoute alloc] init:
            @"properties/update"
            namespace_:@"files"
            deprecated:@NO
            resultType:nil
            errorType:[DBXFILESUpdatePropertiesError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESPropertiesUpdate;
}

+ (DBXRoute *)DBXFILESRestore {
    if (!DBXFILESRestore) {
        DBXFILESRestore = [[DBXRoute alloc] init:
            @"restore"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESFileMetadata class]
            errorType:[DBXFILESRestoreError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESRestore;
}

+ (DBXRoute *)DBXFILESSaveUrl {
    if (!DBXFILESSaveUrl) {
        DBXFILESSaveUrl = [[DBXRoute alloc] init:
            @"save_url"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESSaveUrlResult class]
            errorType:[DBXFILESSaveUrlError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESSaveUrl;
}

+ (DBXRoute *)DBXFILESSaveUrlCheckJobStatus {
    if (!DBXFILESSaveUrlCheckJobStatus) {
        DBXFILESSaveUrlCheckJobStatus = [[DBXRoute alloc] init:
            @"save_url/check_job_status"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESSaveUrlJobStatus class]
            errorType:[DBXASYNCPollError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESSaveUrlCheckJobStatus;
}

+ (DBXRoute *)DBXFILESSearch {
    if (!DBXFILESSearch) {
        DBXFILESSearch = [[DBXRoute alloc] init:
            @"search"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESSearchResult class]
            errorType:[DBXFILESSearchError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESSearch;
}

+ (DBXRoute *)DBXFILESUpload {
    if (!DBXFILESUpload) {
        DBXFILESUpload = [[DBXRoute alloc] init:
            @"upload"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESFileMetadata class]
            errorType:[DBXFILESUploadError class]
            attrs:@{@"host": @"content",
                    @"style": @"upload"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESUpload;
}

+ (DBXRoute *)DBXFILESUploadSessionAppend {
    if (!DBXFILESUploadSessionAppend) {
        DBXFILESUploadSessionAppend = [[DBXRoute alloc] init:
            @"upload_session/append"
            namespace_:@"files"
            deprecated:@YES
            resultType:nil
            errorType:[DBXFILESUploadSessionLookupError class]
            attrs:@{@"host": @"content",
                    @"style": @"upload"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESUploadSessionAppend;
}

+ (DBXRoute *)DBXFILESUploadSessionAppendV2 {
    if (!DBXFILESUploadSessionAppendV2) {
        DBXFILESUploadSessionAppendV2 = [[DBXRoute alloc] init:
            @"upload_session/append_v2"
            namespace_:@"files"
            deprecated:@NO
            resultType:nil
            errorType:[DBXFILESUploadSessionLookupError class]
            attrs:@{@"host": @"content",
                    @"style": @"upload"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESUploadSessionAppendV2;
}

+ (DBXRoute *)DBXFILESUploadSessionFinish {
    if (!DBXFILESUploadSessionFinish) {
        DBXFILESUploadSessionFinish = [[DBXRoute alloc] init:
            @"upload_session/finish"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESFileMetadata class]
            errorType:[DBXFILESUploadSessionFinishError class]
            attrs:@{@"host": @"content",
                    @"style": @"upload"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESUploadSessionFinish;
}

+ (DBXRoute *)DBXFILESUploadSessionFinishBatch {
    if (!DBXFILESUploadSessionFinishBatch) {
        DBXFILESUploadSessionFinishBatch = [[DBXRoute alloc] init:
            @"upload_session/finish_batch"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXASYNCLaunchEmptyResult class]
            errorType:nil
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESUploadSessionFinishBatch;
}

+ (DBXRoute *)DBXFILESUploadSessionFinishBatchCheck {
    if (!DBXFILESUploadSessionFinishBatchCheck) {
        DBXFILESUploadSessionFinishBatchCheck = [[DBXRoute alloc] init:
            @"upload_session/finish_batch/check"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESUploadSessionFinishBatchJobStatus class]
            errorType:[DBXASYNCPollError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESUploadSessionFinishBatchCheck;
}

+ (DBXRoute *)DBXFILESUploadSessionStart {
    if (!DBXFILESUploadSessionStart) {
        DBXFILESUploadSessionStart = [[DBXRoute alloc] init:
            @"upload_session/start"
            namespace_:@"files"
            deprecated:@NO
            resultType:[DBXFILESUploadSessionStartResult class]
            errorType:nil
            attrs:@{@"host": @"content",
                    @"style": @"upload"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return DBXFILESUploadSessionStart;
}

@end
