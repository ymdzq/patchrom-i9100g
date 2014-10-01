.class public Lcom/android/providers/media/MediaProvider;
.super Landroid/content/ContentProvider;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaProvider$RecomendInfo;,
        Lcom/android/providers/media/MediaProvider$ThumbData;,
        Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;,
        Lcom/android/providers/media/MediaProvider$ScannerClient;,
        Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;,
        Lcom/android/providers/media/MediaProvider$DatabaseHelper;,
        Lcom/android/providers/media/MediaProvider$CleanerThread;
    }
.end annotation


# static fields
.field private static final ALBUMART_URI:Landroid/net/Uri;

.field private static final AUDIO_COLUMNS_CHN:Ljava/lang/String;

.field private static final FLAG_ADD_DB4VAS:Z

.field public static final FLAG_FIXLOCALE_TO:Ljava/lang/String;

.field public static final FLAG_SUPPORT_PINYIN:Z

.field private static final FLAG_USE_DOCUMENTCLASSIFIER:Z

.field private static final GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static ID3_TO_SEC_GENRES:[Ljava/lang/String;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final MEDIA_URI:Landroid/net/Uri;

.field private static final MIME_TYPE_PROJECTION:[Ljava/lang/String;

.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final PLAYLIST_COLUMNS_CHN:Ljava/lang/String;

.field private static final READY_FLAG_PROJECTION:[Ljava/lang/String;

.field private static final SEC_ALBUM_COLUMNS_CHN:Ljava/lang/String;

.field private static final SEC_ARTIST_COLUMNS_CHN:Ljava/lang/String;

.field private static final SEC_COMPOSERS_COLUMNS_CHN:Ljava/lang/String;

.field private static final SEC_FOLDERS_COLUMNS_CHN:Ljava/lang/String;

.field private static final SEC_GENRES_COLUMNS_CHN:Ljava/lang/String;

.field private static final SOUNDS_PATH_EXTERNAL:Ljava/lang/String;

.field private static final SOUNDS_PATH_INTERNAL:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final VIDEO_COLUMNS_CHN:Ljava/lang/String;

.field private static bIsShuttingDown:Z

.field private static mExternalStoragePath:Ljava/lang/String;

.field private static mExternalStoragePaths:[Ljava/lang/String;

.field private static mExternalStorageSdPath:Ljava/lang/String;

.field private static final mID3ToSecGenreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final openFileColumns:[Ljava/lang/String;

.field private static final sArtistAlbumsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCachePath:Ljava/lang/String;

.field public static sCscFeature:Lcom/sec/android/app/CscFeature;

.field private static final sDataOnlyColumn:[Ljava/lang/String;

.field private static final sDefaultFolderNames:[Ljava/lang/String;

.field private static final sExternalPath:Ljava/lang/String;

.field private static final sFolderArtMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

.field private static final sIdOnlyColumn:[Ljava/lang/String;

.field private static final sMediaTableColumns:[Ljava/lang/String;

.field private static final sMediaTypeDataId:[Ljava/lang/String;

.field private static final sPlaylistIdPlayOrder:[Ljava/lang/String;


# instance fields
.field private final SEARCH_COLUMN_BASIC_TEXT2:I

.field private mAlbumArtBaseUri:Landroid/net/Uri;

.field private mBulkInsertSync:I

.field private mBulkInsertSyncLock:Ljava/lang/Object;

.field private mCaseInsensitivePaths:Z

.field protected mCollator:Ljava/text/Collator;

.field private mContentApp:Lcom/android/providers/media/ContentApp;

.field private mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

.field private mDatabases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/media/MediaProvider$DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mDatabases_lgtvas:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

.field mDirectoryCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableMtpObjectCallbacks:Z

.field private mGetSimilarPersonsThread:Ljava/lang/Thread;

.field private mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaScannerVolume:Ljava/lang/String;

.field private mMediaThumbQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/providers/media/MediaThumbRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mMtpService:Lcom/android/providers/media/IMtpService;

.field private final mMtpServiceConnection:Landroid/content/ServiceConnection;

.field private final mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

.field private mPendingThumbs:Ljava/util/HashSet;

.field private mPersonOpenHelper:Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;

.field private volatile mRecomendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/media/MediaProvider$RecomendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRecomendThread:Ljava/lang/Thread;

.field private mSearchColsBasic:[Ljava/lang/String;

.field private mSearchColsFancy:[Ljava/lang/String;

.field private mSearchColsLegacy:[Ljava/lang/String;

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mSmartSortBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSmartSortContentApp:Lcom/android/providers/media/SmartSortContentApp;

.field private mThumbHandler:Landroid/os/Handler;

.field private mThumbRequestStack:Ljava/util/Stack;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 127
    const-string v0, "content://media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->MEDIA_URI:Landroid/net/Uri;

    .line 128
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    .line 135
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sCscFeature:Lcom/sec/android/app/CscFeature;

    .line 138
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_Music_SupportPinyinSort"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    .line 141
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_Gallery_EnableDocumentClassifier"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_USE_DOCUMENTCLASSIFIER:Z

    .line 144
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_MediaProvider_AddDB4VAS"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_ADD_DB4VAS:Z

    .line 147
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_MediaScanner_FixLocaleTo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->FLAG_FIXLOCALE_TO:Ljava/lang/String;

    .line 158
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sExternalPath:Ljava/lang/String;

    .line 159
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sCachePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "media_type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sMediaTableColumns:[Ljava/lang/String;

    .line 239
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sIdOnlyColumn:[Ljava/lang/String;

    .line 243
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sDataOnlyColumn:[Ljava/lang/String;

    .line 247
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "media_type"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sMediaTypeDataId:[Ljava/lang/String;

    .line 253
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "playlist_id"

    aput-object v1, v0, v5

    const-string v1, "play_order"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sPlaylistIdPlayOrder:[Ljava/lang/String;

    .line 257
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_size"

    aput-object v1, v0, v6

    const-string v1, "format"

    aput-object v1, v0, v7

    const-string v1, "title"

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/providers/media/MediaProvider;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 277
    sput-boolean v5, Lcom/android/providers/media/MediaProvider;->bIsShuttingDown:Z

    .line 738
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v1, v0, v6

    sget-object v1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v1, v0, v7

    sget-object v1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Documents"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sDefaultFolderNames:[Ljava/lang/String;

    .line 1004
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_1

    const-string v0, ",title_search_key,title_pinyin,composer_pinyin,genre_name_pinyin,_display_name_pinyin,bucket_display_name_pinyin"

    :goto_0
    sput-object v0, Lcom/android/providers/media/MediaProvider;->AUDIO_COLUMNS_CHN:Ljava/lang/String;

    .line 1008
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_2

    const-string v0, ",name_pinyin"

    :goto_1
    sput-object v0, Lcom/android/providers/media/MediaProvider;->PLAYLIST_COLUMNS_CHN:Ljava/lang/String;

    .line 1009
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_3

    const-string v0, ",title_pinyin"

    :goto_2
    sput-object v0, Lcom/android/providers/media/MediaProvider;->VIDEO_COLUMNS_CHN:Ljava/lang/String;

    .line 2255
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_4

    const-string v0, ",album_search_key, album_pinyin, artist_search_key "

    :goto_3
    sput-object v0, Lcom/android/providers/media/MediaProvider;->SEC_ALBUM_COLUMNS_CHN:Ljava/lang/String;

    .line 2256
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_5

    const-string v0, ",artist_search_key, artist_pinyin "

    :goto_4
    sput-object v0, Lcom/android/providers/media/MediaProvider;->SEC_ARTIST_COLUMNS_CHN:Ljava/lang/String;

    .line 2258
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_6

    const-string v0, ",genre_name_pinyin "

    :goto_5
    sput-object v0, Lcom/android/providers/media/MediaProvider;->SEC_GENRES_COLUMNS_CHN:Ljava/lang/String;

    .line 2259
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_7

    const-string v0, ",bucket_display_name_pinyin "

    :goto_6
    sput-object v0, Lcom/android/providers/media/MediaProvider;->SEC_FOLDERS_COLUMNS_CHN:Ljava/lang/String;

    .line 2260
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_8

    const-string v0, ",composer_pinyin "

    :goto_7
    sput-object v0, Lcom/android/providers/media/MediaProvider;->SEC_COMPOSERS_COLUMNS_CHN:Ljava/lang/String;

    .line 4459
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 5015
    new-instance v0, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;-><init>(Lcom/android/providers/media/MediaProvider$1;)V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    .line 6075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/providers/media/MediaProvider;->sExternalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sounds/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->SOUNDS_PATH_INTERNAL:Ljava/lang/String;

    .line 6081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/extSdCard/Sounds/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->SOUNDS_PATH_EXTERNAL:Ljava/lang/String;

    .line 6151
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/media/MediaProvider;->openFileColumns:[Ljava/lang/String;

    .line 7108
    const-string v0, "MediaProvider"

    sput-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    .line 7238
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 7241
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/media/MediaProvider;->ID_PROJECTION:[Ljava/lang/String;

    .line 7245
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->PATH_PROJECTION:[Ljava/lang/String;

    .line 7250
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    .line 7255
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "mini_thumb_magic"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/media/MediaProvider;->READY_FLAG_PROJECTION:[Ljava/lang/String;

    .line 7454
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/images/media"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7455
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/images/media/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7456
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/images/thumbnails"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7457
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/images/thumbnails/#"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7459
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7460
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7461
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/genres"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7462
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/genres/#"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7463
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/playlists"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7464
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/playlists/#"

    const/16 v3, 0x69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7465
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/genres"

    const/16 v3, 0x6a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7466
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/genres/#"

    const/16 v3, 0x6b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7467
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/genres/#/members"

    const/16 v3, 0x6c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7468
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/genres/all/members"

    const/16 v3, 0x6d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7469
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/playlists"

    const/16 v3, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7470
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/playlists/#"

    const/16 v3, 0x6f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7471
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/playlists/#/members"

    const/16 v3, 0x70

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7472
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/playlists/#/members/#"

    const/16 v3, 0x71

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7473
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/artists"

    const/16 v3, 0x72

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7474
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/artists/#"

    const/16 v3, 0x73

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7475
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/artists/#/albums"

    const/16 v3, 0x76

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7476
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/albums"

    const/16 v3, 0x74

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7477
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/albums/#"

    const/16 v3, 0x75

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7478
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/albumart"

    const/16 v3, 0x77

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7479
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/albumart/#"

    const/16 v3, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7480
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/albumart"

    const/16 v3, 0x79

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7483
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/music_years"

    const/16 v3, 0x83

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7484
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/music_composers"

    const/16 v3, 0x84

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7485
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/music_genres"

    const/16 v3, 0x85

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7486
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/music_artists_album_id"

    const/16 v3, 0x86

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7487
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/music_albums"

    const/16 v3, 0x87

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7488
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/music_folders"

    const/16 v3, 0x88

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7491
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/video/media"

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7492
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/video/media/#"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7493
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/video/thumbnails"

    const/16 v3, 0xca

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7494
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/video/thumbnails/#"

    const/16 v3, 0xcb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7496
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/media_scanner"

    const/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7498
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/fs_id"

    const/16 v3, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7499
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/version"

    const/16 v3, 0x259

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7501
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/mtp_connected"

    const/16 v3, 0x2c1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7505
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/raw_sql/*/*"

    const/16 v3, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7506
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/faces"

    const/16 v3, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7507
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/faces/#"

    const/16 v3, 0x7d1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7508
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/persons"

    const/16 v3, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7509
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/persons/#"

    const/16 v3, 0xbb9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7510
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/recommend_person/#/#"

    const/16 v3, 0xfa1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7511
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/face_scanner"

    const/16 v3, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7512
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/similar_persons/#"

    const/16 v3, 0xfa2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7515
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_USE_DOCUMENTCLASSIFIER:Z

    if-ne v0, v4, :cond_0

    .line 7516
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/smart_sort/scan"

    const/16 v3, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7517
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/smart_sort/"

    const/16 v3, 0x1389

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7518
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/smart_sort/#"

    const/16 v3, 0x138a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7522
    :cond_0
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/contextural_tags"

    const/16 v3, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7523
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/contextural_tags/#"

    const/16 v3, 0x1771

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7525
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*"

    const/16 v3, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7526
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7529
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/file"

    const/16 v3, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7530
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/file/#"

    const/16 v3, 0x2bd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7531
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/object"

    const/16 v3, 0x2be

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7532
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/object/#"

    const/16 v3, 0x2bf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7533
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/object/#/references"

    const/16 v3, 0x2c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7538
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search_suggest_query"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7540
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search_suggest_query/*"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7544
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search/search_suggest_query"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7546
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search/search_suggest_query/*"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7550
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search/fancy"

    const/16 v3, 0x192

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7551
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search/fancy/*"

    const/16 v3, 0x192

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7553
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/mediadb/log"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7635
    const/16 v0, 0x95

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v5

    const-string v1, "Classic Rock"

    aput-object v1, v0, v4

    const-string v1, "Country"

    aput-object v1, v0, v6

    const-string v1, "Dance"

    aput-object v1, v0, v7

    const-string v1, "Disco"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Britpop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Negerpunk"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "JPop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "and further - Unknown"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaProvider;->ID3_GENRES:[Ljava/lang/String;

    .line 7791
    const/16 v0, 0x95

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v5

    const-string v1, "Rock"

    aput-object v1, v0, v4

    const-string v1, "Country"

    aput-object v1, v0, v6

    const-string v1, "Dance"

    aput-object v1, v0, v7

    const-string v1, "Dance"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Rap/Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap/Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Rap/Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "<unknown>"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaProvider;->ID3_TO_SEC_GENRES:[Ljava/lang/String;

    .line 7943
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->mID3ToSecGenreMap:Ljava/util/HashMap;

    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to resolve canonical paths"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1004
    :cond_1
    const-string v0, ""

    goto/16 :goto_0

    .line 1008
    :cond_2
    const-string v0, ""

    goto/16 :goto_1

    .line 1009
    :cond_3
    const-string v0, ""

    goto/16 :goto_2

    .line 2255
    :cond_4
    const-string v0, ""

    goto/16 :goto_3

    .line 2256
    :cond_5
    const-string v0, ""

    goto/16 :goto_4

    .line 2258
    :cond_6
    const-string v0, ""

    goto/16 :goto_5

    .line 2259
    :cond_7
    const-string v0, ""

    goto/16 :goto_6

    .line 2260
    :cond_8
    const-string v0, ""

    goto/16 :goto_7
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 126
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    .line 172
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    .line 175
    iput-object v3, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    .line 176
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    invoke-static {}, Lcom/android/providers/media/MediaThumbRequest;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    .line 187
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "(CASE WHEN grouporder=1 THEN 2130837505 ELSE CASE WHEN grouporder=2 THEN 2130837504 ELSE 2130837506 END END) AS suggest_icon_1"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "0 AS suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text1 AS suggest_text_1"

    aput-object v2, v0, v1

    const-string v1, "text1 AS suggest_intent_query"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "CASE when grouporder=1 THEN data1 ELSE artist END AS data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CASE when grouporder=1 THEN data2 ELSE CASE WHEN grouporder=2 THEN NULL ELSE album END END AS data2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "match as ar"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "grouporder"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "NULL AS itemorder"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsLegacy:[Ljava/lang/String;

    .line 206
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "artist"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const-string v1, "data1"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "data2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsFancy:[Ljava/lang/String;

    .line 216
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "(CASE WHEN grouporder=1 THEN 2130837505 ELSE CASE WHEN grouporder=2 THEN 2130837504 ELSE 2130837506 END END) AS suggest_icon_1"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "text1 AS suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text1 AS suggest_intent_query"

    aput-object v2, v0, v1

    const-string v1, "(CASE WHEN grouporder=1 THEN \'%1\' ELSE CASE WHEN grouporder=3 THEN artist || \' - \' || album ELSE CASE WHEN text2!=\'<unknown>\' THEN text2 ELSE NULL END END END) AS suggest_text_2"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    .line 232
    iput v5, p0, Lcom/android/providers/media/MediaProvider;->SEARCH_COLUMN_BASIC_TEXT2:I

    .line 267
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mAlbumArtBaseUri:Landroid/net/Uri;

    .line 274
    iput v4, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    .line 275
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSyncLock:Ljava/lang/Object;

    .line 279
    new-instance v0, Lcom/android/providers/media/MediaProvider$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$1;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 391
    new-instance v0, Lcom/android/providers/media/MediaProvider$2;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$2;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 459
    new-instance v0, Lcom/android/providers/media/MediaProvider$3;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$3;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    .line 685
    iput-object v3, p0, Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;

    .line 722
    new-instance v0, Lcom/android/providers/media/MediaProvider$4;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$4;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    .line 783
    new-instance v0, Lcom/android/providers/media/MediaProvider$5;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$5;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSmartSortBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1014
    iput-object v3, p0, Lcom/android/providers/media/MediaProvider;->mSmartSortContentApp:Lcom/android/providers/media/SmartSortContentApp;

    .line 7123
    iput-object v3, p0, Lcom/android/providers/media/MediaProvider;->mDatabases_lgtvas:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 7131
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/media/MediaProvider;->mVolumeId:I

    .line 7276
    iput-object v3, p0, Lcom/android/providers/media/MediaProvider;->mRecomendThread:Ljava/lang/Thread;

    .line 7277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/ArrayList;

    .line 7414
    iput-object v3, p0, Lcom/android/providers/media/MediaProvider;->mGetSimilarPersonsThread:Ljava/lang/Thread;

    .line 7968
    new-instance v0, Lcom/android/providers/media/MediaProvider$10;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$10;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/ContentApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/providers/media/MediaProvider;->mExternalStorageSdPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->stopMediaScanner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/IMtpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/IMtpService;)Lcom/android/providers/media/IMtpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/providers/media/MediaProvider;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaProvider;->sendObjectRemoved(J)V

    return-void
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_ADD_DB4VAS:Z

    return v0
.end method

.method static synthetic access$1500(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 126
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V

    return-void
.end method

.method static synthetic access$1600(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 126
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/providers/media/MediaProvider;->updateLGTDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaThumbRequest;)Lcom/android/providers/media/MediaThumbRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->bIsShuttingDown:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    sput-boolean p0, Lcom/android/providers/media/MediaProvider;->bIsShuttingDown:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaProvider;->hidePath(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/providers/media/MediaProvider;->openFileColumns:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/providers/media/MediaProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/providers/media/MediaProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/providers/media/MediaProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->createAudioDeleteTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->deleteAudioDeleteTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->detachVolume(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$900()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private addKeyface(II)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v10, -0x1

    const/4 v12, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 7325
    .line 7330
    sget-object v0, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 7331
    if-nez v0, :cond_0

    move v0, v8

    .line 7410
    :goto_0
    return v0

    .line 7332
    :cond_0
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 7333
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mPersonOpenHelper:Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 7334
    if-eqz v0, :cond_1

    if-nez v11, :cond_2

    :cond_1
    move v0, v8

    .line 7335
    goto :goto_0

    .line 7336
    :cond_2
    const-string v1, "faces"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "group_id"

    aput-object v3, v2, v8

    const-string v3, "face_data"

    aput-object v3, v2, v9

    const-string v3, "auto_group"

    aput-object v3, v2, v12

    const-string v3, "_id=?"

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 7338
    if-eqz v3, :cond_f

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 7339
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 7340
    const/4 v1, 0x1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 7341
    const/4 v1, 0x2

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 7344
    :goto_1
    if-eqz v3, :cond_3

    .line 7345
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 7347
    :cond_3
    if-ltz v10, :cond_4

    if-gtz v1, :cond_6

    :cond_4
    move v0, v8

    .line 7348
    goto :goto_0

    .line 7344
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_5

    .line 7345
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 7349
    :cond_6
    if-lez v2, :cond_7

    .line 7350
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 7351
    const-string v3, "recommended_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7352
    const-string v3, "faces"

    const-string v4, "group_id=? and recommended_id=?"

    new-array v6, v12, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v9

    invoke-virtual {v0, v3, v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7356
    :cond_7
    const-string v0, "persons"

    const-string v1, "cover"

    invoke-static {v11, v0, v1, p2}, Lcom/android/providers/media/NativeApi;->getStringById(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 7357
    if-nez v0, :cond_9

    if-ltz v10, :cond_9

    .line 7358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/face/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/providers/media/ContentApp;->mFaceDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7363
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 7364
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    .line 7365
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 7366
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 7368
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 7371
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7372
    const-string v1, "cover"

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7373
    const-string v1, "persons"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v11, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    .line 7383
    if-eqz v7, :cond_8

    .line 7384
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 7390
    :cond_8
    :goto_2
    if-eqz v6, :cond_9

    .line 7391
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 7392
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d

    .line 7401
    :cond_9
    :goto_3
    sget-object v0, Lcom/android/providers/media/Columns;->RAW_SQL_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "person"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/media/NativeApi;->getFaceFreeDataIndex(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v0

    .line 7402
    if-ltz v10, :cond_a

    if-ltz v0, :cond_a

    .line 7403
    sget v1, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    invoke-static {v1, v10, v0}, Lcom/android/providers/media/NativeApi;->addAsKeyFace(III)V

    .line 7404
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 7405
    const-string v2, "person_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7406
    const-string v2, "face_data"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7407
    const-string v0, "faces"

    const-string v2, "face_data"

    invoke-virtual {v11, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_a
    move v0, v9

    .line 7410
    goto/16 :goto_0

    .line 7375
    :catch_0
    move-exception v0

    move-object v1, v5

    .line 7377
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 7383
    if-eqz v1, :cond_b

    .line 7384
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 7390
    :cond_b
    :goto_5
    if-eqz v5, :cond_9

    .line 7391
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 7392
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 7394
    :catch_1
    move-exception v0

    goto :goto_3

    .line 7378
    :catch_2
    move-exception v0

    move-object v6, v5

    move-object v7, v5

    .line 7380
    :goto_6
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 7383
    if-eqz v7, :cond_c

    .line 7384
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 7390
    :cond_c
    :goto_7
    if-eqz v6, :cond_9

    .line 7391
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 7392
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_3

    .line 7394
    :catch_3
    move-exception v0

    goto :goto_3

    .line 7382
    :catchall_1
    move-exception v0

    move-object v6, v5

    move-object v7, v5

    .line 7383
    :goto_8
    if-eqz v7, :cond_d

    .line 7384
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 7390
    :cond_d
    :goto_9
    if-eqz v6, :cond_e

    .line 7391
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 7392
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 7396
    :cond_e
    :goto_a
    throw v0

    .line 7385
    :catch_4
    move-exception v0

    goto/16 :goto_2

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_9

    .line 7394
    :catch_8
    move-exception v1

    goto :goto_a

    .line 7382
    :catchall_2
    move-exception v0

    move-object v6, v5

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v6, v5

    move-object v7, v1

    goto :goto_8

    .line 7378
    :catch_9
    move-exception v0

    move-object v6, v5

    goto :goto_6

    :catch_a
    move-exception v0

    goto :goto_6

    .line 7375
    :catch_b
    move-exception v0

    move-object v1, v7

    goto :goto_4

    :catch_c
    move-exception v0

    move-object v5, v6

    move-object v1, v7

    goto :goto_4

    .line 7394
    :catch_d
    move-exception v0

    goto/16 :goto_3

    :cond_f
    move v1, v8

    move v2, v10

    goto/16 :goto_1
.end method

.method private attachVolume(Ljava/lang/String;)Landroid/net/Uri;
    .locals 13
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 6898
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 6899
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Opening and closing databases not allowed."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6903
    :cond_0
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v7

    .line 6904
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    monitor-exit v7

    .line 7011
    :goto_0
    return-object v0

    .line 6908
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 6910
    const-string v0, "internal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6911
    new-instance v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    const-string v2, "internal.db"

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 6978
    :goto_1
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6980
    iget-boolean v1, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-nez v1, :cond_f

    .line 6982
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/media/MediaProvider;->createDefaultFolders(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6985
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "Android/data/com.android.providers.media/albumthumbs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 6986
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move v0, v6

    .line 6987
    :goto_2
    if-eqz v1, :cond_b

    array-length v2, v1

    if-ge v0, v2, :cond_b

    .line 6988
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6987
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6913
    :cond_2
    const-string v0, "external"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6914
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6915
    sget-object v0, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 6916
    invoke-static {v0}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v8

    .line 6920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "external-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".db"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6921
    new-instance v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 6923
    iput v8, p0, Lcom/android/providers/media/MediaProvider;->mVolumeId:I

    goto :goto_1

    .line 7008
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6929
    :cond_3
    :try_start_1
    const-string v0, "external.db"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 6933
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 6934
    const-string v4, "mounted"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6935
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primary storage did not mounted!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6939
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    .line 6944
    invoke-virtual {v1}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    move v4, v6

    :goto_3
    if-ge v4, v8, :cond_8

    aget-object v0, v5, v4

    .line 6945
    const-string v9, "external-"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 6946
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 6947
    if-nez v2, :cond_5

    .line 6944
    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v0

    goto :goto_3

    .line 6949
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_6

    .line 6950
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 6953
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_7
    move-object v0, v2

    goto :goto_4

    .line 6957
    :cond_8
    if-eqz v2, :cond_10

    .line 6958
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6959
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "renamed database "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "external.db"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 6971
    :goto_5
    new-instance v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    goto/16 :goto_1

    .line 6962
    :cond_9
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to rename database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "external.db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 6975
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no volume named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6991
    :cond_b
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "album_art"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 6994
    :goto_6
    if-eqz v1, :cond_d

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6995
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    .line 6998
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_c

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0

    :cond_d
    if-eqz v1, :cond_e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7001
    :cond_e
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7002
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7003
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7005
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_7

    .line 7008
    :cond_f
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    move-object v2, v3

    goto/16 :goto_5
.end method

.method private static changeSoundPath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 7066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_CONSTANT_PATH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 7067
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7068
    if-eqz v0, :cond_3

    .line 7069
    sget-object v1, Lcom/android/providers/media/MediaProvider;->mExternalStorageSdPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "/mnt/sdcard/external_sd/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7070
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "/mnt/sdcard/external_sd"

    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStorageSdPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v9, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7105
    :cond_0
    :goto_0
    return-void

    .line 7072
    :cond_1
    const-string v1, "/mnt/sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7073
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "/mnt/sdcard"

    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v9, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 7075
    :cond_2
    sget-object v1, Lcom/android/providers/media/MediaProvider;->mExternalStorageSdPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "/mnt/extSdCard/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7076
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "/mnt/extSdCard"

    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStorageSdPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v9, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 7080
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7081
    if-eqz v0, :cond_0

    .line 7082
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7085
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 7086
    if-ltz v1, :cond_0

    .line 7089
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 7090
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeSoundPath - when pathString is null. Index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7094
    :try_start_0
    const-string v1, "files"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 7095
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_4

    .line 7096
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7097
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7098
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v9, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7101
    :cond_4
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter
    .parameter "userArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3458
    .local p1, prepend:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 3459
    .local v2, presize:I
    if-nez v2, :cond_0

    .line 3471
    .end local p2
    :goto_0
    return-object p2

    .line 3463
    .restart local p2
    :cond_0
    if-eqz p2, :cond_1

    array-length v3, p2

    .line 3464
    .local v3, usersize:I
    :goto_1
    add-int v4, v2, v3

    new-array v0, v4, [Ljava/lang/String;

    .line 3465
    .local v0, combined:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 3466
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 3465
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3463
    .end local v0           #combined:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #usersize:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 3468
    .restart local v0       #combined:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v3       #usersize:I
    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_3

    .line 3469
    add-int v4, v2, v1

    aget-object v5, p2, v1

    aput-object v5, v0, v4

    .line 3468
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move-object p2, v0

    .line 3471
    goto :goto_0
.end method

.method private static computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2667
    .line 2702
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 2703
    if-nez v0, :cond_0

    .line 2704
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2710
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2711
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2716
    const-string v2, "bucket_id"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2717
    const-string v1, "bucket_display_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    return-void
.end method

.method private computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 8101
    const-string v0, "<unknown>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8102
    const-string v0, "\u0001"

    .line 8163
    :cond_0
    :goto_0
    return-object v0

    .line 8104
    :cond_1
    const-string v0, "[\\[\\]\\(\\)\"\'.,?!]"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 8105
    invoke-static {}, Lcom/android/providers/media/HanziToPinyin;->getInstance()Lcom/android/providers/media/HanziToPinyin;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/providers/media/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 8106
    const-string v0, ""

    .line 8108
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 8109
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 8110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v1

    .line 8111
    :goto_1
    if-ge v3, v5, :cond_5

    .line 8112
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/HanziToPinyin$Token;

    .line 8113
    iget v2, v0, Lcom/android/providers/media/HanziToPinyin$Token;->type:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_3

    .line 8114
    iget-object v2, v0, Lcom/android/providers/media/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 8115
    iget-object v0, v0, Lcom/android/providers/media/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 8116
    array-length v0, v2

    array-length v8, v7

    if-ge v0, v8, :cond_2

    array-length v0, v2

    :goto_2
    move v2, v1

    .line 8118
    :goto_3
    if-ge v2, v0, :cond_4

    .line 8119
    aget-object v8, v7, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8118
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 8116
    :cond_2
    array-length v0, v7

    goto :goto_2

    .line 8125
    :cond_3
    iget-object v0, v0, Lcom/android/providers/media/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 8126
    :goto_4
    array-length v7, v2

    if-ge v0, v7, :cond_4

    .line 8127
    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8128
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8126
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 8111
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 8133
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 8134
    const/4 v2, 0x1

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 8135
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/media/MediaProvider;->mCollator:Ljava/text/Collator;

    .line 8136
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8138
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mCollator:Ljava/text/Collator;

    const-string v4, "#"

    invoke-virtual {v3, v1, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    .line 8139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8140
    :cond_6
    const-string v1, "%7C"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 8141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8142
    :cond_7
    const-string v1, "%5B"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 8143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8144
    :cond_8
    const-string v1, "~"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    .line 8145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8146
    :cond_9
    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 8147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8148
    :cond_a
    const-string v1, "%C2%A2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    .line 8149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8150
    :cond_b
    const-string v1, "%C2%A3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 8151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8152
    :cond_c
    const-string v1, "%C2%A5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    .line 8153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8154
    :cond_d
    const-string v1, "%C3%97"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_e

    .line 8155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8156
    :cond_e
    const-string v1, "%C3%B7"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_f

    .line 8157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8158
    :cond_f
    const-string v1, "%E2%82%AC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 8159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2726
    if-nez p0, :cond_1

    const-string v0, ""

    .line 2727
    :goto_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2728
    if-ltz v1, :cond_0

    .line 2729
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2731
    :cond_0
    const-string v1, "_display_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2732
    return-void

    .line 2726
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static computeTakenTime(Landroid/content/ContentValues;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 2741
    const-string v1, "datetaken"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2744
    const-string v1, "date_modified"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 2745
    .local v0, lastModified:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 2746
    const-string v1, "datetaken"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2749
    .end local v0           #lastModified:Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method private convertOrgin2PinyinForSort(Landroid/content/ContentValues;)V
    .locals 2
    .parameter

    .prologue
    .line 8053
    if-nez p1, :cond_0

    .line 8064
    :goto_0
    return-void

    .line 8057
    :cond_0
    const-string v0, "genre_name"

    const-string v1, "genre_name_pinyin"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8058
    const-string v0, "composer"

    const-string v1, "composer_pinyin"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8059
    const-string v0, "title"

    const-string v1, "title_pinyin"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8060
    const-string v0, "_display_name"

    const-string v1, "_display_name_pinyin"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8061
    const-string v0, "bucket_display_name"

    const-string v1, "bucket_display_name_pinyin"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8063
    const-string v0, "title"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSearch(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private createAudioDeleteTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 298
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_meta_cleanup DELETE ON files WHEN old.media_type = 2 BEGIN DELETE FROM audio_genres_map WHERE audio_id = old._id;DELETE FROM audio_playlists_map WHERE audio_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method private createDefaultFolders(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 756
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 757
    const-string v2, "created_default_folders"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 758
    sget-object v2, Lcom/android/providers/media/MediaProvider;->sDefaultFolderNames:[Ljava/lang/String;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 759
    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 760
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 761
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 762
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, p2, v4}, Lcom/android/providers/media/MediaProvider;->insertDirectory(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    .line 758
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 766
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 767
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 768
    const-string v1, "created_default_folders"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 769
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 771
    :cond_2
    return-void
.end method

.method private deleteAudioDeleteTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 306
    const-string v0, "DROP TRIGGER IF EXISTS audio_meta_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method private deleteFacePerson(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "table"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 5156
    const/4 v0, 0x0

    .line 5157
    .local v0, count:I
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .line 5158
    .local v1, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v1, :cond_0

    .line 5159
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5162
    :cond_0
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 5163
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_1

    .line 5164
    const/4 v3, 0x0

    .line 5166
    :goto_0
    return v3

    .line 5165
    :cond_1
    invoke-virtual {v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move v3, v0

    .line 5166
    goto :goto_0
.end method

.method private detachVolume(Landroid/net/Uri;)V
    .locals 6
    .parameter

    .prologue
    .line 7022
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 7023
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Opening and closing databases not allowed."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7027
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7028
    const-string v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7029
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deleting the internal volume is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7031
    :cond_1
    const-string v1, "external"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 7033
    sget-boolean v1, Lcom/android/providers/media/MediaProvider;->FLAG_ADD_DB4VAS:Z

    if-eqz v1, :cond_2

    .line 7034
    const-string v1, "lgtvas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 7035
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no volume named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7040
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no volume named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7044
    :cond_3
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v3

    .line 7045
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 7046
    if-nez v1, :cond_4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7062
    :goto_0
    return-void

    .line 7050
    :cond_4
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7051
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7056
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7057
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->close()V

    .line 7058
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7060
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 7052
    :catch_0
    move-exception v2

    .line 7053
    :try_start_3
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t touch database file"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 7058
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private doAudioSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3479
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    .line 3480
    :goto_0
    const-string v2, "  "

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 3482
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3484
    :goto_1
    array-length v2, v1

    new-array v5, v2, [Ljava/lang/String;

    .line 3485
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    .line 3486
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/text/Collator;->setStrength(I)V

    .line 3487
    array-length v4, v1

    .line 3488
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_4

    .line 3495
    aget-object v2, v1, v3

    invoke-static {v2}, Lcom/android/providers/media/SecDatabaseUtils;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3497
    const-string v6, "\\"

    const-string v7, "\\\\"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3498
    const-string v6, "%"

    const-string v7, "\\%"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3499
    const-string v6, "_"

    const-string v7, "\\_"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3500
    aget-object v6, v1, v3

    const-string v7, "a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, v1, v3

    const-string v7, "an"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, v1, v3

    const-string v7, "the"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    const-string v2, "%"

    :goto_3
    aput-object v2, v5, v3

    .line 3488
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 3479
    :cond_1
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3482
    :cond_2
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_1

    .line 3500
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "%"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 3505
    :cond_4
    const-string v4, ""

    .line 3506
    const/4 v2, 0x0

    move v3, v2

    :goto_4
    array-length v2, v1

    if-ge v3, v2, :cond_6

    .line 3507
    if-nez v3, :cond_5

    .line 3508
    const-string v2, "match LIKE ? ESCAPE \'\\\'"

    .line 3506
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object v4, v2

    goto :goto_4

    .line 3510
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND match LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 3514
    :cond_6
    const-string v1, "search"

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3516
    const/16 v1, 0x192

    move/from16 v0, p8

    if-ne v0, v1, :cond_7

    .line 3517
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsFancy:[Ljava/lang/String;

    .line 3523
    :goto_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 3518
    :cond_7
    const/16 v1, 0x191

    move/from16 v0, p8

    if-ne v0, v1, :cond_8

    .line 3519
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    goto :goto_6

    .line 3521
    :cond_8
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsLegacy:[Ljava/lang/String;

    goto :goto_6
.end method

.method private dump(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Z)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 7566
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 7567
    iget-object v0, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7568
    const-string v0, ": "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7569
    invoke-virtual {p1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 7570
    if-nez v0, :cond_1

    .line 7571
    const-string v0, "null"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7630
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7573
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7574
    const-string v1, "files"

    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "count(*)"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 7576
    if-eqz v1, :cond_6

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7577
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 7578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " rows, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7583
    :goto_1
    if-eqz v1, :cond_2

    .line 7584
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7587
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inserts, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updates, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deletes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " queries, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7591
    iget-wide v1, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4

    .line 7592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v4, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const v6, 0x80011

    invoke-static {v2, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7597
    iget-wide v1, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStopTime:J

    .line 7598
    iget-wide v4, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    cmp-long v4, v1, v4

    if-gez v4, :cond_3

    .line 7599
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    .line 7601
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    sub-long/2addr v1, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v1, v5

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7603
    iget-wide v1, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStopTime:J

    iget-wide v4, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    cmp-long v1, v1, v4

    if-gez v1, :cond_4

    .line 7604
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7606
    const-string v1, " (ongoing)"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7612
    :cond_4
    :goto_2
    if-eqz p2, :cond_0

    .line 7613
    const-string v1, "log"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "time"

    aput-object v4, v2, v9

    const-string v4, "message"

    aput-object v4, v2, v10

    const-string v7, "time"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 7616
    if-eqz v1, :cond_9

    .line 7617
    :goto_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7618
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7619
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7620
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 7624
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 7625
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 7580
    :cond_6
    :try_start_2
    const-string v2, "couldn\'t get row count, "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    .line 7583
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_7

    .line 7584
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 7608
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (scanning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 7624
    :cond_9
    if-eqz v1, :cond_0

    .line 7625
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5
    .parameter "internal"
    .parameter "initialValues"
    .parameter "preferredExtension"
    .parameter "directoryName"

    .prologue
    .line 3592
    const-string v2, "_data"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3593
    .local v0, file:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3594
    invoke-direct {p0, p1, p3, p4}, Lcom/android/providers/media/MediaProvider;->generateFileName(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3595
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3596
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3601
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->ensureFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3602
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create new file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3598
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    move-object v1, p2

    .restart local v1       #values:Landroid/content/ContentValues;
    goto :goto_0

    .line 3604
    :cond_1
    return-object v1
.end method

.method private ensureFileExists(Ljava/lang/String;)Z
    .locals 8
    .parameter "path"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4988
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4989
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5006
    :goto_0
    return v5

    .line 4994
    :cond_0
    const/16 v7, 0x2f

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 4995
    .local v4, secondSlash:I
    if-ge v4, v5, :cond_1

    move v5, v6

    goto :goto_0

    .line 4996
    :cond_1
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4997
    .local v1, directoryPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4998
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    .line 4999
    goto :goto_0

    .line 5000
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 5002
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 5003
    :catch_0
    move-exception v3

    .line 5004
    .local v3, ioe:Ljava/io/IOException;
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v7, "File creation failed"

    invoke-static {v5, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 5006
    goto :goto_0
.end method

.method private static findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8029
    const/4 v0, 0x0

    .line 8030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pragma table_info("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 8032
    if-eqz v1, :cond_2

    .line 8033
    const-string v2, "name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 8037
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8038
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 8040
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 8041
    const/4 v0, 0x1

    goto :goto_0

    .line 8045
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 8049
    :cond_2
    return v0

    .line 8045
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private generateFileName(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 4974
    if-eqz p1, :cond_0

    .line 4975
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Writing to internal storage is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4979
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCompressedAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 6359
    .line 6362
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6363
    const/high16 v4, 0x1000

    invoke-static {v0, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 6366
    new-instance v4, Landroid/media/MediaScanner;

    invoke-direct {v4, p0}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 6367
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/MediaScanner;->extractAlbumArt(Ljava/io/FileDescriptor;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 6368
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 6379
    if-nez v6, :cond_a

    if-eqz p1, :cond_a

    .line 6380
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 6381
    if-lez v0, :cond_a

    .line 6383
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 6384
    sget-object v0, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    .line 6385
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 6389
    sget-object v9, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6390
    :try_start_2
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6391
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6427
    :goto_0
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6429
    if-eqz v0, :cond_a

    .line 6430
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6431
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6432
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 6435
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 6436
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 6440
    if-eqz v1, :cond_0

    .line 6441
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_0
    :goto_1
    move-object v5, v0

    .line 6451
    :goto_2
    return-object v5

    .line 6392
    :cond_1
    :try_start_7
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 6394
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6395
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 6396
    if-nez v10, :cond_2

    .line 6397
    monitor-exit v9

    goto :goto_2

    .line 6427
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 6448
    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_1

    .line 6400
    :cond_2
    const/16 v4, 0x3e8

    .line 6401
    :try_start_9
    array-length v0, v10

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    move v0, v4

    move-object v4, v5

    :goto_3
    if-ltz v7, :cond_b

    .line 6402
    aget-object v11, v10, v7

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 6403
    const-string v12, "albumart.jpg"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 6404
    aget-object v0, v10, v7

    .line 6425
    :goto_4
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6406
    :cond_3
    const-string v12, "albumart"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "large.jpg"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    if-le v0, v1, :cond_5

    .line 6409
    aget-object v0, v10, v7

    move-object v4, v0

    move v0, v1

    .line 6401
    :cond_4
    :goto_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 6411
    :cond_5
    const-string v12, "albumart"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v12, ".jpg"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    if-le v0, v2, :cond_6

    .line 6414
    aget-object v0, v10, v7

    move-object v4, v0

    move v0, v2

    .line 6415
    goto :goto_5

    .line 6416
    :cond_6
    const-string v12, ".jpg"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    if-le v0, v3, :cond_7

    .line 6417
    aget-object v0, v10, v7

    move-object v4, v0

    move v0, v3

    .line 6418
    goto :goto_5

    .line 6419
    :cond_7
    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x4

    if-le v0, v11, :cond_4

    .line 6420
    aget-object v4, v10, v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 6421
    const/4 v0, 0x4

    goto :goto_5

    .line 6437
    :catch_1
    move-exception v0

    move-object v0, v5

    .line 6440
    :goto_6
    if-eqz v0, :cond_9

    .line 6441
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    move-object v0, v5

    goto/16 :goto_1

    .line 6440
    :catchall_1
    move-exception v1

    :goto_7
    if-eqz v5, :cond_8

    .line 6441
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_8
    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 6448
    :catch_2
    move-exception v1

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object v0, v5

    goto/16 :goto_1

    .line 6440
    :catchall_2
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    goto :goto_7

    .line 6437
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_6

    :cond_9
    move-object v0, v5

    goto/16 :goto_1

    :cond_a
    move-object v0, v6

    goto/16 :goto_1

    :cond_b
    move-object v0, v4

    goto :goto_4

    :cond_c
    move-object v0, v5

    goto/16 :goto_0
.end method

.method private getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .locals 7
    .parameter "uri"

    .prologue
    .line 6820
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v6

    .line 6821
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 6823
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_ADD_DB4VAS:Z

    if-eqz v0, :cond_1

    .line 6824
    const-string v0, "lgtvas"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6825
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases_lgtvas:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    if-nez v0, :cond_0

    .line 6826
    new-instance v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "lgtvas.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases_lgtvas:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 6828
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases_lgtvas:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    monitor-exit v6

    .line 6835
    :goto_0
    return-object v0

    .line 6832
    :cond_1
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    monitor-exit v6

    goto :goto_0

    .line 6834
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6835
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .locals 3
    .parameter

    .prologue
    .line 6841
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 6842
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 6843
    const/16 v2, 0x2710

    if-ne v0, v2, :cond_1

    .line 6844
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6845
    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6846
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 6865
    :goto_0
    return-object v0

    .line 6847
    :cond_0
    const-string v1, "person"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6848
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPersonOpenHelper:Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;

    goto :goto_0

    .line 6851
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 6863
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    goto :goto_0

    .line 6854
    :sswitch_0
    const-string v0, "external"

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6855
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    goto :goto_0

    .line 6857
    :cond_2
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPersonOpenHelper:Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;

    goto :goto_0

    .line 6861
    :sswitch_1
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPersonOpenHelper:Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;

    goto :goto_0

    .line 6865
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 6851
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d1 -> :sswitch_0
        0xbb8 -> :sswitch_1
        0xbb9 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getDatabaseVersion(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 775
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 777
    :catch_0
    move-exception v0

    .line 778
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t get version code for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getKeyIdForName(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/providers/media/MediaProvider$DatabaseHelper;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/net/Uri;",
            ")J"
        }
    .end annotation

    .prologue
    .line 6648
    sget-boolean v2, Lcom/android/providers/media/MediaProvider;->FLAG_ADD_DB4VAS:Z

    if-eqz v2, :cond_1

    .line 6649
    const-string v2, "lgtvas"

    invoke-virtual/range {p12 .. p12}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "albums"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6650
    const-wide/16 v2, -0x1

    .line 6766
    :cond_0
    :goto_0
    return-wide v2

    .line 6655
    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 6656
    :cond_2
    const-string p6, "<unknown>"

    .line 6662
    :cond_3
    invoke-static/range {p6 .. p6}, Lcom/android/providers/media/SecDatabaseUtils;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6665
    if-nez v2, :cond_4

    .line 6667
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "null key"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6668
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 6671
    :cond_4
    const-string v3, "albums"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 6672
    const-string v3, "<unknown>"

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 6682
    if-eqz v11, :cond_c

    .line 6683
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6684
    if-eqz v12, :cond_c

    .line 6685
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    .line 6689
    :goto_1
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v10, v6, v2

    .line 6690
    iget v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 6691
    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 6694
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 6753
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple entries in table "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6754
    const-wide/16 v2, -0x1

    .line 6758
    :cond_5
    :goto_2
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6761
    :cond_6
    if-eqz p11, :cond_0

    if-nez v12, :cond_0

    .line 6762
    monitor-enter p11

    .line 6763
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p11

    move-object/from16 v1, p7

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6764
    monitor-exit p11

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 6697
    :pswitch_0
    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 6698
    move-object/from16 v0, p4

    invoke-virtual {v2, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6699
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6703
    sget-boolean v3, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v3, :cond_7

    .line 6704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_pinyin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-direct {p0, v2, v0, v3}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6705
    move-object/from16 v0, p5

    invoke-direct {p0, v2, v0}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSearch(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    .line 6709
    :cond_7
    iget v3, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 6710
    const-string v3, "duration"

    move-object/from16 v0, p3

    invoke-virtual {p2, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 6711
    if-eqz p8, :cond_8

    if-eqz v11, :cond_8

    if-nez v12, :cond_8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p8

    .line 6713
    invoke-direct/range {v2 .. v7}, Lcom/android/providers/media/MediaProvider;->makeThumbAsync(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 6715
    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_9

    .line 6716
    invoke-virtual/range {p12 .. p12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    const/16 v4, 0x18

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 6717
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/audio/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 6718
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_9
    move-wide v2, v6

    .line 6721
    goto/16 :goto_2

    .line 6724
    :pswitch_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6725
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 6729
    const/4 v4, 0x2

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 6730
    move-object/from16 v0, p6

    invoke-virtual {p0, v0, v4}, Lcom/android/providers/media/MediaProvider;->makeBestName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6731
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 6733
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 6734
    move-object/from16 v0, p5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6738
    sget-boolean v5, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v5, :cond_a

    .line 6739
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_pinyin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-direct {p0, v4, v0, v5}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6743
    :cond_a
    iget v5, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 6744
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rowid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    long-to-int v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {p2, v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6745
    invoke-virtual/range {p12 .. p12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    const/16 v6, 0x18

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 6746
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/audio/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 6747
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_2

    .line 6758
    :catchall_1
    move-exception v2

    if-eqz v8, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    :cond_c
    move-object v10, v2

    goto/16 :goto_1

    .line 6694
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getObjectFilePath(I)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 3608
    if-nez p1, :cond_1

    .line 3610
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v1, " root directory deleted !!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    const-string v0, "/mnt/sdcard"

    .line 3646
    :cond_0
    :goto_0
    return-object v0

    .line 3615
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 3616
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3619
    :try_start_0
    sget-object v2, Lcom/android/providers/media/MediaProvider;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3621
    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3622
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3623
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3624
    const-string v0, "title"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3626
    :cond_2
    if-nez v0, :cond_4

    .line 3627
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, " path is NULL "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3645
    if-eqz v1, :cond_3

    .line 3646
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v7

    goto :goto_0

    .line 3631
    :cond_4
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3645
    if-eqz v1, :cond_0

    .line 3646
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3634
    :cond_5
    if-eqz v1, :cond_6

    .line 3635
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3645
    :cond_6
    if-eqz v1, :cond_7

    .line 3646
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v7

    goto :goto_0

    .line 3638
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 3639
    :goto_1
    :try_start_4
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException in getObjectFilePath"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3640
    if-eqz v1, :cond_8

    .line 3641
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3645
    :cond_8
    if-eqz v1, :cond_9

    .line 3646
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v0, v7

    goto/16 :goto_0

    .line 3645
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_a

    .line 3646
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    .line 3645
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 3638
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getObjectReferences(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;
    .locals 12
    .parameter "helper"
    .parameter "db"
    .parameter "handle"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4358
    iget v0, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 4359
    const-string v1, "files"

    sget-object v2, Lcom/android/providers/media/MediaProvider;->sMediaTableColumns:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4363
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4364
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 4365
    .local v10, playlistId:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 4366
    .local v9, mediaType:I
    const/4 v0, 0x4

    if-eq v9, v0, :cond_1

    .line 4375
    if-eqz v8, :cond_0

    .line 4376
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4379
    .end local v9           #mediaType:I
    .end local v10           #playlistId:J
    :cond_0
    :goto_0
    return-object v5

    .line 4370
    .restart local v9       #mediaType:I
    .restart local v10       #playlistId:J
    :cond_1
    :try_start_1
    iget v0, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 4371
    const-string v0, "SELECT audio_id FROM audio_playlists_map WHERE playlist_id=? ORDER BY play_order"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 4375
    if-eqz v8, :cond_0

    .line 4376
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4375
    .end local v9           #mediaType:I
    .end local v10           #playlistId:J
    :cond_2
    if-eqz v8, :cond_0

    .line 4376
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4375
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 4376
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getParent(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 19
    .parameter "helper"
    .parameter "db"
    .parameter "path"

    .prologue
    .line 3990
    const/16 v4, 0x2f

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    .line 3991
    .local v17, lastSlash:I
    if-lez v17, :cond_9

    .line 3992
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 3993
    .local v18, parentPath:Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    sget-object v4, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    array-length v4, v4

    if-ge v14, v4, :cond_2

    .line 3994
    sget-object v4, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    aget-object v4, v4, v14

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3995
    const-wide/16 v15, 0x0

    .line 4038
    .end local v14           #i:I
    .end local v18           #parentPath:Ljava/lang/String;
    :cond_0
    :goto_1
    return-wide v15

    .line 3993
    .restart local v14       #i:I
    .restart local v18       #parentPath:Ljava/lang/String;
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3998
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 3999
    .local v13, cid:Ljava/lang/Long;
    if-eqz v13, :cond_3

    .line 4001
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_1

    .line 4008
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/providers/media/MediaProvider;->mCaseInsensitivePaths:Z

    if-eqz v4, :cond_5

    const-string v7, "_data LIKE ?1 AND lower(_data)=lower(?1) AND format=12289"

    .line 4015
    .local v7, selection:Ljava/lang/String;
    :goto_2
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v18, v8, v4

    .line 4016
    .local v8, selargs:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 4017
    const-string v5, "files"

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sIdOnlyColumn:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 4020
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_4

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_6

    .line 4022
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->insertDirectory(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v15

    .line 4032
    .local v15, id:J
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4035
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 4008
    .end local v7           #selection:Ljava/lang/String;
    .end local v8           #selargs:[Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v15           #id:J
    :cond_5
    const-string v7, "_data=?"

    goto :goto_2

    .line 4025
    .restart local v7       #selection:Ljava/lang/String;
    .restart local v8       #selargs:[Ljava/lang/String;
    .restart local v12       #c:Landroid/database/Cursor;
    :cond_6
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_7

    .line 4026
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "more than one match for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4028
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4029
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v15

    .restart local v15       #id:J
    goto :goto_3

    .line 4035
    .end local v15           #id:J
    :catchall_0
    move-exception v4

    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v4

    .line 4038
    .end local v7           #selection:Ljava/lang/String;
    .end local v8           #selargs:[Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #cid:Ljava/lang/Long;
    .end local v14           #i:I
    .end local v18           #parentPath:Ljava/lang/String;
    :cond_9
    const-wide/16 v15, 0x0

    goto/16 :goto_1
.end method

.method private static getSecGenre(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 7952
    .line 7954
    if-nez p0, :cond_2

    .line 7955
    const-string v0, "<unknown>"

    .line 7957
    :goto_0
    sget-object v1, Lcom/android/providers/media/MediaProvider;->mID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7958
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->initID3toSecGenreHashMap()V

    .line 7961
    :cond_0
    if-eqz p0, :cond_1

    sget-object v1, Lcom/android/providers/media/MediaProvider;->mID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7962
    sget-object v0, Lcom/android/providers/media/MediaProvider;->mID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7965
    :cond_1
    return-object v0

    :cond_2
    move-object v0, p0

    goto :goto_0
.end method

.method private getSimilarPersons(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 7416
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 7417
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 7418
    .local v0, faceId:I
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mGetSimilarPersonsThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mGetSimilarPersonsThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7420
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mGetSimilarPersonsThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7426
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/providers/media/MediaProvider$9;

    const-string v3, "getSimilarPersons"

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/android/providers/media/MediaProvider$9;-><init>(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;Landroid/net/Uri;I)V

    iput-object v2, p0, Lcom/android/providers/media/MediaProvider;->mGetSimilarPersonsThread:Ljava/lang/Thread;

    .line 7448
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mGetSimilarPersonsThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 7449
    return-void

    .line 7421
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getStorageId(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 4043
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 4044
    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    aget-object v2, v3, v0

    .line 4045
    .local v2, test:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4046
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 4047
    .local v1, length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1

    .line 4048
    :cond_0
    invoke-static {v0}, Landroid/mtp/MtpStorage;->getStorageId(I)I

    move-result v3

    .line 4053
    .end local v1           #length:I
    .end local v2           #test:Ljava/lang/String;
    :goto_1
    return v3

    .line 4043
    .restart local v2       #test:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4053
    .end local v2           #test:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/mtp/MtpStorage;->getStorageId(I)I

    move-result v3

    goto :goto_1
.end method

.method private getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x5

    const/4 v2, 0x3

    .line 5020
    const/4 v0, 0x0

    .line 5021
    sparse-switch p2, :sswitch_data_0

    .line 5138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown or unsupported URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5023
    :sswitch_0
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5024
    const-string v0, "media_type=1"

    .line 5143
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 5152
    :goto_1
    return-void

    .line 5028
    :sswitch_1
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5033
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5035
    :sswitch_3
    const-string v1, "thumbnails"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_0

    .line 5039
    :sswitch_4
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5040
    const-string v0, "media_type=2"

    goto :goto_0

    .line 5044
    :sswitch_5
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5049
    :sswitch_6
    const-string v0, "audio_genres"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5054
    :sswitch_7
    const-string v0, "audio_genres"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND genre_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5060
    :sswitch_8
    const-string v0, "audio_playlists"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5065
    :sswitch_9
    const-string v0, "audio_playlists"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND playlists_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5071
    :sswitch_a
    const-string v1, "audio_genres"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 5075
    :sswitch_b
    const-string v0, "audio_genres"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5080
    :sswitch_c
    const-string v0, "audio_genres"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "genre_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5085
    :sswitch_d
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5086
    const-string v0, "media_type=4"

    goto/16 :goto_0

    .line 5090
    :sswitch_e
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5095
    :sswitch_f
    const-string v0, "audio_playlists_map"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5100
    :sswitch_10
    const-string v0, "audio_playlists_map"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND _id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5106
    :sswitch_11
    const-string v0, "album_art"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5111
    :sswitch_12
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5112
    const-string v0, "media_type=3"

    goto/16 :goto_0

    .line 5116
    :sswitch_13
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5121
    :sswitch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5123
    :sswitch_15
    const-string v1, "videothumbnails"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 5128
    :sswitch_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5131
    :sswitch_17
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 5134
    :sswitch_18
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5147
    :cond_0
    iput-object p3, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 5150
    :cond_1
    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 5021
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_9
        0x6a -> :sswitch_a
        0x6b -> :sswitch_b
        0x6c -> :sswitch_c
        0x6e -> :sswitch_d
        0x6f -> :sswitch_e
        0x70 -> :sswitch_f
        0x71 -> :sswitch_10
        0x78 -> :sswitch_11
        0xc8 -> :sswitch_12
        0xc9 -> :sswitch_13
        0xca -> :sswitch_15
        0xcb -> :sswitch_14
        0x2bc -> :sswitch_17
        0x2bd -> :sswitch_16
        0x2be -> :sswitch_17
        0x2bf -> :sswitch_16
        0x1771 -> :sswitch_18
    .end sparse-switch
.end method

.method private getThumb(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "helper"
    .parameter "db"
    .parameter "path"
    .parameter "album_id"
    .parameter "albumart_uri"

    .prologue
    .line 6525
    new-instance v0, Lcom/android/providers/media/MediaProvider$ThumbData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/media/MediaProvider$ThumbData;-><init>(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$1;)V

    .line 6526
    .local v0, d:Lcom/android/providers/media/MediaProvider$ThumbData;
    iput-object p1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 6527
    iput-object p2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 6528
    iput-object p3, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    .line 6529
    iput-wide p4, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    .line 6530
    iput-object p6, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    .line 6531
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method private hidePath(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4848
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4849
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4850
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4851
    const-string v1, "media_type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4852
    const-string v1, "files"

    const-string v2, "_data LIKE ? AND lower(substr(_data,1,?))=lower(?)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4858
    iget v1, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 4859
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4860
    const-string v1, "content://media/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4861
    return-void

    .line 4849
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method private static initID3toSecGenreHashMap()V
    .locals 4

    .prologue
    .line 7946
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/providers/media/MediaProvider;->ID3_GENRES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 7947
    sget-object v1, Lcom/android/providers/media/MediaProvider;->mID3ToSecGenreMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/providers/media/MediaProvider;->ID3_GENRES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/providers/media/MediaProvider;->ID3_TO_SEC_GENRES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7946
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7949
    :cond_0
    return-void
.end method

.method private insertDirectory(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 9
    .parameter "helper"
    .parameter "db"
    .parameter "path"

    .prologue
    .line 3968
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3969
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "format"

    const/16 v5, 0x3001

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3970
    const-string v4, "_data"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3971
    const-string v4, "parent"

    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaProvider;->getParent(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3972
    const-string v4, "storage_id"

    invoke-direct {p0, p3}, Lcom/android/providers/media/MediaProvider;->getStorageId(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3973
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3974
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3975
    const-string v4, "date_modified"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3977
    :cond_0
    iget v4, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 3978
    const-string v4, "files"

    const-string v5, "date_modified"

    invoke-virtual {p2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 3979
    .local v1, rowId:J
    invoke-direct {p0, v1, v2}, Lcom/android/providers/media/MediaProvider;->sendObjectAdded(J)V

    .line 3980
    return-wide v1
.end method

.method private insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZLjava/util/ArrayList;)J
    .locals 27
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/providers/media/MediaProvider$DatabaseHelper;",
            "Landroid/net/Uri;",
            "Landroid/content/ContentValues;",
            "IZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 4058
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 4059
    const/4 v2, 0x0

    .line 4061
    packed-switch p4, :pswitch_data_0

    .line 4215
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 4216
    new-instance v2, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4219
    :cond_1
    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4220
    if-eqz v8, :cond_2

    .line 4221
    invoke-static {v8, v2}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4223
    :cond_2
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4225
    const-wide/16 v5, 0x0

    .line 4226
    const-string v3, "media_scanner_new_object_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 4228
    if-eqz v3, :cond_23

    .line 4229
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v5, v3

    .line 4230
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4231
    const-string v2, "media_scanner_new_object_id"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move-wide/from16 v25, v5

    move-object v5, v3

    move-wide/from16 v2, v25

    .line 4234
    :goto_1
    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4235
    if-nez v6, :cond_3

    if-eqz v8, :cond_3

    .line 4236
    invoke-static {v8}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4238
    :cond_3
    const-string v7, "title"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4240
    const-string v6, "mime_type"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4241
    const-string v7, "format"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 4242
    if-nez v7, :cond_15

    const/4 v7, 0x0

    .line 4243
    :goto_2
    if-nez v7, :cond_4

    .line 4244
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 4246
    const/4 v9, 0x4

    move/from16 v0, p4

    if-ne v0, v9, :cond_16

    .line 4247
    const-string v8, "format"

    const v9, 0xba05

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4249
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/Playlists/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4251
    const-string v9, "_data"

    invoke-virtual {v5, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4252
    const-string v9, "parent"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lcom/android/providers/media/MediaProvider;->getParent(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4260
    :cond_4
    :goto_3
    if-eqz v7, :cond_5

    .line 4261
    const-string v9, "format"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4262
    if-nez v6, :cond_5

    .line 4263
    invoke-static {v7}, Landroid/media/MediaFile;->getMimeTypeForFormatCode(I)Ljava/lang/String;

    move-result-object v6

    .line 4267
    :cond_5
    if-nez v6, :cond_6

    if-eqz v8, :cond_6

    .line 4268
    invoke-static {v8}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4270
    :cond_6
    if-eqz v6, :cond_7

    .line 4271
    const-string v9, "mime_type"

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4273
    if-nez p4, :cond_7

    invoke-static {v8}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 4274
    invoke-static {v6}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v6

    .line 4275
    invoke-static {v6}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 4276
    const/16 p4, 0x2

    .line 4286
    :cond_7
    :goto_4
    const-string v6, "media_type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4288
    const-wide/16 v9, 0x0

    cmp-long v6, v2, v9

    if-nez v6, :cond_22

    .line 4289
    const/4 v2, 0x4

    move/from16 v0, p4

    if-ne v0, v2, :cond_1b

    .line 4290
    const-string v2, "name"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4291
    if-nez v2, :cond_1c

    if-nez v8, :cond_1c

    .line 4293
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no name was provided when inserting abstract playlist"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4063
    :pswitch_0
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const-string v3, ".jpg"

    const-string v5, "DCIM/Camera"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1, v3, v5}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 4065
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4066
    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4067
    const-string v5, "_display_name"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 4068
    invoke-static {v3, v2}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4070
    :cond_8
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->computeTakenTime(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 4080
    :pswitch_1
    new-instance v24, Landroid/content/ContentValues;

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4082
    const-string v2, "album_artist"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4083
    const-string v2, "compilation"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4084
    const-string v2, "compilation"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4088
    const-string v2, "artist"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 4089
    if-nez v2, :cond_c

    const-string v8, ""

    .line 4090
    :goto_5
    const-string v2, "artist"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4092
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 4093
    const-string v2, "_data"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4095
    monitor-enter v13

    .line 4096
    :try_start_0
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 4097
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4098
    if-nez v2, :cond_d

    .line 4099
    const-string v5, "artists"

    const-string v6, "artist_key"

    const-string v7, "artist"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v9, v8

    move-object/from16 v14, p2

    invoke-direct/range {v2 .. v14}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v2

    move-wide v5, v2

    .line 4109
    :goto_6
    const-string v2, "album"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 4110
    if-nez v2, :cond_e

    const-string v17, ""

    .line 4111
    :goto_7
    const-string v2, "album"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4113
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    move-object/from16 v22, v0

    .line 4114
    const/16 v20, 0x0

    .line 4116
    monitor-enter v22

    .line 4117
    if-eqz v15, :cond_f

    .line 4118
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v20

    .line 4128
    :cond_9
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 4129
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 4130
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4131
    if-nez v2, :cond_11

    .line 4132
    const-string v14, "albums"

    const-string v15, "album_key"

    const-string v16, "album"

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v4

    move-object/from16 v19, v10

    move-object/from16 v21, v8

    move-object/from16 v23, p2

    invoke-direct/range {v11 .. v23}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v2

    .line 4139
    :goto_9
    const-string v7, "artist_id"

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4140
    const-string v5, "album_id"

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4141
    const-string v2, "title"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4142
    if-nez v2, :cond_12

    const-string v2, ""

    .line 4147
    :goto_a
    const-string v3, "title_key"

    invoke-static {v2}, Lcom/android/providers/media/SecDatabaseUtils;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4152
    const-string v3, "title"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4153
    const-string v3, "title"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4155
    const-string v2, "_data"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4159
    const-string v2, "composer"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4160
    const-string v3, "composer"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4161
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_13

    .line 4163
    :goto_b
    const-string v3, "composer"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4169
    const-string v2, "genre_name"

    const-string v3, "<unknown>"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4172
    const-string v2, "year"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4173
    const/4 v2, 0x0

    .line 4174
    if-eqz v3, :cond_a

    .line 4175
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4176
    :cond_a
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 4177
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_b

    .line 4178
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4179
    :cond_b
    const-string v5, "year_name"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x76c

    if-lt v6, v7, :cond_14

    if-eqz v2, :cond_14

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    :goto_c
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4184
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->updateSoundField(Landroid/content/ContentValues;)V

    .line 4186
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->updateRecordFile(Landroid/content/ContentValues;)V

    .line 4190
    sget-boolean v2, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v2, :cond_24

    .line 4191
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->convertOrgin2PinyinForSort(Landroid/content/ContentValues;)V

    move-object/from16 v2, v24

    goto/16 :goto_0

    .line 4089
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 4097
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 4103
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v5, v2

    goto/16 :goto_6

    .line 4110
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_7

    .line 4119
    :cond_f
    if-eqz v16, :cond_10

    :try_start_3
    const-string v2, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 4126
    :cond_10
    const/4 v2, 0x0

    const/16 v3, 0x2f

    invoke-virtual {v10, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v20

    goto/16 :goto_8

    .line 4130
    :catchall_1
    move-exception v2

    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 4136
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_9

    .line 4142
    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 4161
    :cond_13
    const-string v2, "<unknown>"

    goto/16 :goto_b

    .line 4179
    :cond_14
    const-string v3, "<unknown>"

    goto :goto_c

    .line 4200
    :pswitch_2
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const-string v3, ".3gp"

    const-string v5, "video"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1, v3, v5}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 4201
    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4202
    invoke-static {v3, v2}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4203
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->computeTakenTime(Landroid/content/ContentValues;)V

    .line 4206
    sget-boolean v3, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v3, :cond_0

    .line 4207
    const-string v3, "_display_name"

    const-string v5, "title_pinyin"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 4242
    :cond_15
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto/16 :goto_2

    .line 4254
    :cond_16
    sget-object v9, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v10, "path is empty in insertFile()"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4257
    :cond_17
    invoke-static {v8, v6}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_3

    .line 4277
    :cond_18
    invoke-static {v6}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 4278
    const/16 p4, 0x3

    goto/16 :goto_4

    .line 4279
    :cond_19
    invoke-static {v6}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 4280
    const/16 p4, 0x1

    goto/16 :goto_4

    .line 4281
    :cond_1a
    invoke-static {v6}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4282
    const/16 p4, 0x4

    goto/16 :goto_4

    .line 4297
    :cond_1b
    if-nez v8, :cond_1c

    .line 4300
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no path was provided when inserting new file"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4315
    :cond_1c
    if-eqz v8, :cond_1d

    .line 4316
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4317
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4318
    const-string v3, "date_modified"

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4319
    const-string v3, "_size"

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4323
    :cond_1d
    const-string v2, "parent"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 4324
    if-nez v2, :cond_1e

    .line 4325
    if-eqz v8, :cond_1e

    .line 4326
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lcom/android/providers/media/MediaProvider;->getParent(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    .line 4327
    const-string v6, "parent"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4330
    :cond_1e
    const-string v2, "storage_id"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 4331
    if-nez v2, :cond_1f

    .line 4332
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/providers/media/MediaProvider;->getStorageId(Ljava/lang/String;)I

    move-result v2

    .line 4333
    const-string v3, "storage_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4336
    :cond_1f
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4337
    const-string v2, "files"

    const-string v3, "date_modified"

    invoke-virtual {v4, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 4341
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_20

    if-eqz p5, :cond_20

    .line 4342
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4350
    :cond_20
    :goto_d
    const/16 v4, 0x3001

    if-ne v7, v4, :cond_21

    .line 4351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4354
    :cond_21
    return-wide v2

    .line 4346
    :cond_22
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    iput v6, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 4347
    const-string v6, "files"

    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v4, v6, v5, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_d

    :cond_23
    move-wide/from16 v25, v5

    move-object v5, v2

    move-wide/from16 v2, v25

    goto/16 :goto_1

    :cond_24
    move-object/from16 v2, v24

    goto/16 :goto_0

    .line 4061
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private insertInternal(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/util/ArrayList;)Landroid/net/Uri;
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 4506
    const/16 v1, 0x1f4

    move/from16 v0, p2

    if-ne v0, v1, :cond_2

    .line 4507
    const-string v1, "volume"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    .line 4508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/audio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .line 4510
    if-nez v1, :cond_1

    .line 4511
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no database for scanned volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4515
    :goto_0
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    .line 4816
    :cond_0
    :goto_1
    return-object v1

    .line 4513
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    goto :goto_0

    .line 4518
    :cond_2
    const/4 v2, 0x0

    .line 4519
    const/4 v1, 0x0

    .line 4520
    if-eqz p3, :cond_13

    .line 4521
    const-string v1, "genre"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4522
    const-string v1, "genre"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4523
    const-string v1, "_data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v8, v2

    .line 4527
    :goto_2
    const/4 v9, 0x0

    .line 4528
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v2

    .line 4529
    if-nez v2, :cond_5

    const/16 v1, 0x12c

    move/from16 v0, p2

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2c1

    move/from16 v0, p2

    if-eq v0, v1, :cond_5

    .line 4531
    sget-boolean v1, Lcom/android/providers/media/MediaProvider;->FLAG_ADD_DB4VAS:Z

    if-eqz v1, :cond_4

    .line 4532
    const/4 v1, 0x0

    .line 4533
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 4534
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "lgtvas"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4536
    :cond_3
    if-nez v1, :cond_5

    .line 4537
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4542
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4546
    :cond_5
    const/16 v1, 0x12c

    move/from16 v0, p2

    if-eq v0, v1, :cond_6

    const/16 v1, 0x2c1

    move/from16 v0, p2

    if-ne v0, v1, :cond_7

    :cond_6
    const/4 v1, 0x0

    move-object v13, v1

    .line 4549
    :goto_3
    sparse-switch p2, :sswitch_data_0

    .line 4809
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4546
    :cond_7
    invoke-virtual {v2}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v13, v1

    goto :goto_3

    .line 4551
    :sswitch_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZLjava/util/ArrayList;)J

    move-result-wide v3

    .line 4553
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_f

    .line 4554
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    .line 4812
    :cond_8
    :goto_4
    if-eqz v11, :cond_0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/.nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4814
    invoke-direct {p0, v2, v13, v11}, Lcom/android/providers/media/MediaProvider;->processNewNoMediaPath(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4562
    :sswitch_1
    iget-boolean v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const-string v3, ".jpg"

    const-string v4, "DCIM/.thumbnails"

    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 4564
    iget v3, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4565
    const-string v3, "thumbnails"

    const-string v4, "name"

    invoke-virtual {v13, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 4566
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_f

    .line 4567
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto :goto_4

    :sswitch_2
    move-object v1, v9

    .line 4575
    goto :goto_4

    :sswitch_3
    move-object v1, v9

    .line 4578
    goto :goto_4

    .line 4582
    :sswitch_4
    const-string v1, "objects"

    const-string v3, "name"

    move-object/from16 v0, p3

    invoke-virtual {v13, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 4583
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_f

    .line 4584
    sget-object v1, Lcom/android/providers/media/SmartSortColumns;->SMART_SORT_REQUEST_URI:Landroid/net/Uri;

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto :goto_4

    .line 4592
    :sswitch_5
    iget-boolean v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const-string v3, ".jpg"

    const-string v4, "DCIM/.thumbnails"

    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 4594
    iget v3, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4595
    const-string v3, "videothumbnails"

    const-string v4, "name"

    invoke-virtual {v13, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 4596
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_f

    .line 4597
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Video$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4604
    :sswitch_6
    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZLjava/util/ArrayList;)J

    move-result-wide v3

    .line 4606
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_f

    .line 4607
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 4608
    if-eqz v8, :cond_12

    .line 4609
    invoke-direct {p0, v3, v4, v8}, Lcom/android/providers/media/MediaProvider;->updateGenre(JLjava/lang/String;)V

    move-object v1, v9

    goto/16 :goto_4

    .line 4616
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 4617
    new-instance v3, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4618
    const-string v4, "audio_id"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4619
    iget v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4620
    const-string v1, "audio_genres_map"

    const-string v4, "genre_id"

    invoke-virtual {v13, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 4621
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_f

    .line 4622
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4628
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 4629
    new-instance v3, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4630
    const-string v4, "audio_id"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4631
    iget v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4632
    const-string v1, "audio_playlists_map"

    const-string v4, "playlist_id"

    invoke-virtual {v13, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 4634
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_f

    .line 4635
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4641
    :sswitch_9
    iget v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4642
    const-string v1, "audio_genres"

    const-string v3, "audio_id"

    move-object/from16 v0, p3

    invoke-virtual {v13, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 4643
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_f

    .line 4644
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4650
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4651
    new-instance v4, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4652
    const-string v1, "genre_id"

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4653
    iget v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4654
    const-string v1, "audio_genres_map"

    const-string v5, "genre_id"

    invoke-virtual {v13, v1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 4655
    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_11

    .line 4656
    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 4661
    :goto_5
    const-string v5, "audio_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 4663
    const-string v12, "<unknown>"

    .line 4664
    const-string v4, "audio_genres"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "name"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v13

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 4666
    if-eqz v4, :cond_10

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4667
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4670
    :goto_6
    if-eqz v4, :cond_9

    .line 4671
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4673
    :cond_9
    if-eqz v3, :cond_8

    .line 4675
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->getSecGenre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4677
    const-string v4, ""

    .line 4680
    sget-boolean v4, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v4, :cond_a

    .line 4681
    invoke-direct {p0, v3}, Lcom/android/providers/media/MediaProvider;->computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4684
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const/4 v3, 0x1

    aput-object v5, v4, v3

    .line 4687
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "UPDATE files SET genre_name = ?, genre_name_pinyin = ? where _id = %d;"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4699
    :goto_7
    invoke-virtual {v13, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 4691
    :cond_a
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 4694
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "\tUPDATE files SET genre_name = ? where _id = %d;"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 4706
    :sswitch_b
    new-instance v4, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4707
    const-string v1, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4710
    sget-boolean v1, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v1, :cond_b

    .line 4711
    const-string v1, "name"

    const-string v3, "name_pinyin"

    invoke-direct {p0, v4, v1, v3}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4715
    :cond_b
    const/4 v5, 0x4

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZLjava/util/ArrayList;)J

    move-result-wide v3

    .line 4717
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_f

    .line 4718
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4725
    :sswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 4726
    new-instance v3, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4727
    const-string v4, "playlist_id"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4728
    iget v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4729
    const-string v1, "audio_playlists_map"

    const-string v4, "playlist_id"

    invoke-virtual {v13, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 4730
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_f

    .line 4731
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4737
    :sswitch_d
    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZLjava/util/ArrayList;)J

    move-result-wide v3

    .line 4739
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_f

    .line 4740
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4747
    :sswitch_e
    iget-boolean v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-eqz v1, :cond_c

    .line 4748
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "no internal album art allowed"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4752
    :cond_c
    const/4 v1, 0x0

    :try_start_0
    const-string v3, ""

    const-string v4, "Android/data/com.android.providers.media/albumthumbs"

    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 4757
    :goto_8
    iget v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4758
    const-string v1, "album_art"

    const-string v3, "_data"

    move-object/from16 v0, p3

    invoke-virtual {v13, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 4759
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_f

    .line 4760
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4767
    :sswitch_f
    const-string v1, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4768
    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4769
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4770
    invoke-direct {p0, v1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v2

    .line 4771
    if-nez v2, :cond_d

    .line 4772
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no database for attached volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4774
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    goto/16 :goto_1

    .line 4781
    :sswitch_10
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v3

    .line 4782
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    if-nez v1, :cond_e

    .line 4783
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4785
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/providers/media/MtpService;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 4788
    :cond_e
    monitor-exit v3

    move-object v1, v9

    .line 4789
    goto/16 :goto_4

    .line 4788
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4792
    :sswitch_11
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZLjava/util/ArrayList;)J

    move-result-wide v3

    .line 4794
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_f

    .line 4795
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v3, v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4801
    :sswitch_12
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZLjava/util/ArrayList;)J

    move-result-wide v3

    .line 4803
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_f

    .line 4804
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v3, v4}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4753
    :catch_0
    move-exception v1

    goto/16 :goto_8

    :cond_f
    move-object v1, v9

    goto/16 :goto_4

    :cond_10
    move-object v3, v12

    goto/16 :goto_6

    :cond_11
    move-object v1, v9

    goto/16 :goto_5

    :cond_12
    move-object v1, v9

    goto/16 :goto_4

    :cond_13
    move-object v11, v1

    move-object v8, v2

    goto/16 :goto_2

    .line 4549
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x64 -> :sswitch_6
        0x66 -> :sswitch_7
        0x68 -> :sswitch_8
        0x6a -> :sswitch_9
        0x6c -> :sswitch_a
        0x6e -> :sswitch_b
        0x6f -> :sswitch_c
        0x70 -> :sswitch_c
        0x77 -> :sswitch_e
        0xc8 -> :sswitch_d
        0xca -> :sswitch_5
        0x12c -> :sswitch_f
        0x2bc -> :sswitch_11
        0x2be -> :sswitch_12
        0x2c1 -> :sswitch_10
        0x1388 -> :sswitch_2
        0x1389 -> :sswitch_3
        0x138a -> :sswitch_4
    .end sparse-switch
.end method

.method static isInternalMediaDatabaseName(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 6883
    const-string v0, "internal.db"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6884
    const/4 v0, 0x1

    .line 6886
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isMediaDatabaseName(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, 0x1

    .line 6870
    const-string v1, "internal.db"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6879
    :cond_0
    :goto_0
    return v0

    .line 6873
    :cond_1
    const-string v1, "external.db"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6876
    const-string v1, "external-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6879
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRecordFile(Landroid/content/ContentValues;)Z
    .locals 2
    .parameter

    .prologue
    .line 6054
    const-string v0, "mime_type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6055
    const-string v0, "mime_type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6056
    if-eqz v0, :cond_1

    .line 6063
    const-string v1, "audio/mp4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/3gpp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/amr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/amr-wb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6065
    :cond_0
    const/4 v0, 0x1

    .line 6069
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSoundsDir(Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "values"

    .prologue
    .line 6085
    const-string v1, "_data"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6086
    const-string v1, "_data"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6087
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 6088
    sget-object v1, Lcom/android/providers/media/MediaProvider;->SOUNDS_PATH_INTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SOUNDS_PATH_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6089
    :cond_0
    const/4 v1, 0x1

    .line 6093
    .end local v0           #path:Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static logToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .parameter "db"
    .parameter "message"

    .prologue
    .line 2523
    if-nez p1, :cond_0

    .line 2531
    :goto_0
    return-void

    .line 2525
    :cond_0
    const-string v0, "INSERT INTO log (time, message) VALUES (strftime(\'%Y-%m-%d %H:%M:%S.%f\',\'now\',\'localtime\'),?);"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2528
    const-string v0, "DELETE FROM log WHERE rowid IN (SELECT rowid FROM log ORDER BY time DESC LIMIT 50000,-1);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private makeThumbAsync(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 4
    .parameter "helper"
    .parameter "db"
    .parameter "path"
    .parameter "album_id"

    .prologue
    .line 6325
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    monitor-enter v3

    .line 6326
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    invoke-virtual {v2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6329
    monitor-exit v3

    .line 6354
    :goto_0
    return-void

    .line 6332
    :cond_0
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    invoke-virtual {v2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6333
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6335
    new-instance v0, Lcom/android/providers/media/MediaProvider$ThumbData;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/providers/media/MediaProvider$ThumbData;-><init>(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$1;)V

    .line 6336
    .local v0, d:Lcom/android/providers/media/MediaProvider$ThumbData;
    iput-object p1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 6337
    iput-object p2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 6338
    iput-object p3, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    .line 6339
    iput-wide p4, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    .line 6340
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mAlbumArtBaseUri:Landroid/net/Uri;

    invoke-static {v2, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    .line 6347
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    monitor-enter v3

    .line 6348
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6349
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6352
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 6353
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 6333
    .end local v0           #d:Lcom/android/providers/media/MediaProvider$ThumbData;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 6349
    .restart local v0       #d:Lcom/android/providers/media/MediaProvider$ThumbData;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 6535
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/providers/media/MediaProvider;->getCompressedAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v9

    .line 6537
    if-nez v9, :cond_1

    .line 6621
    :cond_0
    :goto_0
    return-object v6

    .line 6546
    :cond_1
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6547
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6548
    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 6549
    const/4 v3, 0x0

    array-length v4, v9

    invoke-static {v9, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6552
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 6553
    const/high16 v4, 0x7f03

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 6554
    :goto_1
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v4, v3, :cond_2

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v4, v3, :cond_4

    .line 6555
    :cond_2
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6556
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 6557
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6578
    :catch_0
    move-exception v0

    move-object v2, v6

    :goto_2
    move v7, v1

    move-object v8, v2

    .line 6581
    :goto_3
    if-eqz v7, :cond_3

    if-eqz v8, :cond_0

    .line 6585
    :cond_3
    iget-object v0, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    if-nez v0, :cond_6

    .line 6589
    :try_start_1
    const-string v0, "albumthumb"

    invoke-static {v9, v0}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v6

    goto :goto_0

    .line 6560
    :cond_4
    :try_start_2
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v3, v1, :cond_5

    move-object v1, v6

    :goto_4
    move v7, v0

    move-object v8, v1

    .line 6579
    goto :goto_3

    .line 6566
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6567
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 6568
    const/4 v0, 0x0

    array-length v3, v9

    invoke-static {v9, v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 6570
    if-eqz v2, :cond_b

    :try_start_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_b

    .line 6571
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6572
    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_b

    .line 6573
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 6574
    goto :goto_4

    .line 6597
    :cond_6
    sget-object v10, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    monitor-enter v10

    .line 6598
    :try_start_4
    iget-object v0, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6600
    :try_start_5
    iget-object v1, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    iget-object v2, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v3, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    iget-object v5, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->getAlbumArtOutputUri(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;JLandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 6602
    if-eqz v0, :cond_8

    .line 6603
    invoke-direct {p0, v7, v0, v9, v8}, Lcom/android/providers/media/MediaProvider;->writeAlbumArt(ZLandroid/net/Uri;[BLandroid/graphics/Bitmap;)V

    .line 6604
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/providers/media/MediaProvider;->MEDIA_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 6605
    const-string v1, "r"

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/media/MediaProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 6606
    iget-object v1, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_2

    .line 6614
    :try_start_6
    iget-object v1, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6615
    if-eqz v8, :cond_7

    .line 6616
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    monitor-exit v10

    move-object v6, v0

    goto/16 :goto_0

    .line 6614
    :cond_8
    iget-object v0, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6615
    if-eqz v8, :cond_9

    .line 6616
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 6619
    :cond_9
    :goto_5
    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 6609
    :catch_1
    move-exception v0

    .line 6614
    :try_start_7
    iget-object v0, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6615
    if-eqz v8, :cond_9

    .line 6616
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    .line 6611
    :catch_2
    move-exception v0

    .line 6614
    iget-object v0, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6615
    if-eqz v8, :cond_9

    .line 6616
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    .line 6614
    :catchall_1
    move-exception v0

    iget-object v1, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6615
    if-eqz v8, :cond_a

    .line 6616
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 6590
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 6578
    :catch_4
    move-exception v0

    goto/16 :goto_2

    :cond_b
    move v0, v1

    move-object v1, v2

    goto/16 :goto_4
.end method

.method private matchThumbRequest(Lcom/android/providers/media/MediaThumbRequest;IJJZ)Z
    .locals 7
    .parameter "req"
    .parameter "pid"
    .parameter "id"
    .parameter "gid"
    .parameter "isVideo"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2794
    cmp-long v4, p3, v5

    if-nez v4, :cond_2

    move v1, v2

    .line 2795
    .local v1, cancelAllOrigId:Z
    :goto_0
    cmp-long v4, p5, v5

    if-nez v4, :cond_3

    move v0, v2

    .line 2796
    .local v0, cancelAllGroupId:Z
    :goto_1
    iget v4, p1, Lcom/android/providers/media/MediaThumbRequest;->mCallingPid:I

    if-ne v4, p2, :cond_4

    if-nez v0, :cond_0

    iget-wide v4, p1, Lcom/android/providers/media/MediaThumbRequest;->mGroupId:J

    cmp-long v4, v4, p5

    if-nez v4, :cond_4

    :cond_0
    if-nez v1, :cond_1

    iget-wide v4, p1, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    cmp-long v4, v4, p3

    if-nez v4, :cond_4

    :cond_1
    iget-boolean v4, p1, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-ne v4, p7, :cond_4

    :goto_2
    return v2

    .end local v0           #cancelAllGroupId:Z
    .end local v1           #cancelAllOrigId:Z
    :cond_2
    move v1, v3

    .line 2794
    goto :goto_0

    .restart local v1       #cancelAllOrigId:Z
    :cond_3
    move v0, v3

    .line 2795
    goto :goto_1

    .restart local v0       #cancelAllGroupId:Z
    :cond_4
    move v2, v3

    .line 2796
    goto :goto_2
.end method

.method private movePlaylistEntry(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;JII)I
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6099
    move/from16 v0, p5

    move/from16 v1, p6

    if-ne v0, v1, :cond_0

    .line 6100
    const/4 v2, 0x0

    .line 6147
    :goto_0
    return v2

    .line 6102
    :cond_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6105
    :try_start_0
    iget v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 6106
    const-string v3, "audio_playlists_map"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "play_order"

    aput-object v5, v4, v2

    const-string v5, "playlist_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "play_order"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ",1"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6110
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6111
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 6112
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 6113
    const-string v3, "audio_playlists_map"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "play_order"

    aput-object v5, v4, v2

    const-string v5, "playlist_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "play_order"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ",1"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6117
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6118
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 6119
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 6120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE audio_playlists_map SET play_order=-1 WHERE play_order="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND playlist_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6126
    move/from16 v0, p5

    move/from16 v1, p6

    if-ge v0, v1, :cond_1

    .line 6127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE audio_playlists_map SET play_order=play_order-1 WHERE play_order<="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND play_order>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND playlist_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6131
    sub-int v2, p6, p5

    add-int/lit8 v2, v2, 0x1

    .line 6139
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE audio_playlists_map SET play_order="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE play_order=-1 AND playlist_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6141
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 6142
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 6144
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6147
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 6133
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE audio_playlists_map SET play_order=play_order+1 WHERE play_order>="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND play_order<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND playlist_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6137
    sub-int v2, p5, p6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6147
    :catchall_0
    move-exception v2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private notifyMtp(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3923
    .local p1, rowIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3924
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3925
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/providers/media/MediaProvider;->sendObjectAdded(J)V

    .line 3924
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3927
    :cond_0
    return-void
.end method

.method private openFileAndEnforcePathPermissionsHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 6271
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->modeToMode(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v2

    .line 6272
    const/high16 v0, 0x2000

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 6274
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->queryForDataFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 6277
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 6282
    sget-object v4, Lcom/android/providers/media/MediaProvider;->sExternalPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6283
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "External path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6286
    if-eqz v0, :cond_0

    .line 6287
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "External path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6293
    :cond_0
    const/high16 v0, 0x1000

    if-ne v2, v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6294
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v4

    sget-object v5, Lcom/android/providers/media/MediaProvider;->sExternalPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6296
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    move-object v1, v0

    .line 6306
    :cond_1
    :goto_2
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 6272
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 6278
    :catch_0
    move-exception v0

    .line 6279
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resolve canonical path for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 6301
    :cond_3
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sCachePath:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6302
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "android.permission.ACCESS_CACHE_FILESYSTEM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cache path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 15
    .parameter "db"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 3930
    new-instance v4, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v13, "audio_playlists_map"

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v13}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3932
    .local v4, helper:Landroid/database/DatabaseUtils$InsertHelper;
    const-string v13, "audio_id"

    invoke-virtual {v4, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 3933
    .local v3, audioidcolidx:I
    const-string v13, "playlist_id"

    invoke-virtual {v4, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3934
    .local v10, playlistididx:I
    const-string v13, "play_order"

    invoke-virtual {v4, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 3935
    .local v12, playorderidx:I
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x3

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 3937
    .local v8, playlistId:J
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3938
    const/4 v7, 0x0

    .line 3940
    .local v7, numInserted:I
    :try_start_0
    move-object/from16 v0, p3

    array-length v6, v0

    .line 3941
    .local v6, len:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 3942
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 3946
    aget-object v13, p3, v5

    const-string v14, "audio_id"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 3948
    .local v1, audioid:J
    invoke-virtual {v4, v3, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 3949
    invoke-virtual {v4, v10, v8, v9}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 3951
    aget-object v13, p3, v5

    const-string v14, "play_order"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 3953
    .local v11, playorder:I
    invoke-virtual {v4, v12, v11}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 3954
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    .line 3941
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3956
    .end local v1           #audioid:J
    .end local v11           #playorder:I
    :cond_0
    move v7, v6

    .line 3957
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3959
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3960
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 3962
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3963
    return v7

    .line 3959
    .end local v5           #i:I
    .end local v6           #len:I
    :catchall_0
    move-exception v13

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3960
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    throw v13
.end method

.method private processNewNoMediaPath(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 7
    .parameter "helper"
    .parameter "db"
    .parameter "path"

    .prologue
    .line 4828
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4829
    .local v2, nomedia:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4830
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaProvider;->hidePath(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 4845
    :goto_0
    return-void

    .line 4834
    :cond_0
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/providers/media/MediaProvider$7;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider$7;-><init>(Lcom/android/providers/media/MediaProvider;Ljava/io/File;Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private processRemovedNoMediaPath(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 4871
    sget-object v2, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4872
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .line 4876
    .local v1, helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :goto_0
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4877
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/android/providers/media/MediaProvider$ScannerClient;

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, Lcom/android/providers/media/MediaProvider$ScannerClient;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 4878
    return-void

    .line 4874
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_0
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .restart local v1       #helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    goto :goto_0
.end method

.method private queryForDataFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 7
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 6241
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6243
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 6244
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing cursor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6248
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6258
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple items at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6261
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 6250
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6252
    :pswitch_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6253
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 6255
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2804
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2805
    if-eqz p5, :cond_0

    .line 2808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2810
    const/4 v0, 0x1

    .line 2867
    :goto_0
    return v0

    .line 2812
    :cond_0
    const-string v0, "orig_id"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2814
    if-nez v8, :cond_1

    .line 2816
    const/4 v0, 0x1

    goto :goto_0

    .line 2819
    :cond_1
    const-string v0, "1"

    const-string v1, "blocking"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2820
    const-string v1, "1"

    const-string v2, "cancel"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2821
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "thumbnails"

    const-string v5, "media"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2825
    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaProvider;->waitForThumbnailReady(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2826
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v1, "original media doesn\'t exist or it\'s canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    const/4 v0, 0x0

    goto :goto_0

    .line 2828
    :cond_2
    if-eqz v1, :cond_6

    .line 2829
    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2830
    const-string v1, "video"

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 2831
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2836
    :try_start_0
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2837
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 2843
    iget-object v9, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    monitor-enter v9

    .line 2844
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/media/MediaProvider;->matchThumbRequest(Lcom/android/providers/media/MediaThumbRequest;IJJZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2846
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2847
    :try_start_2
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    sget-object v10, Lcom/android/providers/media/MediaThumbRequest$State;->CANCEL:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v10, v0, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 2848
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2849
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2851
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/media/MediaThumbRequest;

    move-object v0, p0

    .line 2852
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/media/MediaProvider;->matchThumbRequest(Lcom/android/providers/media/MediaThumbRequest;IJJZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2853
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2854
    :try_start_4
    sget-object v0, Lcom/android/providers/media/MediaThumbRequest$State;->CANCEL:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v0, v1, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 2855
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2856
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2858
    :try_start_5
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2861
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 2838
    :catch_0
    move-exception v0

    .line 2840
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2849
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2856
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    .line 2861
    :cond_5
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2864
    :cond_6
    if-eqz v8, :cond_7

    .line 2865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2867
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private recomendPesonRequest(Landroid/net/Uri;)V
    .locals 4
    .parameter

    .prologue
    .line 7279
    .line 7281
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 7282
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 7283
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 7284
    const-string v1, "1"

    const-string v3, "cancel"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 7285
    if-eqz v1, :cond_3

    .line 7286
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7287
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 7288
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$RecomendInfo;

    .line 7289
    iget v0, v0, Lcom/android/providers/media/MediaProvider$RecomendInfo;->mFaceId:I

    if-ne v0, v2, :cond_2

    .line 7290
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7294
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 7322
    :cond_1
    :goto_1
    return-void

    .line 7287
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 7296
    :cond_3
    invoke-direct {p0, v2, v0}, Lcom/android/providers/media/MediaProvider;->addKeyface(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7298
    new-instance v1, Lcom/android/providers/media/MediaProvider$RecomendInfo;

    invoke-direct {v1, v2, v0}, Lcom/android/providers/media/MediaProvider$RecomendInfo;-><init>(II)V

    .line 7299
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7300
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7301
    :cond_4
    new-instance v0, Lcom/android/providers/media/MediaProvider$8;

    const-string v1, "recomendPerson"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/providers/media/MediaProvider$8;-><init>(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendThread:Ljava/lang/Thread;

    .line 7319
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private static recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2558
    const-string v0, "DROP VIEW IF EXISTS audio"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2559
    const-string v0, "CREATE VIEW IF NOT EXISTS audio as SELECT * FROM audio_meta LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2562
    return-void
.end method

.method private static recreateSecAudioPlaylistView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter

    .prologue
    .line 2437
    const-string v0, "DROP VIEW IF EXISTS audio_playlists;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW audio_playlists AS SELECT _id,_data,name,date_added,date_modified,mini_thumb_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->PLAYLIST_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM files WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2441
    return-void
.end method

.method private static recreateSecAudioSearchView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2444
    const-string v0, "DROP VIEW IF EXISTS searchhelpertitle"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2445
    const-string v0, "CREATE VIEW IF NOT EXISTS searchhelpertitle AS SELECT * FROM audio WHERE is_music = 1 ORDER BY title_key;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2450
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_0

    .line 2451
    const-string v0, "DROP VIEW IF EXISTS search"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2452
    const-string v0, "CREATE VIEW IF NOT EXISTS search AS SELECT _id,\'artist\' AS mime_type,artist,NULL AS album,NULL AS title,artist AS text1,NULL AS text2,number_of_albums AS data1,number_of_tracks AS data2,artist_key||\' \'||artist_search_key AS match,\'content://media/external/audio/artists/\'||_id AS suggest_intent_data,1 AS grouporder FROM music_artist_info_except_audio WHERE (artist!=\'<unknown>\') UNION ALL SELECT _id,\'album\' AS mime_type,artist,album,NULL AS title,album AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key||\' \'||artist_search_key||\' \'||album_search_key AS match,\'content://media/external/audio/albums/\'||_id AS suggest_intent_data,2 AS grouporder FROM music_album_info WHERE (album!=\'<unknown>\') UNION ALL SELECT searchhelpertitle._id AS _id,mime_type,artist,album,title,title AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key||\' \'||title_key||\' \'||artist_search_key||\' \'||album_search_key||\' \'||title_search_key AS match,\'content://media/external/audio/media/\'||searchhelpertitle._id AS suggest_intent_data,3 AS grouporder FROM searchhelpertitle WHERE (title != \'\') "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2501
    :cond_0
    return-void
.end method

.method private static recreateSecAudioView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter

    .prologue
    .line 2355
    const-string v0, "DROP VIEW IF EXISTS audio_meta;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW audio_meta AS SELECT _id,_data,_display_name,_size,mime_type,date_added,is_drm,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist,is_sound,year_name,genre_name,recently_played,most_played,recently_added_remove_flag,is_favorite,bucket_id,bucket_display_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->AUDIO_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM files WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2360
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2363
    const-string v0, "DROP VIEW IF EXISTS music_album_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2364
    const-string v0, "DROP VIEW IF EXISTS music_audio_order_album_key"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2365
    const-string v0, "DROP VIEW IF EXISTS music_artist_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2367
    const-string v0, "DROP VIEW IF EXISTS music_genres_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2368
    const-string v0, "DROP VIEW IF EXISTS music_folders_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2369
    const-string v0, "DROP VIEW IF EXISTS music_composers_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2370
    const-string v0, "DROP VIEW IF EXISTS music_years_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_album_info AS SELECT audio.album_id AS _id, album, album_key, MIN(year) AS minyear, MAX(year) AS maxyear, artist, artist_id, artist_key, count(*) AS numsongs ,album_art._data AS album_art"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_ALBUM_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE is_music=1 GROUP BY audio.album_id;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_audio_order_album_key AS SELECT audio_meta.artist_id as artist_id, artist, artist_key, album_key, audio_meta.album_id as album_id, is_music, is_sound "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_ARTIST_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "order by album_key desc;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_artist_info AS SELECT artist_id AS _id, artist, artist_key, album_id, COUNT(DISTINCT album_key) AS number_of_albums, COUNT(*) AS number_of_tracks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_ARTIST_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM music_audio_order_album_key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2402
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_0

    .line 2403
    const-string v0, "DROP VIEW IF EXISTS music_artist_info_except_audio"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2404
    const-string v0, "CREATE VIEW IF NOT EXISTS music_artist_info_except_audio AS SELECT artist_id AS _id, artist, artist_key, artist_search_key,COUNT(DISTINCT album_key) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2415
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_genres_view AS SELECT max(_id) AS _id, genre_name, count(_id) AS count, album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_GENRES_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM (SELECT _id, genre_name, album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_GENRES_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta WHERE is_music=1 ORDER BY title_key DESC) GROUP BY genre_name;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2420
    const-string v0, "CREATE VIEW IF NOT EXISTS music_years_view AS SELECT max(_id) AS _id, year, year_name, count(_id) AS count, album_id FROM (SELECT _id, year, year_name, album_id FROM audio_meta WHERE is_music=1 ORDER BY title_key DESC) GROUP BY year_name;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_composers_view AS SELECT max(_id) AS _id, composer, count(_id) AS count, album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_COMPOSERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM (SELECT _id, composer, album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_COMPOSERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta WHERE is_music=1 ORDER BY title_key DESC) GROUP BY composer;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_folders_view AS SELECT max(_id) AS _id, bucket_id, bucket_display_name, album_id, _data, count(_id) AS count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_FOLDERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM (SELECT _id, bucket_id, bucket_display_name, album_id, _data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_FOLDERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta WHERE is_music=1 ORDER BY title_key DESC) GROUP BY bucket_id;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2434
    return-void
.end method

.method private static recreateSecAudioViewByVersion(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2264
    const-string v0, "DROP VIEW IF EXISTS audio_meta;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2266
    const-string v0, "CREATE VIEW audio_meta AS SELECT _id,"

    .line 2267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data,_display_name,_size,mime_type,date_added,is_drm,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist,is_sound,year_name,genre_name,recently_played,most_played,recently_added_remove_flag,is_favorite,bucket_id,bucket_display_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->AUDIO_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2270
    const/16 v1, 0x19b

    if-lt p1, v1, :cond_0

    .line 2271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",recordingtype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2273
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM files WHERE media_type=2;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2275
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2277
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2280
    const-string v0, "DROP VIEW IF EXISTS music_album_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2281
    const-string v0, "DROP VIEW IF EXISTS music_audio_order_album_key"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2282
    const-string v0, "DROP VIEW IF EXISTS music_artist_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2284
    const-string v0, "DROP VIEW IF EXISTS music_genres_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2285
    const-string v0, "DROP VIEW IF EXISTS music_folders_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2286
    const-string v0, "DROP VIEW IF EXISTS music_composers_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2287
    const-string v0, "DROP VIEW IF EXISTS music_years_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_album_info AS SELECT audio.album_id AS _id, album, album_key, MIN(year) AS minyear, MAX(year) AS maxyear, artist, artist_id, artist_key, count(*) AS numsongs ,album_art._data AS album_art"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_ALBUM_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE is_music=1 GROUP BY audio.album_id;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_audio_order_album_key AS SELECT audio_meta.artist_id as artist_id, artist, artist_key, album_key, audio_meta.album_id as album_id, is_music, is_sound "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_ARTIST_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "order by album_key desc;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_artist_info AS SELECT artist_id AS _id, artist, artist_key, album_id, COUNT(DISTINCT album_key) AS number_of_albums, COUNT(*) AS number_of_tracks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_ARTIST_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM music_audio_order_album_key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2319
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_1

    .line 2320
    const-string v0, "DROP VIEW IF EXISTS music_artist_info_except_audio"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2321
    const-string v0, "CREATE VIEW IF NOT EXISTS music_artist_info_except_audio AS SELECT artist_id AS _id, artist, artist_key, artist_search_key,COUNT(DISTINCT album_key) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2332
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_genres_view AS SELECT max(_id) AS _id, genre_name, count(_id) AS count, album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_GENRES_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM (SELECT _id, genre_name, album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_GENRES_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta WHERE is_music=1 ORDER BY title_key DESC) GROUP BY genre_name;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2337
    const-string v0, "CREATE VIEW IF NOT EXISTS music_years_view AS SELECT max(_id) AS _id, year, year_name, count(_id) AS count, album_id FROM (SELECT _id, year, year_name, album_id FROM audio_meta WHERE is_music=1 ORDER BY title_key DESC) GROUP BY year_name;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_composers_view AS SELECT max(_id) AS _id, composer, count(_id) AS count, album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_COMPOSERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM (SELECT _id, composer, album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_COMPOSERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta WHERE is_music=1 ORDER BY title_key DESC) GROUP BY composer;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_folders_view AS SELECT max(_id) AS _id, bucket_id, bucket_display_name, album_id, _data, count(_id) AS count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_FOLDERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM (SELECT _id, bucket_id, bucket_display_name, album_id, _data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_FOLDERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta WHERE is_music=1 ORDER BY title_key DESC) GROUP BY bucket_id;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2351
    return-void
.end method

.method private static recreateSecImageView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2511
    const-string v0, "DROP VIEW IF EXISTS images"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2512
    const-string v0, "CREATE VIEW images AS SELECT _id,_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,width,height,group_id FROM files WHERE media_type=1;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2515
    return-void
.end method

.method private static recreateSecVideoView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter

    .prologue
    .line 2504
    const-string v0, "DROP VIEW IF EXISTS video"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW video AS SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name,bookmark,width,height,resumePos,isPlayed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->VIDEO_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM files WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2508
    return-void
.end method

.method private requestMediaThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/android/providers/media/MediaThumbRequest;
    .locals 11
    .parameter "path"
    .parameter "uri"
    .parameter "priority"
    .parameter "magic"

    .prologue
    .line 4953
    iget-object v10, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    monitor-enter v10

    .line 4954
    const/4 v8, 0x0

    .line 4956
    .local v8, req:Lcom/android/providers/media/MediaThumbRequest;
    :try_start_0
    new-instance v0, Lcom/android/providers/media/MediaThumbRequest;

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/media/MediaThumbRequest;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4958
    .end local v8           #req:Lcom/android/providers/media/MediaThumbRequest;
    .local v0, req:Lcom/android/providers/media/MediaThumbRequest;
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 4960
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4961
    .local v7, msg:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 4965
    .end local v7           #msg:Landroid/os/Message;
    :goto_0
    :try_start_2
    monitor-exit v10

    return-object v0

    .line 4962
    .end local v0           #req:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v8       #req:Lcom/android/providers/media/MediaThumbRequest;
    :catch_0
    move-exception v9

    move-object v0, v8

    .line 4963
    .end local v8           #req:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v0       #req:Lcom/android/providers/media/MediaThumbRequest;
    .local v9, t:Ljava/lang/Throwable;
    :goto_1
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4966
    .end local v9           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    :goto_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .end local v0           #req:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v8       #req:Lcom/android/providers/media/MediaThumbRequest;
    :catchall_1
    move-exception v1

    move-object v0, v8

    .end local v8           #req:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v0       #req:Lcom/android/providers/media/MediaThumbRequest;
    goto :goto_2

    .line 4962
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method private static sanityCheck(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 2538
    const-string v1, "audio_meta"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2540
    const-string v1, "audio_meta"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "count(distinct _data)"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2542
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2543
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2544
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2545
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2546
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2547
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2548
    if-eq v1, v2, :cond_0

    .line 2549
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio_meta._data column is not unique while upgrading from schema "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    const-string v0, "DELETE FROM audio_meta;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2554
    :cond_0
    return-void
.end method

.method private sendObjectAdded(J)V
    .locals 8
    .parameter "objectHandle"

    .prologue
    .line 3652
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3653
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 3654
    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mtp_running_status"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 3655
    long-to-int v4, p1

    invoke-direct {p0, v4}, Lcom/android/providers/media/MediaProvider;->getObjectFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 3656
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3658
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.MTP.OBJECT_ADDED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3659
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "Path"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3660
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3664
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #path:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v5

    .line 3665
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 3667
    :try_start_1
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    long-to-int v6, p1

    invoke-interface {v4, v6}, Lcom/android/providers/media/IMtpService;->sendObjectAdded(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3673
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v5

    .line 3674
    return-void

    .line 3668
    :catch_0
    move-exception v1

    .line 3669
    .local v1, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "RemoteException in sendObjectAdded"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3670
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    goto :goto_0

    .line 3673
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private sendObjectRemoved(J)V
    .locals 8
    .parameter "objectHandle"

    .prologue
    .line 3677
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3678
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 3679
    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mtp_running_status"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 3680
    long-to-int v4, p1

    invoke-direct {p0, v4}, Lcom/android/providers/media/MediaProvider;->getObjectFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 3681
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3683
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.MTP.OBJECT_REMOVED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3684
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "Path"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3685
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3689
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #path:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v5

    .line 3690
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 3692
    :try_start_1
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    long-to-int v6, p1

    invoke-interface {v4, v6}, Lcom/android/providers/media/IMtpService;->sendObjectRemoved(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3698
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v5

    .line 3699
    return-void

    .line 3693
    :catch_0
    move-exception v1

    .line 3694
    .local v1, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "RemoteException in sendObjectRemoved"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3695
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    goto :goto_0

    .line 3698
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private setObjectReferences(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I[Landroid/content/ContentValues;)I
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4385
    const-wide/16 v10, 0x0

    .line 4386
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 4387
    const-string v3, "files"

    sget-object v4, Lcom/android/providers/media/MediaProvider;->sMediaTableColumns:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 4391
    if-eqz v4, :cond_c

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4392
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4393
    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 4395
    const/4 v2, 0x0

    .line 4400
    if-eqz v4, :cond_0

    .line 4401
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4454
    :cond_0
    :goto_0
    return v2

    .line 4397
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    move-wide v15, v2

    .line 4400
    :goto_1
    if-eqz v4, :cond_2

    .line 4401
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4404
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-nez v2, :cond_4

    .line 4405
    const/4 v2, 0x0

    goto :goto_0

    .line 4400
    :catchall_0
    move-exception v2

    if-eqz v4, :cond_3

    .line 4401
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 4409
    :cond_4
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    .line 4410
    const-string v2, "audio_playlists_map"

    const-string v3, "playlist_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4414
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v17, v0

    .line 4415
    const/4 v10, 0x0

    .line 4416
    move/from16 v0, v17

    new-array v11, v0, [Landroid/content/ContentValues;

    .line 4417
    const/4 v2, 0x0

    move v14, v2

    :goto_2
    move/from16 v0, v17

    if-ge v14, v0, :cond_8

    .line 4419
    const-wide/16 v12, 0x0

    .line 4420
    aget-object v2, p4, v14

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 4421
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 4422
    const-string v3, "files"

    sget-object v4, Lcom/android/providers/media/MediaProvider;->sMediaTableColumns:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 4426
    if-eqz v4, :cond_b

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4427
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    .line 4428
    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    .line 4435
    if-eqz v4, :cond_a

    .line 4436
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move v2, v10

    .line 4417
    :goto_3
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    move v10, v2

    goto :goto_2

    .line 4432
    :cond_5
    const/4 v2, 0x0

    :try_start_3
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v2

    .line 4435
    :goto_4
    if-eqz v4, :cond_6

    .line 4436
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4439
    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_a

    .line 4440
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4441
    const-string v5, "playlist_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4442
    const-string v5, "audio_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4443
    const-string v2, "play_order"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4444
    add-int/lit8 v2, v10, 0x1

    aput-object v4, v11, v10

    goto :goto_3

    .line 4435
    :catchall_1
    move-exception v2

    if-eqz v4, :cond_7

    .line 4436
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 4447
    :cond_8
    move/from16 v0, v17

    if-ge v10, v0, :cond_9

    .line 4450
    new-array v2, v10, [Landroid/content/ContentValues;

    .line 4451
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v11, v3, v2, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4454
    :goto_5
    const-string v3, "external"

    move-wide v0, v15

    invoke-static {v3, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/providers/media/MediaProvider;->playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    goto/16 :goto_0

    :cond_9
    move-object v2, v11

    goto :goto_5

    :cond_a
    move v2, v10

    goto :goto_3

    :cond_b
    move-wide v2, v12

    goto :goto_4

    :cond_c
    move-wide v15, v10

    goto/16 :goto_1
.end method

.method private stopMediaScanner(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 446
    invoke-static {p1}, Landroid/media/MediaScanner;->notifyUnmount(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 448
    :try_start_0
    iget v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 449
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to stop bulkInsertion during  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    .line 453
    :goto_0
    monitor-exit v1

    .line 454
    return-void

    .line 452
    :cond_0
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "No DB operation"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private subConvertOrgin2PinyinForSearch(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "values"
    .parameter "orginKey"

    .prologue
    .line 8087
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8089
    .local v0, orgin:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 8092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_search_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/media/SecDatabaseUtils;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8095
    :cond_0
    return-object v0
.end method

.method private subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8067
    const/4 v0, 0x0

    .line 8068
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8070
    if-eqz v1, :cond_0

    .line 8071
    const-string v0, "<unknown>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8072
    const-string v0, "\u0001"

    .line 8077
    :goto_0
    if-eqz v0, :cond_0

    .line 8078
    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 8079
    invoke-virtual {p1, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8083
    :cond_0
    return-object v0

    .line 8075
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/providers/media/MediaProvider;->computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static updateBucketNames(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter

    .prologue
    .line 2571
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2574
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2575
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2576
    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2580
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 2581
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2588
    const-string v1, "files"

    const-string v3, "media_type=1 OR media_type=2 OR media_type=3"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2593
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2594
    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2598
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 2599
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2600
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2601
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2602
    const/4 v6, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .line 2606
    if-eqz v5, :cond_0

    .line 2607
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 2610
    invoke-static {v5, v4}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2611
    const-string v5, "files"

    const-string v6, "_id=?"

    invoke-virtual {p0, v5, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2617
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2621
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2613
    :cond_0
    :try_start_3
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "null data at id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2617
    :cond_1
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2619
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2621
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2623
    return-void
.end method

.method private static updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x19b

    const/16 v9, 0x198

    const/16 v8, 0x191

    const/16 v0, 0x3f

    const/4 v7, 0x0

    .line 1029
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->getDatabaseVersion(Landroid/content/Context;)I

    move-result v1

    .line 1030
    if-eq p4, v1, :cond_0

    .line 1031
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal update request. Got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1033
    :cond_0
    if-le p3, p4, :cond_1

    .line 1034
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Did you forget to wipe data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1038
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    .line 1048
    if-lt p3, v0, :cond_2

    const/16 v3, 0x54

    if-lt p3, v3, :cond_4

    const/16 v3, 0x59

    if-gt p3, v3, :cond_4

    .line 1051
    :cond_2
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading media database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", which will destroy all old data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const-string v3, "DROP TABLE IF EXISTS images"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1055
    const-string v3, "DROP TRIGGER IF EXISTS images_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1056
    const-string v3, "DROP TABLE IF EXISTS thumbnails"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1057
    const-string v3, "DROP TRIGGER IF EXISTS thumbnails_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1058
    const-string v3, "DROP TABLE IF EXISTS audio_meta"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1059
    const-string v3, "DROP TABLE IF EXISTS artists"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1060
    const-string v3, "DROP TABLE IF EXISTS albums"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1061
    const-string v3, "DROP TABLE IF EXISTS album_art"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1062
    const-string v3, "DROP VIEW IF EXISTS artist_info"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1063
    const-string v3, "DROP VIEW IF EXISTS album_info"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1064
    const-string v3, "DROP VIEW IF EXISTS artists_albums_map"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1065
    const-string v3, "DROP TRIGGER IF EXISTS audio_meta_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1066
    const-string v3, "DROP TABLE IF EXISTS audio_genres"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1067
    const-string v3, "DROP TABLE IF EXISTS audio_genres_map"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1068
    const-string v3, "DROP TRIGGER IF EXISTS audio_genres_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1069
    const-string v3, "DROP TABLE IF EXISTS audio_playlists"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1070
    const-string v3, "DROP TABLE IF EXISTS audio_playlists_map"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1071
    const-string v3, "DROP TRIGGER IF EXISTS audio_playlists_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1072
    const-string v3, "DROP TRIGGER IF EXISTS albumart_cleanup1"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1073
    const-string v3, "DROP TRIGGER IF EXISTS albumart_cleanup2"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1074
    const-string v3, "DROP TABLE IF EXISTS video"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1075
    const-string v3, "DROP TRIGGER IF EXISTS video_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1076
    const-string v3, "DROP TABLE IF EXISTS objects"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1077
    const-string v3, "DROP TRIGGER IF EXISTS images_objects_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1078
    const-string v3, "DROP TRIGGER IF EXISTS audio_objects_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1079
    const-string v3, "DROP TRIGGER IF EXISTS video_objects_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1080
    const-string v3, "DROP TRIGGER IF EXISTS playlists_objects_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1082
    const-string v3, "CREATE TABLE IF NOT EXISTS images (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,_display_name TEXT,mime_type TEXT,title TEXT,date_added INTEGER,date_modified INTEGER,description TEXT,picasa_id TEXT,isprivate INTEGER,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,orientation INTEGER,mini_thumb_magic INTEGER,bucket_id TEXT,bucket_display_name TEXT);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1103
    const-string v3, "CREATE INDEX IF NOT EXISTS mini_thumb_magic_index on images(mini_thumb_magic);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1114
    const-string v3, "CREATE TRIGGER IF NOT EXISTS images_cleanup DELETE ON images BEGIN DELETE FROM thumbnails WHERE image_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1121
    const-string v3, "CREATE TABLE IF NOT EXISTS thumbnails (_id INTEGER PRIMARY KEY,_data TEXT,image_id INTEGER,kind INTEGER,width INTEGER,height INTEGER);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1130
    const-string v3, "CREATE INDEX IF NOT EXISTS image_id_index on thumbnails(image_id);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1132
    const-string v3, "CREATE TRIGGER IF NOT EXISTS thumbnails_cleanup DELETE ON thumbnails BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1138
    const-string v3, "CREATE TABLE IF NOT EXISTS audio_meta (_id INTEGER PRIMARY KEY,_data TEXT UNIQUE NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT NOT NULL,title_key TEXT NOT NULL,duration INTEGER,artist_id INTEGER,composer TEXT,album_id INTEGER,track INTEGER,year INTEGER CHECK(year!=0),is_ringtone INTEGER,is_music INTEGER,is_alarm INTEGER,is_notification INTEGER);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1161
    const-string v3, "CREATE TABLE IF NOT EXISTS artists (artist_id INTEGER PRIMARY KEY,artist_key TEXT NOT NULL UNIQUE,artist TEXT NOT NULL);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1168
    const-string v3, "CREATE TABLE IF NOT EXISTS albums (album_id INTEGER PRIMARY KEY,album_key TEXT NOT NULL UNIQUE,album TEXT NOT NULL);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1174
    const-string v3, "CREATE TABLE IF NOT EXISTS album_art (album_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1179
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1184
    const-string v3, "CREATE VIEW IF NOT EXISTS artist_info AS SELECT artist_id AS _id, artist, artist_key, COUNT(DISTINCT album) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1191
    const-string v3, "CREATE VIEW IF NOT EXISTS album_info AS SELECT audio.album_id AS _id, album, album_key, MIN(year) AS minyear, MAX(year) AS maxyear, artist, artist_id, artist_key, count(*) AS numsongs,album_art._data AS album_art FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id WHERE is_music=1 GROUP BY audio.album_id;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1202
    const-string v3, "CREATE VIEW IF NOT EXISTS artists_albums_map AS SELECT DISTINCT artist_id, album_id FROM audio_meta;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1208
    if-nez p2, :cond_3

    .line 1210
    const-string v3, "CREATE TRIGGER IF NOT EXISTS audio_meta_cleanup DELETE ON audio_meta BEGIN DELETE FROM audio_genres_map WHERE audio_id = old._id;DELETE FROM audio_playlists_map WHERE audio_id = old._id;END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1217
    const-string v3, "CREATE TABLE IF NOT EXISTS audio_genres (_id INTEGER PRIMARY KEY,name TEXT NOT NULL);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1223
    const-string v3, "CREATE TABLE IF NOT EXISTS audio_genres_map (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,genre_id INTEGER NOT NULL);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1230
    const-string v3, "CREATE TRIGGER IF NOT EXISTS audio_genres_cleanup DELETE ON audio_genres BEGIN DELETE FROM audio_genres_map WHERE genre_id = old._id;END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1236
    const-string v3, "CREATE TABLE IF NOT EXISTS audio_playlists (_id INTEGER PRIMARY KEY,_data TEXT,name TEXT NOT NULL,date_added INTEGER,date_modified INTEGER);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1245
    const-string v3, "CREATE TABLE IF NOT EXISTS audio_playlists_map (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1253
    const-string v3, "CREATE TRIGGER IF NOT EXISTS audio_playlists_cleanup DELETE ON audio_playlists BEGIN DELETE FROM audio_playlists_map WHERE playlist_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1260
    const-string v3, "CREATE TRIGGER IF NOT EXISTS albumart_cleanup1 DELETE ON albums BEGIN DELETE FROM album_art WHERE album_id = old.album_id;END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1266
    const-string v3, "CREATE TRIGGER IF NOT EXISTS albumart_cleanup2 DELETE ON album_art BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1273
    :cond_3
    const-string v3, "CREATE TABLE IF NOT EXISTS video (_id INTEGER PRIMARY KEY,_data TEXT NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT,duration INTEGER,artist TEXT,album TEXT,resolution TEXT,description TEXT,isprivate INTEGER,tags TEXT,category TEXT,language TEXT,mini_thumb_data TEXT,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,mini_thumb_magic INTEGER);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1305
    const-string v3, "CREATE TRIGGER IF NOT EXISTS video_cleanup DELETE ON video BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p3, v0

    .line 1316
    :cond_4
    const/16 v0, 0x40

    if-ge p3, v0, :cond_5

    .line 1318
    const-string v0, "CREATE INDEX IF NOT EXISTS sort_index on images(datetaken ASC, _id ASC);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1325
    :cond_5
    const/16 v0, 0x41

    if-ge p3, v0, :cond_6

    .line 1327
    const-string v0, "CREATE INDEX IF NOT EXISTS titlekey_index on audio_meta(title_key);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1333
    :cond_6
    const/16 v0, 0x43

    if-ge p3, v0, :cond_7

    .line 1335
    const-string v0, "CREATE INDEX IF NOT EXISTS albumkey_index on albums(album_key);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1336
    const-string v0, "CREATE INDEX IF NOT EXISTS artistkey_index on artists(artist_key);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1339
    :cond_7
    const/16 v0, 0x44

    if-ge p3, v0, :cond_8

    .line 1341
    const-string v0, "ALTER TABLE video ADD COLUMN bucket_id TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1342
    const-string v0, "ALTER TABLE video ADD COLUMN bucket_display_name TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1348
    :cond_8
    const/16 v0, 0x45

    if-ge p3, v0, :cond_9

    .line 1349
    const-string v0, "images"

    invoke-static {p1, v0}, Lcom/android/providers/media/MediaProvider;->updateDisplayName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1352
    :cond_9
    const/16 v0, 0x46

    if-ge p3, v0, :cond_a

    .line 1354
    const-string v0, "ALTER TABLE video ADD COLUMN bookmark INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1357
    :cond_a
    const/16 v0, 0x47

    if-ge p3, v0, :cond_b

    .line 1364
    const-string v0, "UPDATE audio_meta SET date_modified=0 WHERE _id IN (SELECT _id FROM audio where mime_type=\'audio/mp4\' AND artist=\'<unknown>\' AND album=\'<unknown>\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1371
    :cond_b
    const/16 v0, 0x48

    if-ge p3, v0, :cond_c

    .line 1373
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN is_podcast INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1374
    const-string v0, "UPDATE audio_meta SET is_podcast=1 WHERE _data LIKE \'%/podcasts/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1375
    const-string v0, "UPDATE audio_meta SET is_music=0 WHERE is_podcast=1 AND _data NOT LIKE \'%/music/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1377
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN bookmark INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1383
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1390
    :cond_c
    const/16 v0, 0x49

    if-ge p3, v0, :cond_d

    .line 1394
    const-string v0, "UPDATE audio_meta SET is_music=1 WHERE is_music=0 AND _data LIKE \'%/music/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1396
    const-string v0, "UPDATE audio_meta SET is_ringtone=1 WHERE is_ringtone=0 AND _data LIKE \'%/ringtones/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1398
    const-string v0, "UPDATE audio_meta SET is_notification=1 WHERE is_notification=0 AND _data LIKE \'%/notifications/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1400
    const-string v0, "UPDATE audio_meta SET is_alarm=1 WHERE is_alarm=0 AND _data LIKE \'%/alarms/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1402
    const-string v0, "UPDATE audio_meta SET is_podcast=1 WHERE is_podcast=0 AND _data LIKE \'%/podcasts/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1406
    :cond_d
    const/16 v0, 0x4a

    if-ge p3, v0, :cond_e

    .line 1411
    const-string v0, "CREATE VIEW IF NOT EXISTS searchhelpertitle AS SELECT * FROM audio ORDER BY title_key;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1414
    const-string v0, "CREATE VIEW IF NOT EXISTS search AS SELECT _id,\'artist\' AS mime_type,artist,NULL AS album,NULL AS title,artist AS text1,NULL AS text2,number_of_albums AS data1,number_of_tracks AS data2,artist_key AS match,\'content://media/external/audio/artists/\'||_id AS suggest_intent_data,1 AS grouporder FROM artist_info WHERE (artist!=\'<unknown>\') UNION ALL SELECT _id,\'album\' AS mime_type,artist,album,NULL AS title,album AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key AS match,\'content://media/external/audio/albums/\'||_id AS suggest_intent_data,2 AS grouporder FROM album_info WHERE (album!=\'<unknown>\') UNION ALL SELECT searchhelpertitle._id AS _id,mime_type,artist,album,title,title AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key||\' \'||title_key AS match,\'content://media/external/audio/media/\'||searchhelpertitle._id AS suggest_intent_data,3 AS grouporder FROM searchhelpertitle WHERE (title != \'\') "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1460
    :cond_e
    const/16 v0, 0x4b

    if-ge p3, v0, :cond_f

    .line 1463
    const-string v0, "UPDATE audio_meta SET date_modified=0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1464
    const-string v0, "DELETE FROM albums"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1467
    :cond_f
    const/16 v0, 0x4c

    if-ge p3, v0, :cond_10

    .line 1470
    const-string v0, "UPDATE audio_meta SET title_key=REPLACE(title_key,x\'081D08C29F081D\',x\'081D\') WHERE title_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1473
    const-string v0, "UPDATE albums SET album_key=REPLACE(album_key,x\'081D08C29F081D\',x\'081D\') WHERE album_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1476
    const-string v0, "UPDATE artists SET artist_key=REPLACE(artist_key,x\'081D08C29F081D\',x\'081D\') WHERE artist_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1485
    :cond_10
    const/16 v0, 0x4d

    if-ge p3, v0, :cond_11

    .line 1487
    const-string v0, "CREATE TABLE IF NOT EXISTS videothumbnails (_id INTEGER PRIMARY KEY,_data TEXT,video_id INTEGER,kind INTEGER,width INTEGER,height INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1496
    const-string v0, "CREATE INDEX IF NOT EXISTS video_id_index on videothumbnails(video_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1498
    const-string v0, "CREATE TRIGGER IF NOT EXISTS videothumbnails_cleanup DELETE ON videothumbnails BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1508
    :cond_11
    const/16 v0, 0x4e

    if-ge p3, v0, :cond_12

    .line 1511
    const-string v0, "UPDATE video SET date_modified=0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1518
    :cond_12
    const/16 v0, 0x4f

    if-ge p3, v0, :cond_13

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/albumthumbs"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Android/data/com.android.providers.media/albumthumbs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1525
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1528
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1530
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1532
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE album_art SET _data=REPLACE(_data, \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\',\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\');"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1538
    :cond_13
    const/16 v0, 0x50

    if-ge p3, v0, :cond_14

    .line 1540
    const-string v0, "UPDATE images SET date_modified=0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1543
    :cond_14
    const/16 v0, 0x51

    if-ge p3, v0, :cond_15

    if-nez p2, :cond_15

    .line 1551
    const-string v0, "UPDATE audio_playlists SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1552
    const-string v0, "UPDATE images SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1553
    const-string v0, "UPDATE video SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1554
    const-string v0, "UPDATE videothumbnails SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1555
    const-string v0, "UPDATE thumbnails SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1556
    const-string v0, "UPDATE album_art SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1557
    const-string v0, "UPDATE audio_meta SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1559
    const-string v0, "DELETE FROM audio_playlists WHERE _data IS \'////\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1560
    const-string v0, "DELETE FROM images WHERE _data IS \'////\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1561
    const-string v0, "DELETE FROM video WHERE _data IS \'////\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1562
    const-string v0, "DELETE FROM videothumbnails WHERE _data IS \'////\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1563
    const-string v0, "DELETE FROM thumbnails WHERE _data IS \'////\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1564
    const-string v0, "DELETE FROM audio_meta WHERE _data  IS \'////\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1565
    const-string v0, "DELETE FROM album_art WHERE _data  IS \'////\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1568
    const-string v0, "UPDATE audio_meta SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1570
    const-string v0, "UPDATE audio_playlists SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1572
    const-string v0, "UPDATE images SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1574
    const-string v0, "UPDATE video SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1576
    const-string v0, "UPDATE videothumbnails SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1578
    const-string v0, "UPDATE thumbnails SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1580
    const-string v0, "UPDATE album_art SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1588
    const-string v0, "DELETE from albums"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1589
    const-string v0, "DELETE from artists"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1590
    const-string v0, "UPDATE audio_meta SET date_modified=0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1593
    :cond_15
    const/16 v0, 0x52

    if-ge p3, v0, :cond_16

    .line 1595
    const-string v0, "DROP VIEW IF EXISTS artist_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1596
    const-string v0, "CREATE VIEW IF NOT EXISTS artist_info AS SELECT artist_id AS _id, artist, artist_key, COUNT(DISTINCT album_key) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1605
    :cond_16
    const/16 v0, 0x57

    if-ge p3, v0, :cond_17

    .line 1609
    const-string v0, "CREATE INDEX IF NOT EXISTS title_idx on audio_meta(title);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1610
    const-string v0, "CREATE INDEX IF NOT EXISTS artist_idx on artists(artist);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1611
    const-string v0, "CREATE INDEX IF NOT EXISTS album_idx on albums(album);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1614
    :cond_17
    const/16 v0, 0x58

    if-ge p3, v0, :cond_18

    .line 1617
    const-string v0, "DROP TRIGGER IF EXISTS albums_update1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1618
    const-string v0, "DROP TRIGGER IF EXISTS albums_update2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1619
    const-string v0, "DROP TRIGGER IF EXISTS albums_update3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1620
    const-string v0, "DROP TRIGGER IF EXISTS albums_update4;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1621
    const-string v0, "DROP TRIGGER IF EXISTS artist_update1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1622
    const-string v0, "DROP TRIGGER IF EXISTS artist_update2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1623
    const-string v0, "DROP TRIGGER IF EXISTS artist_update3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1624
    const-string v0, "DROP TRIGGER IF EXISTS artist_update4;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1625
    const-string v0, "DROP VIEW IF EXISTS album_artists;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1626
    const-string v0, "CREATE INDEX IF NOT EXISTS album_id_idx on audio_meta(album_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1627
    const-string v0, "CREATE INDEX IF NOT EXISTS artist_id_idx on audio_meta(artist_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1630
    const-string v0, "CREATE VIEW IF NOT EXISTS artists_albums_map AS SELECT DISTINCT artist_id, album_id FROM audio_meta;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1638
    :cond_18
    const/16 v0, 0x5b

    if-ge p3, v0, :cond_19

    .line 1640
    const-string v0, "DROP INDEX IF EXISTS mini_thumb_magic_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1643
    const-string v0, "CREATE INDEX IF NOT EXISTS image_bucket_index ON images(bucket_id, datetaken)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1644
    const-string v0, "CREATE INDEX IF NOT EXISTS video_bucket_index ON video(bucket_id, datetaken)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1651
    :cond_19
    const/16 v0, 0x64

    if-gt p3, v0, :cond_1d

    .line 1653
    const-string v0, "DROP TABLE IF EXISTS objects"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1654
    const-string v0, "DROP TABLE IF EXISTS files"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1655
    const-string v0, "DROP TRIGGER IF EXISTS images_objects_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1656
    const-string v0, "DROP TRIGGER IF EXISTS audio_objects_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1657
    const-string v0, "DROP TRIGGER IF EXISTS video_objects_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1658
    const-string v0, "DROP TRIGGER IF EXISTS playlists_objects_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1659
    const-string v0, "DROP TRIGGER IF EXISTS files_cleanup_images;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1660
    const-string v0, "DROP TRIGGER IF EXISTS files_cleanup_audio;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1661
    const-string v0, "DROP TRIGGER IF EXISTS files_cleanup_video;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1662
    const-string v0, "DROP TRIGGER IF EXISTS files_cleanup_playlists;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1663
    const-string v0, "DROP TRIGGER IF EXISTS media_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1668
    const-string v0, "CREATE TABLE files (_id INTEGER PRIMARY KEY AUTOINCREMENT,_data TEXT,_size INTEGER,format INTEGER,parent INTEGER,date_added INTEGER,date_modified INTEGER,mime_type TEXT,title TEXT,description TEXT,_display_name TEXT,picasa_id TEXT,orientation INTEGER,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,mini_thumb_magic INTEGER,bucket_id TEXT,bucket_display_name TEXT,isprivate INTEGER,title_key TEXT,artist_id INTEGER,album_id INTEGER,composer TEXT,track INTEGER,year INTEGER CHECK(year!=0),is_ringtone INTEGER,is_music INTEGER,is_alarm INTEGER,is_notification INTEGER,is_podcast INTEGER,album_artist TEXT,duration INTEGER,bookmark INTEGER,artist TEXT,album TEXT,resolution TEXT,tags TEXT,category TEXT,language TEXT,mini_thumb_data TEXT,name TEXT,media_type INTEGER,old_id INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1733
    const-string v0, "CREATE INDEX path_index ON files(_data);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1734
    const-string v0, "CREATE INDEX media_type_index ON files(media_type);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1743
    const-string v0, "INSERT INTO files (_id,_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,old_id,media_type) SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,_id,2 FROM audio_meta;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1747
    const-string v0, "INSERT INTO files (_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,old_id,media_type) SELECT _data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,_id,1 FROM images;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1749
    const-string v0, "INSERT INTO files (_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name, bookmark,old_id,media_type) SELECT _data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name, bookmark,_id,3 FROM video;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1751
    if-nez p2, :cond_1a

    .line 1752
    const-string v0, "INSERT INTO files (_data,name,date_added,date_modified,old_id,media_type) SELECT _data,name,date_added,date_modified,_id,4 FROM audio_playlists;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1758
    :cond_1a
    const-string v0, "DROP TABLE IF EXISTS images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1759
    const-string v0, "DROP TABLE IF EXISTS audio_meta"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1760
    const-string v0, "DROP TABLE IF EXISTS video"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1761
    const-string v0, "DROP TABLE IF EXISTS audio_playlists"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1764
    const-string v0, "CREATE VIEW images AS SELECT _id,_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name FROM files WHERE media_type=1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1767
    const-string v0, "CREATE VIEW audio_meta AS SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist FROM files WHERE media_type=2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1770
    const-string v0, "CREATE VIEW video AS SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name, bookmark FROM files WHERE media_type=3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1773
    if-nez p2, :cond_1b

    .line 1774
    const-string v0, "CREATE VIEW audio_playlists AS SELECT _id,_data,name,date_added,date_modified FROM files WHERE media_type=4;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1780
    :cond_1b
    const-string v0, "CREATE INDEX tmp ON files(old_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1783
    const-string v0, "UPDATE thumbnails SET image_id = (SELECT _id FROM files WHERE files.old_id = thumbnails.image_id AND files.media_type = 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1787
    if-nez p2, :cond_1c

    .line 1790
    const-string v0, "UPDATE audio_genres_map SET audio_id = (SELECT _id FROM files WHERE files.old_id = audio_genres_map.audio_id AND files.media_type = 2);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1793
    const-string v0, "UPDATE audio_playlists_map SET audio_id = (SELECT _id FROM files WHERE files.old_id = audio_playlists_map.audio_id AND files.media_type = 2);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1796
    const-string v0, "UPDATE audio_playlists_map SET playlist_id = (SELECT _id FROM files WHERE files.old_id = audio_playlists_map.playlist_id AND files.media_type = 4);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1802
    :cond_1c
    const-string v0, "UPDATE videothumbnails SET video_id = (SELECT _id FROM files WHERE files.old_id = videothumbnails.video_id AND files.media_type = 3);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1807
    const-string v0, "DROP INDEX tmp;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1810
    const-string v0, "DROP INDEX IF EXISTS title_idx"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1811
    const-string v0, "DROP INDEX IF EXISTS album_id_idx"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1812
    const-string v0, "DROP INDEX IF EXISTS image_bucket_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1813
    const-string v0, "DROP INDEX IF EXISTS video_bucket_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1814
    const-string v0, "DROP INDEX IF EXISTS sort_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1815
    const-string v0, "DROP INDEX IF EXISTS titlekey_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1816
    const-string v0, "DROP INDEX IF EXISTS artist_id_idx"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1817
    const-string v0, "CREATE INDEX title_idx ON files(title);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1818
    const-string v0, "CREATE INDEX album_id_idx ON files(album_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1819
    const-string v0, "CREATE INDEX bucket_index ON files(bucket_id, datetaken);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1820
    const-string v0, "CREATE INDEX sort_index ON files(datetaken ASC, _id ASC);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1821
    const-string v0, "CREATE INDEX titlekey_index ON files(title_key);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1822
    const-string v0, "CREATE INDEX artist_id_idx ON files(artist_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1825
    const-string v0, "DROP TRIGGER IF EXISTS images_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1826
    const-string v0, "DROP TRIGGER IF EXISTS audio_meta_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1827
    const-string v0, "DROP TRIGGER IF EXISTS video_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1828
    const-string v0, "DROP TRIGGER IF EXISTS audio_playlists_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1829
    const-string v0, "DROP TRIGGER IF EXISTS audio_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1831
    const-string v0, "CREATE TRIGGER IF NOT EXISTS images_cleanup DELETE ON files WHEN old.media_type = 1 BEGIN DELETE FROM thumbnails WHERE image_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1838
    const-string v0, "CREATE TRIGGER IF NOT EXISTS video_cleanup DELETE ON files WHEN old.media_type = 3 BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1844
    if-nez p2, :cond_1d

    .line 1845
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_meta_cleanup DELETE ON files WHEN old.media_type = 2 BEGIN DELETE FROM audio_genres_map WHERE audio_id = old._id;DELETE FROM audio_playlists_map WHERE audio_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1852
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_playlists_cleanup DELETE ON files WHEN old.media_type = 4 BEGIN DELETE FROM audio_playlists_map WHERE playlist_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1859
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_delete INSTEAD OF DELETE ON audio BEGIN DELETE from files where _id=old._id;DELETE from audio_playlists_map where audio_id=old._id;DELETE from audio_genres_map where audio_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1868
    :cond_1d
    const/16 v0, 0x12d

    if-ge p3, v0, :cond_1e

    .line 1869
    const-string v0, "DROP INDEX IF EXISTS bucket_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1870
    const-string v0, "CREATE INDEX bucket_index on files(bucket_id, media_type, datetaken, _id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1871
    const-string v0, "CREATE INDEX bucket_name on files(bucket_id, media_type, bucket_display_name)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1874
    :cond_1e
    const/16 v0, 0x12e

    if-ge p3, v0, :cond_1f

    .line 1875
    const-string v0, "CREATE INDEX parent_index ON files(parent);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1876
    const-string v0, "CREATE INDEX format_index ON files(format);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1879
    :cond_1f
    const/16 v0, 0x12f

    if-ge p3, v0, :cond_20

    .line 1882
    const-string v0, "DELETE from albums"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1883
    const-string v0, "UPDATE files SET date_modified=0 WHERE media_type=2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1887
    :cond_20
    const/16 v0, 0x130

    if-ge p3, v0, :cond_21

    if-nez p2, :cond_21

    .line 1889
    const-string v0, "CREATE TRIGGER IF NOT EXISTS files_cleanup DELETE ON files BEGIN SELECT _OBJECT_REMOVED(old._id);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1896
    :cond_21
    const/16 v0, 0x131

    if-ge p3, v0, :cond_22

    if-eqz p2, :cond_22

    .line 1898
    const-string v0, "DROP TRIGGER IF EXISTS files_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1901
    :cond_22
    const/16 v0, 0x132

    if-ge p3, v0, :cond_23

    if-nez p2, :cond_23

    .line 1904
    const-string v0, "UPDATE files SET date_modified=0 WHERE media_type=2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1906
    const-string v0, "DELETE FROM audio_genres_map"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1907
    const-string v0, "DELETE FROM audio_genres"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1910
    :cond_23
    const/16 v0, 0x133

    if-ge p3, v0, :cond_24

    if-nez p2, :cond_24

    .line 1913
    const-string v0, "UPDATE files SET date_modified=0 WHERE media_type=1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1919
    :cond_24
    if-lt p3, v8, :cond_25

    if-ne p3, v8, :cond_26

    if-eqz p2, :cond_26

    .line 1921
    :cond_25
    const-string v0, "ALTER TABLE files ADD COLUMN storage_id INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE files SET storage_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Landroid/mtp/MtpStorage;->getStorageId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1926
    :cond_26
    const/16 v0, 0x193

    if-ge p3, v0, :cond_27

    if-nez p2, :cond_27

    .line 1927
    const-string v0, "CREATE VIEW audio_genres_map_noid AS SELECT audio_id,genre_id from audio_genres_map;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1931
    :cond_27
    const/16 v0, 0x194

    if-ge p3, v0, :cond_28

    .line 1934
    const-string v0, "DELETE from albums"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1935
    const-string v0, "UPDATE files SET date_modified=0 WHERE media_type=2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1939
    :cond_28
    const/16 v0, 0x195

    if-ge p3, v0, :cond_29

    .line 1941
    const-string v0, "ALTER TABLE files ADD COLUMN is_drm INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1943
    const-string v0, "DROP VIEW IF EXISTS audio_meta"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1944
    const-string v0, "CREATE VIEW audio_meta AS SELECT _id,_data,_display_name,_size,mime_type,date_added,is_drm,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist FROM files WHERE media_type=2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1948
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1951
    :cond_29
    const/16 v0, 0x197

    if-ge p3, v0, :cond_2a

    .line 1955
    const-string v0, "UPDATE files SET date_modified=0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1958
    :cond_2a
    if-ge p3, v9, :cond_2b

    .line 1960
    const-string v0, "ALTER TABLE files ADD COLUMN width INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1961
    const-string v0, "ALTER TABLE files ADD COLUMN height INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1964
    const-string v0, "UPDATE files SET date_modified=0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1967
    const-string v0, "DROP VIEW IF EXISTS images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1968
    const-string v0, "DROP VIEW IF EXISTS video"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1969
    const-string v0, "CREATE VIEW images AS SELECT _id,_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,width,height FROM files WHERE media_type=1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1972
    const-string v0, "CREATE VIEW video AS SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name,bookmark,width,height FROM files WHERE media_type=3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1978
    :cond_2b
    if-ge p3, v9, :cond_2e

    .line 1981
    const-string v0, "ALTER TABLE files ADD COLUMN is_sound INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1982
    const-string v0, "ALTER TABLE files ADD COLUMN year_name TEXT default \'<unknown>\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1983
    const-string v0, "ALTER TABLE files ADD COLUMN genre_name TEXT default \'<unknown>\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1984
    const-string v0, "ALTER TABLE files ADD COLUMN recently_played INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1985
    const-string v0, "ALTER TABLE files ADD COLUMN most_played INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1986
    const-string v0, "ALTER TABLE files ADD COLUMN recently_added_remove_flag INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1987
    const-string v0, "ALTER TABLE files ADD COLUMN is_favorite INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1991
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_2c

    .line 1992
    const-string v0, "ALTER TABLE files ADD COLUMN title_search_key TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1993
    const-string v0, "ALTER TABLE files ADD COLUMN title_pinyin TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1994
    const-string v0, "ALTER TABLE files ADD COLUMN composer_pinyin TEXT default \'<unknown>\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1995
    const-string v0, "ALTER TABLE files ADD COLUMN genre_name_pinyin TEXT default \'<unknown>\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1996
    const-string v0, "ALTER TABLE files ADD COLUMN _display_name_pinyin TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1997
    const-string v0, "ALTER TABLE files ADD COLUMN bucket_display_name_pinyin TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1998
    const-string v0, "ALTER TABLE files ADD COLUMN name_pinyin TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2000
    const-string v0, "artists"

    const-string v3, "artist_search_key"

    invoke-static {p1, v0, v3}, Lcom/android/providers/media/MediaProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2001
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "UpgradeDatabaseToVersion408 Column artist_search_key Exist in artists"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    :goto_0
    const-string v0, "artists"

    const-string v3, "artist_pinyin"

    invoke-static {p1, v0, v3}, Lcom/android/providers/media/MediaProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2007
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "UpgradeDatabaseToVersion408 Column artist_pinyin Exist in artists"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    :goto_1
    const-string v0, "albums"

    const-string v3, "album_search_key"

    invoke-static {p1, v0, v3}, Lcom/android/providers/media/MediaProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2013
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "UpgradeDatabaseToVersion408 Column album_search_key Exist in albums"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    :goto_2
    const-string v0, "albums"

    const-string v3, "album_pinyin"

    invoke-static {p1, v0, v3}, Lcom/android/providers/media/MediaProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2019
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "UpgradeDatabaseToVersion408 Column album_pinyin Exist in albums"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_2c
    :goto_3
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateSecAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2028
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateSecAudioSearchView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2029
    if-nez p2, :cond_2d

    .line 2030
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateSecAudioPlaylistView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2035
    :cond_2d
    const-string v0, "ALTER TABLE files ADD COLUMN resumePos INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2036
    const-string v0, "ALTER TABLE files ADD COLUMN isPlayed INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2038
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateSecVideoView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2045
    :cond_2e
    const/16 v0, 0x199

    if-ge p3, v0, :cond_2f

    .line 2046
    const-string v0, "ALTER TABLE files ADD COLUMN face_count INTEGER default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2047
    const-string v0, "ALTER TABLE files ADD COLUMN scan_pri INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2048
    const-string v0, "DROP TABLE IF EXISTS faces"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2049
    const-string v0, "create table if not exists faces(_id integer primary key,image_id integer ,person_id integer,recommended_id integer default 0,group_id integer default 0,pos_left integer default 0,pos_top integer default 0,pos_right integer default 0,pos_bottom integer default 0,face_data integer default 0,auto_group integer default 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2050
    const-string v0, "CREATE TRIGGER IF NOT EXISTS images_update_face UPDATE OF date_modified ON files WHEN old.media_type = 1 BEGIN UPDATE files set face_count=-1 WHERE _id = old._id;DELETE FROM faces WHERE image_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2059
    :cond_2f
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_USE_DOCUMENTCLASSIFIER:Z

    const/4 v3, 0x1

    if-ne v0, v3, :cond_30

    .line 2060
    const-string v0, "ALTER TABLE files ADD COLUMN object_count INTEGER default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2061
    const-string v0, "DROP TABLE IF EXISTS objects"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2062
    const-string v0, "create table if not exists objects(_id integer primary key,file_id integer ,object_type integer default -1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2063
    const-string v0, "DROP VIEW IF EXISTS objects_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2064
    const-string v0, "CREATE VIEW IF NOT EXISTS objects_info AS SELECT f._id AS file_id, f._data AS file_path, o._id AS obj_id, o.object_type AS obj_type FROM files f , objects o WHERE f._id = o.file_id;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2071
    :cond_30
    const/16 v0, 0x19a

    if-ge p3, v0, :cond_31

    .line 2073
    const-string v0, "ALTER TABLE files ADD COLUMN weather_ID INTEGER default 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2074
    const-string v0, "DROP VIEW IF EXISTS contextual_tags"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2075
    const-string v0, "CREATE VIEW contextual_tags AS SELECT _id , _data  , media_type, datetaken , latitude, longitude,  weather_ID ,  (SELECT group_concat( faces._id  ) FROM faces WHERE files._id = faces.[image_id]  ) as faces_IDs FROM files WHERE media_type = 2 OR media_type = 1 OR media_type = 3"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2088
    :cond_31
    if-ge p3, v10, :cond_32

    .line 2089
    const-string v0, "ALTER TABLE files ADD COLUMN recordingtype INTEGER default 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2090
    invoke-static {p1, v10}, Lcom/android/providers/media/MediaProvider;->recreateSecAudioViewByVersion(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 2091
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateSecAudioSearchView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2092
    if-nez p2, :cond_32

    .line 2093
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateSecAudioPlaylistView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2103
    :cond_32
    const/16 v0, 0x19c

    if-ge p3, v0, :cond_33

    if-nez p2, :cond_33

    .line 2106
    const-string v0, "UPDATE files SET date_modified=0 WHERE media_type=2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2108
    const-string v0, "DELETE FROM audio_genres_map"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2109
    const-string v0, "DELETE FROM audio_genres"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2112
    :cond_33
    const/16 v0, 0x1f4

    if-ge p3, v0, :cond_34

    .line 2114
    const-string v0, "DROP TRIGGER IF EXISTS videothumbnails_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2116
    :cond_34
    const/16 v0, 0x1f5

    if-ge p3, v0, :cond_35

    .line 2121
    const-string v0, "DROP TRIGGER IF EXISTS images_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2122
    const-string v0, "DROP TRIGGER IF EXISTS thumbnails_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2124
    :cond_35
    const/16 v0, 0x1f6

    if-ge p3, v0, :cond_36

    .line 2126
    const-string v0, "DROP TRIGGER IF EXISTS video_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2128
    :cond_36
    const/16 v0, 0x1f7

    if-ge p3, v0, :cond_37

    .line 2130
    const-string v0, "DROP TRIGGER IF EXISTS audio_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2131
    const-string v0, "DROP TRIGGER IF EXISTS audio_meta_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2133
    :cond_37
    const/16 v0, 0x1f8

    if-ge p3, v0, :cond_38

    .line 2135
    const-string v0, "CREATE INDEX IF NOT EXISTS path_index_lower ON files(_data COLLATE NOCASE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2138
    :cond_38
    const/16 v0, 0x1f9

    if-ge p3, v0, :cond_39

    .line 2141
    const-string v0, "UPDATE files SET date_modified=0 WHERE media_type=3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2144
    :cond_39
    const/16 v0, 0x1fa

    if-ge p3, v0, :cond_3b

    .line 2148
    const-string v0, "DROP TRIGGER IF EXISTS files_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2149
    const-string v0, "DELETE FROM files WHERE _data LIKE \'/storage/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2150
    const-string v0, "DELETE FROM album_art WHERE _data LIKE \'/storage/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2151
    const-string v0, "DELETE FROM thumbnails WHERE _data LIKE \'/storage/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2152
    const-string v0, "DELETE FROM videothumbnails WHERE _data LIKE \'/storage/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2157
    if-nez p2, :cond_3a

    .line 2159
    const-string v0, "DELETE FROM files WHERE media_type=0 AND format<>12289;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2160
    const-string v0, "UPDATE files SET _data=\'/storage/extSdCard\'||SUBSTR(_data,24) WHERE _data LIKE \'/mnt/sdcard/external_sd/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2162
    const-string v0, "UPDATE files SET _data=\'/storage/sdcard0\'||SUBSTR(_data,12) WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2164
    const-string v0, "UPDATE files SET _data=\'/storage/extSdCard\'||SUBSTR(_data,15) WHERE _data LIKE \'/mnt/extSdCard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2166
    const-string v0, "UPDATE album_art SET _data=\'/storage/extSdCard\'||SUBSTR(_data,24) WHERE _data LIKE \'/mnt/sdcard/external_sd/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2168
    const-string v0, "UPDATE album_art SET _data=\'/storage/sdcard0\'||SUBSTR(_data,12) WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2170
    const-string v0, "UPDATE album_art SET _data=\'/storage/extSdCard\'||SUBSTR(_data,15) WHERE _data LIKE \'/mnt/extSdCard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2172
    const-string v0, "UPDATE thumbnails SET _data=\'/storage/extSdCard\'||SUBSTR(_data,24) WHERE _data LIKE \'/mnt/sdcard/external_sd/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2174
    const-string v0, "UPDATE thumbnails SET _data=\'/storage/sdcard0\'||SUBSTR(_data,12) WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2176
    const-string v0, "UPDATE thumbnails SET _data=\'/storage/extSdCard\'||SUBSTR(_data,15) WHERE _data LIKE \'/mnt/extSdCard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2178
    const-string v0, "UPDATE videothumbnails SET _data=\'/storage/extSdCard\'||SUBSTR(_data,24) WHERE _data LIKE \'/mnt/sdcard/external_sd/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2180
    const-string v0, "UPDATE videothumbnails SET _data=\'/storage/sdcard0\'||SUBSTR(_data,12) WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2182
    const-string v0, "UPDATE videothumbnails SET _data=\'/storage/extSdCard\'||SUBSTR(_data,15) WHERE _data LIKE \'/mnt/extSdCard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2186
    #const-string v0, "alarm_alert"

    #invoke-static {p0, p1, v0}, Lcom/android/providers/media/MediaProvider;->changeSoundPath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2187
    #const-string v0, "notification_sound"

    #invoke-static {p0, p1, v0}, Lcom/android/providers/media/MediaProvider;->changeSoundPath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2188
    #const-string v0, "ringtone"

    #invoke-static {p0, p1, v0}, Lcom/android/providers/media/MediaProvider;->changeSoundPath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2192
    :cond_3a
    if-nez p2, :cond_3b

    .line 2193
    const-string v0, "CREATE TRIGGER IF NOT EXISTS files_cleanup DELETE ON files BEGIN SELECT _OBJECT_REMOVED(old._id);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2199
    :cond_3b
    const/16 v0, 0x1fb

    if-ge p3, v0, :cond_3c

    .line 2201
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->updateBucketNames(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2203
    :cond_3c
    const/16 v0, 0x1fc

    if-ge p3, v0, :cond_3d

    if-nez p2, :cond_3d

    .line 2205
    const-string v0, "CREATE TABLE IF NOT EXISTS audio_genres_map_tmp (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,genre_id INTEGER NOT NULL,UNIQUE (audio_id,genre_id) ON CONFLICT IGNORE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2211
    const-string v0, "INSERT INTO audio_genres_map_tmp (audio_id,genre_id) SELECT DISTINCT audio_id,genre_id FROM audio_genres_map;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2213
    const-string v0, "DROP TABLE audio_genres_map;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2214
    const-string v0, "ALTER TABLE audio_genres_map_tmp RENAME TO audio_genres_map;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2217
    :cond_3d
    const/16 v0, 0x1fd

    if-ge p3, v0, :cond_3e

    .line 2218
    const-string v0, "CREATE TABLE IF NOT EXISTS log (time DATETIME PRIMARY KEY, message TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2223
    :cond_3e
    const/16 v0, 0x1ff

    if-ge p3, v0, :cond_3f

    .line 2225
    :try_start_0
    const-string v0, "ALTER TABLE files ADD COLUMN group_id INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2230
    :goto_4
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateSecImageView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2234
    :cond_3f
    const/16 v0, 0x200

    if-ge p3, v0, :cond_40

    .line 2235
    const-string v0, "ALTER TABLE files ADD COLUMN city_ID INTEGER default 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2236
    const-string v0, "DROP VIEW IF EXISTS contextual_tags"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2237
    const-string v0, "CREATE VIEW contextual_tags AS SELECT _id , _data  , media_type, datetaken , latitude, longitude,  weather_ID , city_ID , (SELECT group_concat( faces._id  ) FROM faces WHERE files._id = faces.[image_id]  ) as faces_IDs FROM files WHERE media_type = 2 OR media_type = 1 OR media_type = 3"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2248
    :cond_40
    invoke-static {p1, p3}, Lcom/android/providers/media/MediaProvider;->sanityCheck(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 2249
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    sub-long v0, v3, v1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 2250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database upgraded from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/providers/media/MediaProvider;->logToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2252
    return-void

    .line 2003
    :cond_41
    const-string v0, "ALTER TABLE artists ADD COLUMN artist_search_key TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2009
    :cond_42
    const-string v0, "ALTER TABLE artists ADD COLUMN artist_pinyin TEXT default \'<unknown>\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2015
    :cond_43
    const-string v0, "ALTER TABLE albums ADD COLUMN album_search_key TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2021
    :cond_44
    const-string v0, "ALTER TABLE albums ADD COLUMN album_pinyin TEXT default \'<unknown>\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2226
    :catch_0
    move-exception v0

    .line 2227
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "SQLException : ALTER TABLE files ADD COLUMN group_id INTEGER default 0"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private static updateDisplayName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 2633
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2635
    const/4 v0, 0x3

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_display_name"

    aput-object v1, v2, v0

    .line 2636
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2638
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2639
    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2640
    const-string v3, "_display_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2641
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2642
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2643
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2644
    if-nez v5, :cond_0

    .line 2645
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2646
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 2647
    invoke-static {v5, v4}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2648
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2649
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2653
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2657
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2653
    :cond_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2655
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2657
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2659
    return-void
.end method

.method private updateFacePerson(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "table"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 5538
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .line 5539
    .local v1, rawSqlDatabase:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v1, :cond_0

    .line 5540
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5543
    :cond_0
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 5544
    .local v2, rawdb:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_1

    .line 5545
    const/4 v0, 0x0

    .line 5548
    :goto_0
    return v0

    .line 5547
    :cond_1
    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 5548
    .local v0, count:I
    goto :goto_0
.end method

.method private updateGenre(JLjava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4465
    .line 4467
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4470
    :try_start_0
    sget-object v2, Lcom/android/providers/media/MediaProvider;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4472
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 4474
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4475
    const-string v3, "name"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4476
    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/MediaProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 4482
    :goto_0
    if-eqz v0, :cond_1

    .line 4483
    const-string v1, "members"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 4487
    :cond_1
    if-eqz v2, :cond_2

    .line 4488
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4492
    :cond_2
    if-eqz v0, :cond_3

    .line 4494
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4495
    const-string v2, "audio_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4496
    invoke-virtual {p0, v0, v1}, Lcom/android/providers/media/MediaProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4498
    :cond_3
    return-void

    .line 4479
    :cond_4
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 4480
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 4487
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_5

    .line 4488
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 4487
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static updateLGTDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 490
    const/16 v0, 0x5d

    if-gt p3, v0, :cond_0

    .line 491
    const-string v0, "CREATE TABLE IF NOT EXISTS videothumbnails (_id INTEGER PRIMARY KEY,_data TEXT,video_id INTEGER,kind INTEGER,width INTEGER,height INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 500
    const-string v0, "CREATE INDEX IF NOT EXISTS video_id_index on videothumbnails(video_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 502
    const-string v0, "CREATE TRIGGER IF NOT EXISTS videothumbnails_cleanup DELETE ON videothumbnails BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 507
    :cond_0
    return-void
.end method

.method private updateRecordFile(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 6048
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->isRecordFile(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->isSoundsDir(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6049
    const-string v0, "is_music"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6051
    :cond_0
    return-void
.end method

.method private updateSmartSortInfo(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5555
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmartSortInfo():uri=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), table=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), initialValues=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), userWhere=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5557
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 5558
    if-nez v0, :cond_0

    .line 5559
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5562
    :cond_0
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5563
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 5564
    return v0
.end method

.method private updateSoundField(Landroid/content/ContentValues;)V
    .locals 3
    .parameter

    .prologue
    .line 6021
    const-string v0, "is_sound"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 6022
    if-nez v0, :cond_2

    .line 6023
    const-string v0, "mime_type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6024
    const-string v0, "mime_type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6025
    if-eqz v1, :cond_2

    .line 6026
    const/4 v0, 0x0

    .line 6027
    const-string v2, "audio/x-wav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/amr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/amr-wb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/midi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/mid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/sp-midi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/imelody"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6031
    :cond_0
    const/4 v0, 0x1

    .line 6033
    :cond_1
    const-string v1, "is_sound"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6037
    :cond_2
    return-void
.end method

.method private waitForThumbnailReady(Landroid/net/Uri;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2758
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "_data"

    aput-object v0, v2, v7

    const-string v0, "mini_thumb_magic"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2760
    if-nez v8, :cond_1

    .line 2789
    :cond_0
    :goto_0
    return v6

    .line 2764
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2765
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 2766
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2767
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2769
    const/4 v3, 0x5

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->requestMediaThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v1

    .line 2771
    if-eqz v1, :cond_0

    .line 2774
    monitor-enter v1

    .line 2776
    :goto_1
    :try_start_0
    iget-object v0, v1, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    sget-object v2, Lcom/android/providers/media/MediaThumbRequest$State;->WAIT:Lcom/android/providers/media/MediaThumbRequest$State;

    if-ne v0, v2, :cond_2

    .line 2777
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2779
    :catch_0
    move-exception v0

    .line 2780
    :try_start_1
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2782
    :cond_2
    iget-object v0, v1, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    sget-object v2, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    if-ne v0, v2, :cond_3

    move v0, v7

    .line 2785
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2787
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v6, v0

    .line 2789
    goto :goto_0

    .line 2785
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    move v0, v6

    goto :goto_2

    :cond_4
    move v0, v6

    goto :goto_3
.end method

.method private writeAlbumArt(ZLandroid/net/Uri;[BLandroid/graphics/Bitmap;)V
    .locals 6
    .parameter "need_to_recompress"
    .parameter "out"
    .parameter "compressed"
    .parameter "bm"

    .prologue
    const/4 v5, 0x0

    .line 6498
    const/4 v2, 0x0

    .line 6500
    .local v2, success:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 6502
    .local v1, outstream:Ljava/io/OutputStream;
    if-nez p1, :cond_1

    .line 6505
    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 6506
    const/4 v2, 0x1

    .line 6511
    :goto_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6517
    .end local v1           #outstream:Ljava/io/OutputStream;
    :goto_1
    if-nez v2, :cond_0

    .line 6519
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p2, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6521
    :cond_0
    return-void

    .line 6508
    .restart local v1       #outstream:Ljava/io/OutputStream;
    :cond_1
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {p4, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 6512
    .end local v1           #outstream:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 6513
    .local v0, ex:Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "error creating file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6514
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 6515
    .local v0, ex:Ljava/io/IOException;
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "error creating file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 4922
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v3

    .line 4923
    .local v3, ihelper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .line 4924
    .local v1, ehelper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    invoke-virtual {v3}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 4925
    .local v2, idb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4926
    const/4 v0, 0x0

    .line 4927
    .local v0, edb:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 4928
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4929
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4932
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 4933
    .local v5, result:[Landroid/content/ContentProviderResult;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 4934
    if-eqz v0, :cond_1

    .line 4935
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 4940
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 4941
    .local v4, res:Landroid/content/ContentResolver;
    const-string v6, "content://media/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4944
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4945
    if-eqz v0, :cond_2

    .line 4946
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    return-object v5

    .line 4944
    .end local v4           #res:Landroid/content/ContentResolver;
    .end local v5           #result:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4945
    if-eqz v0, :cond_3

    .line 4946
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v6
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 3703
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 3704
    const/16 v0, 0x12c

    if-ne v2, v0, :cond_0

    .line 3705
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 3782
    :goto_0
    return v0

    .line 3707
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v3

    .line 3708
    if-nez v3, :cond_1

    .line 3709
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3712
    :cond_1
    invoke-virtual {v3}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 3713
    if-nez v4, :cond_2

    .line 3714
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t open database for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3717
    :cond_2
    const/16 v0, 0x6f

    if-eq v2, v0, :cond_3

    const/16 v0, 0x70

    if-ne v2, v0, :cond_4

    .line 3718
    :cond_3
    invoke-direct {p0, v4, p1, p2}, Lcom/android/providers/media/MediaProvider;->playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 3719
    :cond_4
    const/16 v0, 0x2c0

    if-ne v2, v0, :cond_5

    .line 3720
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3721
    invoke-direct {p0, v3, v4, v0, p2}, Lcom/android/providers/media/MediaProvider;->setObjectReferences(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I[Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 3724
    :cond_5
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "bulkInsert started"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3725
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSyncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3726
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    const-string v5, "_data"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3727
    if-eqz v0, :cond_6

    .line 3728
    sget-object v5, Lcom/android/providers/media/MediaProvider;->mExternalStorageSdPath:Ljava/lang/String;

    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/providers/media/MediaProvider;->mExternalStorageSdPath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3729
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    .line 3740
    :cond_6
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3742
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3743
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3746
    :try_start_1
    array-length v0, p2

    .line 3749
    :goto_2
    if-ge v1, v0, :cond_b

    .line 3750
    aget-object v5, p2, v1

    if-eqz v5, :cond_7

    .line 3752
    aget-object v5, p2, v1

    const-string v6, "_data"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3753
    if-eqz v5, :cond_7

    .line 3754
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3755
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a

    .line 3756
    invoke-static {v5}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3757
    if-eqz v5, :cond_7

    .line 3758
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " did not existed"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3749
    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3732
    :cond_8
    :try_start_2
    sget-object v5, Lcom/android/providers/media/MediaProvider;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3733
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    goto :goto_1

    .line 3740
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3736
    :cond_9
    const/4 v0, 0x3

    :try_start_3
    iput v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    .line 3737
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v5, "DB operation to unknown"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3762
    :cond_a
    :try_start_4
    aget-object v5, p2, v1

    invoke-direct {p0, p1, v2, v5, v3}, Lcom/android/providers/media/MediaProvider;->insertInternal(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/util/ArrayList;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 3774
    :catchall_1
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3775
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "bulkInsert finished"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    .line 3768
    :cond_b
    :try_start_5
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSyncLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3769
    :try_start_6
    iget v2, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    if-lez v2, :cond_c

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 3771
    :goto_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    .line 3772
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3774
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3775
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "bulkInsert finished"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    invoke-direct {p0, v3}, Lcom/android/providers/media/MediaProvider;->notifyMtp(Ljava/util/ArrayList;)V

    .line 3781
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3770
    :cond_c
    :try_start_7
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v5, "bulkInsert cancelled"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3772
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter "method"
    .parameter "arg"
    .parameter "extras"

    .prologue
    .line 5570
    const-string v0, "unhide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5571
    invoke-direct {p0, p2}, Lcom/android/providers/media/MediaProvider;->processRemovedNoMediaPath(Ljava/lang/String;)V

    .line 5572
    const/4 v0, 0x0

    return-object v0

    .line 5574
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5174
    sget-object v4, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 5177
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 5178
    const/16 v4, 0x2710

    if-ne v13, v4, :cond_2

    .line 5179
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v4

    .line 5180
    if-nez v4, :cond_0

    .line 5181
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5184
    :cond_0
    invoke-virtual {v4}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 5185
    if-nez v6, :cond_1

    .line 5186
    const/4 v5, 0x0

    .line 5532
    :goto_0
    return v5

    .line 5187
    :cond_1
    const/4 v4, 0x2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5188
    const/4 v4, 0x3

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5189
    invoke-virtual {v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5190
    const/4 v5, 0x0

    goto :goto_0

    .line 5191
    :cond_2
    const/16 v4, 0x7d0

    if-ne v13, v4, :cond_3

    .line 5192
    const-string v4, "faces"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/providers/media/MediaProvider;->deleteFacePerson(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 5193
    :cond_3
    const/16 v4, 0x7d1

    if-ne v13, v4, :cond_5

    .line 5194
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5199
    :goto_1
    const-string v5, "faces"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/android/providers/media/MediaProvider;->deleteFacePerson(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 5197
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 5200
    :cond_5
    const/16 v4, 0xbb8

    if-ne v13, v4, :cond_6

    .line 5201
    const-string v4, "persons"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/providers/media/MediaProvider;->deleteFacePerson(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 5202
    :cond_6
    const/16 v4, 0xbb9

    if-ne v13, v4, :cond_8

    .line 5203
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5208
    :goto_2
    const-string v5, "persons"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/android/providers/media/MediaProvider;->deleteFacePerson(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 5206
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 5213
    :cond_8
    const/16 v4, 0x1f4

    if-ne v13, v4, :cond_b

    .line 5214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    if-nez v4, :cond_9

    .line 5215
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 5217
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/audio"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v4

    .line 5219
    if-nez v4, :cond_a

    .line 5220
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no database for scanned volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    .line 5227
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 5222
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStopTime:J

    goto :goto_3

    .line 5230
    :cond_b
    const/16 v4, 0x12d

    if-ne v13, v4, :cond_c

    .line 5231
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->detachVolume(Landroid/net/Uri;)V

    .line 5232
    const/4 v4, 0x1

    :goto_4
    move v5, v4

    .line 5532
    goto/16 :goto_0

    .line 5233
    :cond_c
    const/16 v4, 0x2c1

    if-ne v13, v4, :cond_e

    .line 5234
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v5

    .line 5235
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    if-eqz v4, :cond_d

    .line 5237
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 5238
    const/4 v4, 0x1

    .line 5241
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    .line 5245
    :goto_5
    monitor-exit v5

    goto :goto_4

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 5243
    :cond_d
    const/4 v4, 0x0

    goto :goto_5

    .line 5247
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v14

    .line 5248
    if-nez v14, :cond_f

    .line 5249
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " match: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5398
    :cond_f
    iget v4, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    .line 5399
    invoke-virtual {v14}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 5401
    sget-object v15, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    monitor-enter v15

    .line 5402
    :try_start_1
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v13, v2, v5}, Lcom/android/providers/media/MediaProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V

    .line 5404
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    const-string v6, "files"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 5405
    const-string v5, "deletedata"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5406
    if-eqz v5, :cond_10

    const-string v6, "false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 5407
    :cond_10
    iget v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 5408
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sMediaTypeDataId:[Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 5411
    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v8, v5

    .line 5412
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v17, v5

    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v17, v5

    .line 5413
    :cond_11
    :goto_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 5414
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 5415
    const/4 v6, 0x1

    if-ne v5, v6, :cond_14

    .line 5416
    const/4 v12, 0x0

    .line 5418
    :try_start_2
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Llibcore/io/Os;->remove(Ljava/lang/String;)V

    .line 5419
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    .line 5420
    iget v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 5421
    const-string v5, "thumbnails"

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sDataOnlyColumn:[Ljava/lang/String;

    const-string v7, "image_id=?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Llibcore/io/ErrnoException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v5

    .line 5423
    :goto_7
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 5424
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Llibcore/io/Os;->remove(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Llibcore/io/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    .line 5428
    :catch_0
    move-exception v6

    .line 5430
    :goto_8
    if-eqz v5, :cond_11

    .line 5431
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 5529
    :catchall_1
    move-exception v4

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 5426
    :cond_12
    :try_start_5
    iget v6, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    .line 5427
    const-string v6, "thumbnails"

    const-string v7, "image_id=?"

    invoke-virtual {v4, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Llibcore/io/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0

    .line 5430
    if-eqz v5, :cond_11

    .line 5431
    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 5430
    :catchall_2
    move-exception v4

    :goto_9
    if-eqz v12, :cond_13

    .line 5431
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5434
    :cond_14
    const/4 v6, 0x3

    if-ne v5, v6, :cond_15

    .line 5436
    :try_start_7
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Llibcore/io/Os;->remove(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Llibcore/io/ErrnoException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_6

    .line 5437
    :catch_1
    move-exception v5

    goto/16 :goto_6

    .line 5439
    :cond_15
    const/4 v6, 0x2

    if-ne v5, v6, :cond_17

    .line 5440
    :try_start_8
    iget-boolean v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-nez v5, :cond_11

    .line 5441
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    .line 5442
    const-string v5, "audio_genres_map"

    const-string v6, "audio_id=?"

    invoke-virtual {v4, v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5445
    const-string v5, "audio_playlists_map"

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sPlaylistIdPlayOrder:[Ljava/lang/String;

    const-string v7, "audio_id=?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 5448
    :goto_a
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 5449
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v17, v6

    .line 5450
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v9, 0x1

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v17, v6

    .line 5451
    const-string v6, "UPDATE audio_playlists_map SET play_order=play_order-1 WHERE playlist_id=? AND play_order>?"

    move-object/from16 v0, v17

    invoke-virtual {v4, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 5456
    :cond_16
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 5457
    const-string v5, "audio_playlists_map"

    const-string v6, "audio_id=?"

    invoke-virtual {v4, v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_6

    .line 5459
    :cond_17
    const/4 v6, 0x4

    if-ne v5, v6, :cond_11

    goto/16 :goto_6

    .line 5464
    :cond_18
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 5468
    :cond_19
    sparse-switch v13, :sswitch_data_0

    .line 5509
    iget v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    .line 5510
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 5516
    :goto_b
    const-string v4, "notifyChange"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5517
    const-string v6, "disable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 5518
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 5473
    :sswitch_0
    const/4 v5, 0x1

    :try_start_9
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    .line 5474
    iget v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    .line 5475
    const-string v5, "files"

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result v5

    .line 5477
    const/4 v4, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    goto :goto_b

    :catchall_3
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    throw v4

    .line 5481
    :sswitch_1
    iget v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    .line 5482
    const-string v5, "audio_genres_map"

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto :goto_b

    .line 5491
    :sswitch_2
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sDataOnlyColumn:[Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 5494
    if-eqz v5, :cond_1b

    .line 5495
    :goto_c
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v6

    if-eqz v6, :cond_1a

    .line 5497
    :try_start_b
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Llibcore/io/Os;->remove(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Llibcore/io/ErrnoException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_c

    .line 5498
    :catch_2
    move-exception v6

    goto :goto_c

    .line 5501
    :cond_1a
    :try_start_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 5503
    :cond_1b
    iget v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    .line 5504
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_b

    .line 5526
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5527
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://media/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 5528
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5529
    monitor-exit v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move v4, v5

    goto/16 :goto_4

    .line 5430
    :catchall_4
    move-exception v4

    move-object v12, v5

    goto/16 :goto_9

    .line 5428
    :catch_3
    move-exception v5

    move-object v5, v12

    goto/16 :goto_8

    .line 5468
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x6c -> :sswitch_1
        0xca -> :sswitch_2
        0xcb -> :sswitch_2
        0x2be -> :sswitch_0
        0x2bf -> :sswitch_0
    .end sparse-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 7558
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 7559
    .local v1, foo:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/media/MediaProvider$DatabaseHelper;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 7560
    .local v0, dbh:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/providers/media/MediaProvider;->dump(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 7562
    .end local v0           #dbh:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 7563
    return-void
.end method

.method getAlbumArtOutputUri(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;JLandroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 6456
    .line 6459
    if-eqz p5, :cond_5

    .line 6460
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6463
    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6464
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6465
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->ensureFileExists(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move-object v3, p5

    :cond_0
    move-object v0, v3

    .line 6472
    :goto_0
    if-eqz v1, :cond_1

    .line 6473
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6477
    :cond_1
    :goto_1
    if-nez p5, :cond_2

    .line 6478
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 6479
    const-string v2, "album_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6481
    const/4 v2, 0x0

    :try_start_1
    const-string v3, ""

    const-string v4, "Android/data/com.android.providers.media/albumthumbs"

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 6482
    iget v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 6483
    const-string v2, "album_art"

    const-string v3, "_data"

    invoke-virtual {p2, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 6484
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 6485
    sget-object v3, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 6491
    :cond_2
    :goto_2
    return-object v0

    :cond_3
    move-object v0, v3

    move-object p5, v3

    .line 6469
    goto :goto_0

    .line 6472
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 6473
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 6487
    :catch_0
    move-exception v1

    .line 6488
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "error creating album thumb file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "url"

    .prologue
    const/4 v8, 0x1

    .line 3529
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3579
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3535
    :sswitch_0
    const/4 v6, 0x0

    .line 3537
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/android/providers/media/MediaProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3538
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 3539
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3540
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3541
    .local v7, mimeType:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3545
    if-eqz v6, :cond_1

    .line 3546
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3577
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #mimeType:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v7

    .line 3545
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_2
    if-eqz v6, :cond_0

    .line 3546
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3545
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3546
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 3553
    .end local v6           #c:Landroid/database/Cursor;
    :sswitch_1
    const-string v7, "vnd.android.cursor.dir/image"

    goto :goto_1

    .line 3556
    :sswitch_2
    const-string v7, "image/jpeg"

    goto :goto_1

    .line 3561
    :sswitch_3
    const-string v7, "vnd.android.cursor.dir/audio"

    goto :goto_1

    .line 3565
    :sswitch_4
    const-string v7, "vnd.android.cursor.dir/genre"

    goto :goto_1

    .line 3568
    :sswitch_5
    const-string v7, "vnd.android.cursor.item/genre"

    goto :goto_1

    .line 3571
    :sswitch_6
    const-string v7, "vnd.android.cursor.dir/playlist"

    goto :goto_1

    .line 3574
    :sswitch_7
    const-string v7, "vnd.android.cursor.item/playlist"

    goto :goto_1

    .line 3577
    :sswitch_8
    const-string v7, "vnd.android.cursor.dir/video"

    goto :goto_1

    .line 3529
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_0
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6a -> :sswitch_4
        0x6b -> :sswitch_5
        0x6c -> :sswitch_3
        0x6e -> :sswitch_6
        0x6f -> :sswitch_7
        0x70 -> :sswitch_3
        0x71 -> :sswitch_0
        0x78 -> :sswitch_2
        0xc8 -> :sswitch_8
        0xc9 -> :sswitch_0
        0x2bd -> :sswitch_0
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3850
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 3856
    const/16 v0, 0x2710

    if-ne v3, v0, :cond_2

    .line 3857
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 3858
    if-nez v0, :cond_0

    .line 3859
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3862
    :cond_0
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3863
    if-nez v2, :cond_1

    move-object v0, v1

    .line 3919
    :goto_0
    return-object v0

    .line 3865
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 3866
    const/4 v0, 0x2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3867
    const/4 v0, 0x3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3868
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move-object v0, v1

    .line 3869
    goto :goto_0

    .line 3870
    :cond_2
    const/16 v0, 0x7d0

    if-ne v3, v0, :cond_3

    .line 3871
    const-string v0, "faces"

    const-string v1, "face_data"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/providers/media/MediaProvider;->insertFacePerson(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 3872
    :cond_3
    const/16 v0, 0xbb8

    if-ne v3, v0, :cond_4

    .line 3873
    const-string v0, "persons"

    const-string v1, "name"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/providers/media/MediaProvider;->insertFacePerson(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 3876
    :cond_4
    const/16 v0, 0x1388

    if-ne v3, v0, :cond_5

    .line 3877
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert(): match@SMART_SORT_SCAN:uri=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), initialValues=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3878
    const-string v0, "objects"

    const-string v1, "name"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/providers/media/MediaProvider;->insertSmartSortInfo(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 3879
    :cond_5
    const/16 v0, 0x1389

    if-ne v3, v0, :cond_6

    .line 3880
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert(): match@SMART_SORT_LIST:uri=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), initialValues=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    const-string v0, "objects"

    const-string v1, "name"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/providers/media/MediaProvider;->insertSmartSortInfo(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 3882
    :cond_6
    const/16 v0, 0x138a

    if-ne v3, v0, :cond_7

    .line 3883
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert(): match@SMART_SORT_ID:uri=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), initialValues=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3884
    const-string v0, "objects"

    const-string v1, "name"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/providers/media/MediaProvider;->insertSmartSortInfo(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 3887
    :cond_7
    const/16 v0, 0x3e8

    if-ne v3, v0, :cond_8

    .line 3888
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/media/MediaProvider;->insertMediaDBLog(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 3891
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3892
    invoke-direct {p0, p1, v3, p2, v4}, Lcom/android/providers/media/MediaProvider;->insertInternal(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v2

    .line 3896
    const/16 v0, 0x6e

    if-ne v3, v0, :cond_9

    .line 3897
    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3898
    const-string v5, "now playing list 0123456789"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v2

    .line 3900
    goto/16 :goto_0

    .line 3905
    :cond_9
    invoke-direct {p0, v4}, Lcom/android/providers/media/MediaProvider;->notifyMtp(Ljava/util/ArrayList;)V

    .line 3908
    const-string v0, "notifyChange"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3909
    const-string v4, "disable"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v2

    .line 3910
    goto/16 :goto_0

    .line 3916
    :cond_a
    if-eqz v2, :cond_b

    const/16 v0, 0x2be

    if-eq v3, v0, :cond_b

    .line 3917
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_b
    move-object v0, v2

    .line 3919
    goto/16 :goto_0
.end method

.method insertFacePerson(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter "uri"
    .parameter "initialValues"
    .parameter "table"
    .parameter "nullColumnHack"

    .prologue
    const/4 v5, 0x0

    .line 3787
    const/4 v2, 0x0

    .line 3788
    .local v2, newUri:Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 3789
    .local v0, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v0, :cond_0

    .line 3790
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3793
    :cond_0
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3794
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_1

    .line 3803
    :goto_0
    return-object v5

    .line 3796
    :cond_1
    invoke-virtual {v1, p3, p4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 3797
    .local v3, rowId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_2

    .line 3798
    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 3800
    :cond_2
    if-eqz v2, :cond_3

    .line 3801
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_3
    move-object v5, v2

    .line 3803
    goto :goto_0
.end method

.method insertMediaDBLog(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3833
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 3834
    if-nez v0, :cond_0

    .line 3835
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3839
    :cond_0
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3841
    if-nez v0, :cond_1

    .line 3845
    :goto_0
    return-object v2

    .line 3843
    :cond_1
    const-string v1, "title"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3844
    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->logToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0
.end method

.method insertSmartSortInfo(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3810
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertSmartSortInfo():uri=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), table=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), initialValues=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), nullColumnHack=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .line 3814
    if-nez v1, :cond_0

    .line 3815
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3818
    :cond_0
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3819
    if-nez v1, :cond_1

    .line 3828
    :goto_0
    return-object v0

    .line 3821
    :cond_1
    invoke-virtual {v1, p3, p4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 3822
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 3823
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3825
    :goto_1
    if-eqz v1, :cond_2

    .line 3826
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2
    move-object v0, v1

    .line 3828
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method makeBestName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x2c

    .line 6789
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 6801
    :cond_0
    :goto_0
    const-string v0, ", the"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ",the"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ", an"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ",an"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ", a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ",a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6804
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 6805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6809
    :cond_2
    return-object p1

    .line 6793
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    move-object p1, p2

    .line 6796
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 807
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 809
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "audio.album_id AS _id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "album"

    const-string v3, "album"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "album_key"

    const-string v3, "album_key"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "minyear"

    const-string v3, "MIN(year) AS minyear"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "maxyear"

    const-string v3, "MAX(year) AS maxyear"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "artist"

    const-string v3, "artist"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "artist_id"

    const-string v3, "artist"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "artist_key"

    const-string v3, "artist_key"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "numsongs"

    const-string v3, "count(*) AS numsongs"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "album_art"

    const-string v3, "album_art._data AS album_art"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    aget-object v2, v2, v6

    const-string v3, "%1"

    const v4, 0x7f040003

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 828
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    .line 829
    const-string v1, "internal"

    invoke-direct {p0, v1}, Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    .line 832
    new-instance v1, Lcom/android/providers/media/ContentApp;

    invoke-direct {v1, v0}, Lcom/android/providers/media/ContentApp;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;

    .line 833
    new-instance v1, Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;

    invoke-direct {v1, v0}, Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider;->mPersonOpenHelper:Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;

    .line 836
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 837
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 838
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 840
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 841
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 843
    iput-boolean v5, p0, Lcom/android/providers/media/MediaProvider;->mCaseInsensitivePaths:Z

    .line 845
    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 847
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    .line 851
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 852
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 856
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/media/MediaProvider;->mExternalStoragePath:Ljava/lang/String;

    .line 857
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 858
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 859
    aget-object v2, v1, v0

    .line 860
    const-string v3, "sd"

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 861
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->mExternalStorageSdPath:Ljava/lang/String;

    .line 865
    :cond_0
    invoke-static {}, Landroid/media/MediaScanner;->initMutex()V

    .line 868
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 869
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 871
    :cond_1
    const-string v0, "external"

    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    .line 873
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_USE_DOCUMENTCLASSIFIER:Z

    if-ne v0, v5, :cond_2

    .line 874
    new-instance v0, Lcom/android/providers/media/SmartSortContentApp;

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/media/SmartSortContentApp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSmartSortContentApp:Lcom/android/providers/media/SmartSortContentApp;

    .line 875
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 876
    const-string v1, "com.android.providers.media.SMART_SORT_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 877
    const-string v1, "com.android.providers.media.SMART_SORT_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 878
    const-string v1, "com.android.providers.media.SMART_SORT_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mSmartSortBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 883
    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "thumbs thread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 884
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 885
    new-instance v1, Lcom/android/providers/media/MediaProvider$6;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/providers/media/MediaProvider$6;-><init>(Lcom/android/providers/media/MediaProvider;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    .line 943
    return v5

    .line 858
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 25
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 6159
    const/16 v22, 0x0

    .line 6161
    .local v22, pfd:Landroid/os/ParcelFileDescriptor;
    sget-object v5, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v7, 0x79

    if-ne v5, v7, :cond_3

    .line 6163
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v19

    .line 6164
    .local v19, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v19, :cond_0

    .line 6165
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t open database for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 6167
    :cond_0
    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 6168
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v4, :cond_1

    .line 6169
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t open database for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 6171
    :cond_1
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 6172
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 6173
    .local v24, songid:I
    const-string v5, "audio_meta"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 6175
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "_data"

    aput-object v9, v5, v7

    const/4 v7, 0x1

    const-string v9, "album_id"

    aput-object v9, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 6180
    .local v18, c:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6181
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 6182
    .local v8, audiopath:Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 6186
    .local v17, albumid:I
    sget-object v5, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    move/from16 v0, v17

    int-to-long v9, v0

    invoke-static {v5, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 6188
    .local v21, newUri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->openFileAndEnforcePathPermissionsHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 6194
    .end local v8           #audiopath:Ljava/lang/String;
    .end local v17           #albumid:I
    .end local v21           #newUri:Landroid/net/Uri;
    :cond_2
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    move-object/from16 v23, v22

    .line 6234
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v18           #c:Landroid/database/Cursor;
    .end local v19           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v22           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v24           #songid:I
    .local v23, pfd:Landroid/os/ParcelFileDescriptor;
    :goto_1
    return-object v23

    .line 6189
    .end local v23           #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #audiopath:Ljava/lang/String;
    .restart local v17       #albumid:I
    .restart local v18       #c:Landroid/database/Cursor;
    .restart local v19       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .restart local v21       #newUri:Landroid/net/Uri;
    .restart local v22       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v24       #songid:I
    :catch_0
    move-exception v20

    .line 6191
    .local v20, ex:Ljava/io/FileNotFoundException;
    move/from16 v0, v17

    int-to-long v9, v0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, v19

    move-object v7, v4

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/media/MediaProvider;->getThumb(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v22

    goto :goto_0

    .line 6199
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #audiopath:Ljava/lang/String;
    .end local v17           #albumid:I
    .end local v18           #c:Landroid/database/Cursor;
    .end local v19           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v20           #ex:Ljava/io/FileNotFoundException;
    .end local v21           #newUri:Landroid/net/Uri;
    .end local v24           #songid:I
    :cond_3
    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/media/MediaProvider;->openFileAndEnforcePathPermissionsHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v22

    :cond_4
    move-object/from16 v23, v22

    .line 6234
    .end local v22           #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v23       #pfd:Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 6200
    .end local v23           #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v22       #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v20

    .line 6201
    .restart local v20       #ex:Ljava/io/FileNotFoundException;
    const-string v5, "w"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6203
    throw v20

    .line 6206
    :cond_5
    sget-object v5, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v7, 0x78

    if-ne v5, v7, :cond_9

    .line 6208
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v6

    .line 6209
    .local v6, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v6, :cond_6

    .line 6210
    throw v20

    .line 6212
    :cond_6
    invoke-virtual {v6}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 6213
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v4, :cond_7

    .line 6214
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t open database for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 6216
    :cond_7
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 6217
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 6218
    .restart local v17       #albumid:I
    const-string v5, "audio_meta"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "album_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 6220
    const/4 v5, 0x1

    new-array v11, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_data"

    aput-object v7, v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "track"

    move-object v9, v3

    move-object v10, v4

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 6224
    .restart local v18       #c:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 6225
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 6226
    .restart local v8       #audiopath:Ljava/lang/String;
    move/from16 v0, v17

    int-to-long v9, v0

    move-object/from16 v5, p0

    move-object v7, v4

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/media/MediaProvider;->getThumb(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v22

    .line 6228
    .end local v8           #audiopath:Ljava/lang/String;
    :cond_8
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 6230
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v6           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v17           #albumid:I
    .end local v18           #c:Landroid/database/Cursor;
    :cond_9
    if-nez v22, :cond_4

    .line 6231
    throw v20
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2888
    sget-object v4, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .line 2889
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2893
    const/16 v4, 0x1f4

    if-ne v14, v4, :cond_2

    .line 2894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 2895
    const/4 v4, 0x0

    .line 3454
    :cond_0
    :goto_0
    return-object v4

    .line 2898
    :cond_1
    new-instance v4, Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "volume"

    aput-object v7, v5, v6

    invoke-direct {v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2899
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 2907
    :cond_2
    const/16 v4, 0x258

    if-ne v14, v4, :cond_3

    .line 2908
    new-instance v4, Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "fsid"

    aput-object v7, v5, v6

    invoke-direct {v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2909
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/providers/media/MediaProvider;->mVolumeId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 2913
    :cond_3
    const/16 v4, 0x259

    if-ne v14, v4, :cond_4

    .line 2914
    new-instance v4, Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "version"

    aput-object v7, v5, v6

    invoke-direct {v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2915
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->getDatabaseVersion(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 2920
    :cond_4
    const/16 v4, 0x2710

    if-ne v14, v4, :cond_7

    .line 2921
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v4

    .line 2922
    if-nez v4, :cond_5

    .line 2923
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2926
    :cond_5
    invoke-virtual {v4}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 2927
    if-nez v5, :cond_6

    .line 2928
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2929
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    .line 2930
    const/4 v4, 0x2

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2931
    const/4 v4, 0x3

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2932
    move-object/from16 v0, p4

    invoke-virtual {v5, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 2933
    if-eqz v4, :cond_0

    .line 2934
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v4, v5, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 2939
    :cond_7
    const/16 v4, 0xfa0

    if-ne v14, v4, :cond_a

    .line 2940
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;

    if-eqz v4, :cond_8

    .line 2941
    const-string v4, "1"

    const-string v5, "cancel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2942
    if-eqz v4, :cond_9

    .line 2943
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v4}, Lcom/android/providers/media/ContentApp;->stopScan()V

    .line 2948
    :cond_8
    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2945
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v4}, Lcom/android/providers/media/ContentApp;->startScan()V

    goto :goto_1

    .line 2951
    :cond_a
    const/16 v4, 0xfa2

    if-ne v14, v4, :cond_b

    .line 2952
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getSimilarPersons(Landroid/net/Uri;)V

    .line 2953
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2956
    :cond_b
    const/16 v4, 0xfa1

    if-ne v14, v4, :cond_c

    .line 2957
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->recomendPesonRequest(Landroid/net/Uri;)V

    .line 2958
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2960
    :cond_c
    const/4 v10, 0x0

    .line 2961
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v7

    .line 2964
    sget-boolean v4, Lcom/android/providers/media/MediaProvider;->FLAG_USE_DOCUMENTCLASSIFIER:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 2965
    const/16 v4, 0x1388

    if-ne v14, v4, :cond_d

    .line 2966
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mSmartSortContentApp:Lcom/android/providers/media/SmartSortContentApp;

    invoke-virtual {v4}, Lcom/android/providers/media/SmartSortContentApp;->startScan()V

    .line 2968
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2972
    :cond_d
    if-nez v7, :cond_e

    .line 2973
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2975
    :cond_e
    iget v4, v7, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v7, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 2976
    invoke-virtual {v7}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 2977
    if-nez v13, :cond_f

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2981
    :cond_f
    if-eqz p5, :cond_10

    const-string v4, "ljw"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_10

    .line 2982
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->rawQuery(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 2986
    :cond_10
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2987
    const-string v4, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2988
    const-string v4, "filter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2989
    const/4 v4, 0x0

    .line 2990
    if-eqz v6, :cond_11

    .line 2991
    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2992
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 2993
    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2994
    array-length v4, v8

    new-array v6, v4, [Ljava/lang/String;

    .line 2995
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v4

    .line 2996
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/text/Collator;->setStrength(I)V

    .line 2997
    const/4 v4, 0x0

    :goto_2
    array-length v9, v8

    if-ge v4, v9, :cond_12

    .line 3001
    aget-object v9, v8, v4

    invoke-static {v9}, Lcom/android/providers/media/SecDatabaseUtils;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3003
    const-string v12, "\\"

    const-string v16, "\\\\"

    move-object/from16 v0, v16

    invoke-virtual {v9, v12, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 3004
    const-string v12, "%"

    const-string v16, "\\%"

    move-object/from16 v0, v16

    invoke-virtual {v9, v12, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 3005
    const-string v12, "_"

    const-string v16, "\\_"

    move-object/from16 v0, v16

    invoke-virtual {v9, v12, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 3006
    aput-object v9, v6, v4

    .line 2997
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_11
    move-object v6, v4

    .line 3010
    :cond_12
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 3011
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 3014
    :cond_13
    const/4 v9, 0x0

    .line 3016
    sparse-switch v14, :sswitch_data_0

    .line 3442
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3018
    :sswitch_0
    const-string v4, "images"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3019
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 3020
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 3447
    :cond_14
    :goto_3
    :sswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v11, v1}, Lcom/android/providers/media/MediaProvider;->combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    move-object v6, v13

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v12, p5

    move-object v13, v15

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 3450
    if-eqz v4, :cond_0

    .line 3451
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v4, v5, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 3031
    :sswitch_2
    const-string v4, "images"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3032
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 3033
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 3037
    :cond_15
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3038
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3042
    :sswitch_3
    const/4 v9, 0x1

    .line 3044
    :sswitch_4
    const-string v7, "thumbnails"

    const-string v8, "image_id"

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_14

    .line 3045
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3050
    :sswitch_5
    if-eqz p2, :cond_17

    move-object/from16 v0, p2

    array-length v4, v0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_17

    if-nez p4, :cond_17

    if-eqz p3, :cond_16

    const-string v4, "is_music=1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "is_podcast=1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_16
    const/4 v4, 0x0

    aget-object v4, p2, v4

    const-string v7, "count(*)"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    if-eqz v6, :cond_17

    .line 3056
    const-string v4, "audio_meta"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3058
    :cond_17
    const-string v4, "audio"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3059
    const/4 v4, 0x0

    :goto_4
    if-eqz v6, :cond_14

    array-length v7, v6

    if-ge v4, v7, :cond_14

    .line 3060
    if-lez v4, :cond_18

    .line 3061
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3063
    :cond_18
    const-string v7, "artist_key||album_key||title_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3066
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3059
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3080
    :sswitch_6
    const-string v4, "audio"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3081
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3082
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3086
    :sswitch_7
    const-string v4, "audio_genres"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3087
    const-string v4, "_id IN (SELECT genre_id FROM audio_genres_map WHERE audio_id=?)"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3089
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3093
    :sswitch_8
    const-string v4, "audio_genres"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3094
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3095
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x5

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3099
    :sswitch_9
    const-string v4, "audio_playlists"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3100
    const-string v4, "_id IN (SELECT playlist_id FROM audio_playlists_map WHERE audio_id=?)"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3102
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3106
    :sswitch_a
    const-string v4, "audio_playlists"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3107
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3108
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x5

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3112
    :sswitch_b
    const-string v4, "audio_genres"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3116
    :sswitch_c
    const-string v4, "audio_genres"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3117
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3118
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3127
    :sswitch_d
    if-nez v6, :cond_1c

    if-eqz p2, :cond_1c

    if-eqz p3, :cond_19

    const-string v4, "genre_id=?"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_19
    const/4 v7, 0x1

    .line 3129
    :goto_5
    if-eqz p2, :cond_1d

    .line 3130
    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, p2

    array-length v8, v0

    if-ge v4, v8, :cond_1d

    .line 3131
    aget-object v8, p2, v4

    .line 3132
    const-string v9, "_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 3137
    const/4 v7, 0x0

    .line 3139
    :cond_1a
    if-eqz v7, :cond_1b

    const-string v9, "audio_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    const-string v9, "genre_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 3141
    const/4 v7, 0x0

    .line 3130
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3127
    :cond_1c
    const/4 v7, 0x0

    goto :goto_5

    .line 3145
    :cond_1d
    if-eqz v7, :cond_1e

    .line 3146
    const-string v4, "audio_genres_map_noid"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3147
    const/16 v4, 0x6c

    if-ne v14, v4, :cond_14

    .line 3148
    const-string v4, "genre_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3149
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3152
    :cond_1e
    const-string v4, "audio_genres_map_noid, audio"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3153
    const-string v4, "audio._id = audio_id"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3154
    const/16 v4, 0x6c

    if-ne v14, v4, :cond_1f

    .line 3155
    const-string v4, " AND genre_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3156
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x3

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3158
    :cond_1f
    const/4 v4, 0x0

    :goto_7
    if-eqz v6, :cond_14

    array-length v7, v6

    if-ge v4, v7, :cond_14

    .line 3159
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3160
    const-string v7, "artist_key||album_key||title_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3164
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3158
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 3171
    :sswitch_e
    const-string v4, "audio_playlists"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3174
    const-string v4, "secFilter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3176
    const-string v6, "include"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 3177
    const-string v4, "name <> \'now playing list 0123456789\' "

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3181
    :cond_20
    const-string v4, "audio_playlists"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3185
    :sswitch_f
    const-string v4, "audio_playlists"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3186
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3187
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3195
    :sswitch_10
    if-nez v6, :cond_24

    if-eqz p2, :cond_24

    if-eqz p3, :cond_21

    const-string v4, "playlist_id=?"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_21
    const/4 v7, 0x1

    .line 3197
    :goto_8
    if-eqz p2, :cond_25

    .line 3198
    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, p2

    array-length v8, v0

    if-ge v4, v8, :cond_25

    .line 3199
    aget-object v8, p2, v4

    .line 3200
    if-eqz v7, :cond_22

    const-string v9, "audio_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    const-string v9, "playlist_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    const-string v9, "play_order"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    .line 3202
    const/4 v7, 0x0

    .line 3204
    :cond_22
    const-string v9, "_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 3205
    const-string v8, "audio_playlists_map._id AS _id"

    aput-object v8, p2, v4

    .line 3198
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 3195
    :cond_24
    const/4 v7, 0x0

    goto :goto_8

    .line 3209
    :cond_25
    if-eqz v7, :cond_27

    .line 3210
    const-string v4, "audio_playlists_map"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3211
    const-string v4, "playlist_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3212
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3226
    :cond_26
    const/16 v4, 0x71

    if-ne v14, v4, :cond_14

    .line 3227
    const-string v4, " AND audio_playlists_map._id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3228
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x5

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3214
    :cond_27
    const-string v4, "audio_playlists_map, audio"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3215
    const-string v4, "audio._id = audio_id AND playlist_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3216
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x3

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3217
    const/4 v4, 0x0

    :goto_a
    if-eqz v6, :cond_26

    array-length v7, v6

    if-ge v4, v7, :cond_26

    .line 3218
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3219
    const-string v7, "artist_key||album_key||title_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3223
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3217
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 3234
    :sswitch_11
    const-string v4, "music_years_view"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3238
    :sswitch_12
    const-string v4, "music_composers_view"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3242
    :sswitch_13
    const-string v4, "music_genres_view"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3246
    :sswitch_14
    const-string v4, "music_artist_info"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3250
    :sswitch_15
    const-string v4, "music_album_info"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3254
    :sswitch_16
    const-string v4, "music_folders_view"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3259
    :sswitch_17
    const-string v4, "video"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3266
    :sswitch_18
    const-string v4, "video"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3267
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3268
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3272
    :sswitch_19
    const/4 v9, 0x1

    .line 3274
    :sswitch_1a
    const-string v7, "videothumbnails"

    const-string v8, "video_id"

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_14

    .line 3275
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3280
    :sswitch_1b
    if-eqz p2, :cond_29

    move-object/from16 v0, p2

    array-length v4, v0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_29

    if-nez p4, :cond_29

    if-eqz p3, :cond_28

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_29

    :cond_28
    const/4 v4, 0x0

    aget-object v4, p2, v4

    const-string v7, "count(*)"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    if-eqz v6, :cond_29

    .line 3285
    const-string v4, "audio_meta"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3286
    const/4 v4, 0x0

    const-string v6, "count(distinct artist_id)"

    aput-object v6, p2, v4

    .line 3287
    const-string v4, "is_music=1"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 3289
    :cond_29
    const-string v4, "artist_info"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3290
    const/4 v4, 0x0

    :goto_b
    if-eqz v6, :cond_14

    array-length v7, v6

    if-ge v4, v7, :cond_14

    .line 3291
    if-lez v4, :cond_2a

    .line 3292
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3294
    :cond_2a
    const-string v7, "artist_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3296
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3290
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 3302
    :sswitch_1c
    const-string v4, "artist_info"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3303
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3304
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3308
    :sswitch_1d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x3

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3309
    const-string v7, "audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3311
    const-string v7, "is_music=1 AND audio.album_id IN (SELECT album_id FROM artists_albums_map WHERE artist_id=?)"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3313
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3314
    const/4 v7, 0x0

    :goto_c
    if-eqz v6, :cond_2b

    array-length v8, v6

    if-ge v7, v8, :cond_2b

    .line 3315
    const-string v8, " AND "

    invoke-virtual {v5, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3316
    const-string v8, "artist_key||album_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v5, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3319
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3314
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 3321
    :cond_2b
    const-string v10, "audio.album_id"

    .line 3322
    sget-object v6, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v7, "numsongs_by_artist"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "count(CASE WHEN artist_id=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " THEN \'foo\' ELSE NULL END) AS "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "numsongs_by_artist"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3325
    sget-object v4, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_3

    .line 3329
    :sswitch_1e
    if-eqz p2, :cond_2d

    move-object/from16 v0, p2

    array-length v4, v0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2d

    if-nez p4, :cond_2d

    if-eqz p3, :cond_2c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2d

    :cond_2c
    const/4 v4, 0x0

    aget-object v4, p2, v4

    const-string v7, "count(*)"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    if-eqz v6, :cond_2d

    .line 3334
    const-string v4, "audio_meta"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3335
    const/4 v4, 0x0

    const-string v6, "count(distinct album_id)"

    aput-object v6, p2, v4

    .line 3336
    const-string v4, "is_music=1"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 3338
    :cond_2d
    const-string v4, "album_info"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3339
    const/4 v4, 0x0

    :goto_d
    if-eqz v6, :cond_14

    array-length v7, v6

    if-ge v4, v7, :cond_14

    .line 3340
    if-lez v4, :cond_2e

    .line 3341
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3343
    :cond_2e
    const-string v7, "artist_key||album_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3346
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3339
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 3352
    :sswitch_1f
    const-string v4, "album_info"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3353
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3354
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3358
    :sswitch_20
    const-string v4, "album_art"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3359
    const-string v4, "album_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3360
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3364
    :sswitch_21
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "Legacy media search Uri used. Please update your code."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    :sswitch_22
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v11, v1}, Lcom/android/providers/media/MediaProvider;->combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v6, p0

    move-object v7, v13

    move-object v8, v5

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    invoke-direct/range {v6 .. v15}, Lcom/android/providers/media/MediaProvider;->doAudioSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 3373
    :sswitch_23
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3374
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3378
    :sswitch_24
    const-string v4, "files"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3382
    :sswitch_25
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3383
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v4}, Lcom/android/providers/media/MediaProvider;->getObjectReferences(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 3387
    :sswitch_26
    const-string v4, "faces"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3388
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 3389
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 3390
    :cond_2f
    const-string v4, "image_id  in (select _id from files where media_type=1 and face_count<>-1)"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 3393
    :sswitch_27
    const-string v4, "faces"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3394
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 3395
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 3396
    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 3399
    :sswitch_28
    const-string v4, "persons"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3400
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 3401
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_3

    .line 3404
    :sswitch_29
    const-string v4, "persons"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3405
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 3406
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 3407
    :cond_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 3412
    :sswitch_2a
    const-string v4, "objects_info"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3413
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 3414
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_3

    .line 3423
    :sswitch_2b
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "MediaDB own log is requested"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    const-string v4, "log"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3428
    :sswitch_2c
    const-string v4, "contextual_tags"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3429
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 3430
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_3

    .line 3434
    :sswitch_2d
    const-string v4, "contextual_tags"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3435
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 3436
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 3437
    :cond_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 3016
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x64 -> :sswitch_5
        0x65 -> :sswitch_6
        0x66 -> :sswitch_7
        0x67 -> :sswitch_8
        0x68 -> :sswitch_9
        0x69 -> :sswitch_a
        0x6a -> :sswitch_b
        0x6b -> :sswitch_c
        0x6c -> :sswitch_d
        0x6d -> :sswitch_d
        0x6e -> :sswitch_e
        0x6f -> :sswitch_f
        0x70 -> :sswitch_10
        0x71 -> :sswitch_10
        0x72 -> :sswitch_1b
        0x73 -> :sswitch_1c
        0x74 -> :sswitch_1e
        0x75 -> :sswitch_1f
        0x76 -> :sswitch_1d
        0x78 -> :sswitch_20
        0x83 -> :sswitch_11
        0x84 -> :sswitch_12
        0x85 -> :sswitch_13
        0x86 -> :sswitch_14
        0x87 -> :sswitch_15
        0x88 -> :sswitch_16
        0xc8 -> :sswitch_17
        0xc9 -> :sswitch_18
        0xca -> :sswitch_1a
        0xcb -> :sswitch_19
        0x190 -> :sswitch_21
        0x191 -> :sswitch_22
        0x192 -> :sswitch_22
        0x2bc -> :sswitch_24
        0x2bd -> :sswitch_23
        0x2be -> :sswitch_24
        0x2bf -> :sswitch_23
        0x2c0 -> :sswitch_25
        0x3e8 -> :sswitch_2b
        0x7d0 -> :sswitch_26
        0x7d1 -> :sswitch_27
        0xbb8 -> :sswitch_28
        0xbb9 -> :sswitch_29
        0x1389 -> :sswitch_2a
        0x138a -> :sswitch_1
        0x1770 -> :sswitch_2c
        0x1771 -> :sswitch_2d
    .end sparse-switch
.end method

.method public rawQuery(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "uri"
    .parameter "query"
    .parameter "args"

    .prologue
    .line 2873
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 2876
    .local v0, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v0, :cond_0

    .line 2877
    const/4 v2, 0x0

    .line 2880
    :goto_0
    return-object v2

    .line 2879
    :cond_0
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2880
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 31
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5581
    const/16 v26, 0x1

    .line 5584
    sget-object v4, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v27

    .line 5585
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 5586
    const/16 v4, 0x2710

    move/from16 v0, v27

    if-ne v0, v4, :cond_2

    .line 5587
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v4

    .line 5588
    if-nez v4, :cond_0

    .line 5589
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5592
    :cond_0
    invoke-virtual {v4}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 5593
    if-nez v6, :cond_1

    .line 5594
    const/4 v4, 0x0

    .line 6015
    :goto_0
    return v4

    .line 5595
    :cond_1
    const/4 v4, 0x2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5596
    const/4 v4, 0x3

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5597
    invoke-virtual {v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5598
    const/4 v4, 0x0

    goto :goto_0

    .line 5599
    :cond_2
    const/16 v4, 0x7d0

    move/from16 v0, v27

    if-ne v0, v4, :cond_3

    .line 5600
    const-string v6, "faces"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->updateFacePerson(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 5602
    :cond_3
    const/16 v4, 0x7d1

    move/from16 v0, v27

    if-ne v0, v4, :cond_5

    .line 5603
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5608
    :goto_1
    const-string v6, "faces"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->updateFacePerson(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 5606
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 5610
    :cond_5
    const/16 v4, 0xbb8

    move/from16 v0, v27

    if-ne v0, v4, :cond_6

    .line 5611
    const-string v6, "persons"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->updateFacePerson(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 5613
    :cond_6
    const/16 v4, 0xbb9

    move/from16 v0, v27

    if-ne v0, v4, :cond_8

    .line 5614
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5619
    :goto_2
    const-string v6, "persons"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->updateFacePerson(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 5617
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 5625
    :cond_8
    const/16 v4, 0x1388

    move/from16 v0, v27

    if-ne v0, v4, :cond_9

    .line 5626
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update(): match@SMART_SORT_SCAN:uri=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), userWhere=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), initialValues=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 5627
    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->updateSmartSortInfo(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 5629
    :cond_9
    const/16 v4, 0x1389

    move/from16 v0, v27

    if-ne v0, v4, :cond_a

    .line 5630
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update(): match@SMART_SORT_LIST:uri=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), userWhere=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), initialValues=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 5631
    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->updateSmartSortInfo(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 5633
    :cond_a
    const/16 v4, 0x138a

    move/from16 v0, v27

    if-ne v0, v4, :cond_b

    .line 5634
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update(): match@SMART_SORT_ID:uri=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), userWhere=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), initialValues=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 5635
    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->updateSmartSortInfo(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 5640
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v28

    .line 5641
    if-nez v28, :cond_c

    .line 5642
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5645
    :cond_c
    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v28

    iput v4, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 5647
    invoke-virtual/range {v28 .. v28}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 5649
    const/4 v5, 0x0

    .line 5650
    if-eqz p2, :cond_37

    .line 5651
    const-string v5, "genre"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5652
    const-string v6, "genre"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move-object/from16 v25, v5

    .line 5655
    :goto_3
    sget-object v29, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    monitor-enter v29

    .line 5656
    :try_start_0
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/providers/media/MediaProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V

    .line 5661
    const/16 v5, 0x2be

    move/from16 v0, v27

    if-eq v0, v5, :cond_d

    const/16 v5, 0x2bf

    move/from16 v0, v27

    if-ne v0, v5, :cond_14

    :cond_d
    if-eqz p2, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_14

    .line 5663
    const/4 v12, 0x0

    .line 5664
    const-string v5, "_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5665
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5667
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5668
    if-eqz v13, :cond_13

    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 5669
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v28

    iput v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 5670
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->PATH_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 5673
    if-eqz v7, :cond_36

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 5674
    const/4 v5, 0x1

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    move-object v6, v5

    .line 5677
    :goto_4
    if-eqz v7, :cond_e

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5679
    :cond_e
    if-eqz v6, :cond_14

    .line 5680
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5682
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v28

    iput v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 5683
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 5685
    if-lez v5, :cond_f

    .line 5687
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v13, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v8

    .line 5689
    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v28

    iput v6, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 5690
    const-string v6, "UPDATE files SET _data=?1||SUBSTR(_data, ?2) WHERE _data LIKE ?3 AND lower(substr(_data,1,?4))=lower(?5);"

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5698
    :cond_f
    if-lez v5, :cond_10

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v6

    if-nez v6, :cond_10

    .line 5699
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5701
    :cond_10
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 5703
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4, v13}, Lcom/android/providers/media/MediaProvider;->processNewNoMediaPath(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 5705
    :cond_11
    monitor-exit v29

    move v4, v5

    goto/16 :goto_0

    .line 5677
    :catchall_0
    move-exception v4

    if-eqz v7, :cond_12

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v4

    .line 5999
    :catchall_1
    move-exception v4

    monitor-exit v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 5707
    :cond_13
    :try_start_3
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/.nomedia"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 5708
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4, v13}, Lcom/android/providers/media/MediaProvider;->processNewNoMediaPath(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 5712
    :cond_14
    sparse-switch v27, :sswitch_data_0

    .line 5994
    :cond_15
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v28

    iput v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 5995
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    move/from16 v6, v26

    .line 5999
    :goto_5
    monitor-exit v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6002
    const-string v7, "notifyChange"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6003
    const-string v8, "disable"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    move v4, v5

    .line 6004
    goto/16 :goto_0

    .line 5716
    :sswitch_0
    :try_start_4
    new-instance v30, Landroid/content/ContentValues;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 5717
    const-string v5, "album_artist"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5718
    const-string v5, "compilation"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 5719
    const-string v5, "compilation"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5723
    const-string v5, "artist"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5724
    const-string v5, "artist"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5725
    if-eqz v11, :cond_16

    .line 5727
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    move-object/from16 v16, v0

    .line 5728
    monitor-enter v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5729
    :try_start_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 5730
    if-nez v5, :cond_20

    .line 5731
    const-string v8, "artists"

    const-string v9, "artist_key"

    const-string v10, "artist"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, v28

    move-object v7, v4

    move-object v12, v11

    move-object/from16 v17, p1

    invoke-direct/range {v5 .. v17}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v5

    .line 5737
    :goto_6
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 5738
    :try_start_6
    const-string v7, "artist_id"

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5742
    :cond_16
    const-string v5, "album"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5743
    const-string v5, "album"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5744
    if-eqz v12, :cond_18

    .line 5745
    const-string v5, "_data"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 5746
    const/16 v21, 0x0

    .line 5747
    if-eqz v18, :cond_21

    .line 5748
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v21

    .line 5785
    :cond_17
    :goto_7
    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    .line 5787
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    .line 5788
    monitor-enter v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5789
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 5790
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 5791
    if-nez v5, :cond_26

    .line 5792
    const-string v15, "albums"

    const-string v16, "album_key"

    const-string v17, "album"

    move-object/from16 v12, p0

    move-object/from16 v13, v28

    move-object v14, v4

    move-object/from16 v22, v11

    move-object/from16 v24, p1

    invoke-direct/range {v12 .. v24}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v5

    .line 5798
    :goto_8
    monitor-exit v23
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 5799
    :try_start_8
    const-string v7, "album_id"

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5803
    :cond_18
    const-string v5, "title_key"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5805
    const-string v5, "title"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5806
    if-eqz v5, :cond_19

    .line 5807
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5812
    const-string v6, "title_key"

    invoke-static {v5}, Lcom/android/providers/media/SecDatabaseUtils;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5817
    const-string v6, "title"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5818
    const-string v6, "title"

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5822
    :cond_19
    const-string v5, "_data"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 5823
    const-string v5, "_data"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5824
    if-eqz v5, :cond_1a

    .line 5833
    const-string v6, "bucket_id"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5834
    const-string v6, "bucket_display_name"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5835
    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 5841
    :cond_1a
    const-string v5, "composer"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 5842
    const-string v5, "composer"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5843
    const-string v6, "composer"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5844
    if-eqz v5, :cond_27

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_27

    .line 5846
    :goto_9
    const-string v6, "composer"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5850
    :cond_1b
    const-string v5, "year"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 5851
    const-string v5, "year"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5852
    const/4 v5, 0x0

    .line 5853
    if-eqz v6, :cond_35

    .line 5854
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v6, v5

    .line 5855
    :goto_a
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 5857
    if-eqz v5, :cond_1c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_1c

    .line 5858
    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 5860
    :cond_1c
    if-eqz v5, :cond_1d

    .line 5861
    const-string v7, "year_name"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x76c

    if-lt v8, v9, :cond_28

    if-eqz v6, :cond_28

    if-eqz v5, :cond_28

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_28

    :goto_b
    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5867
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->updateSoundField(Landroid/content/ContentValues;)V

    .line 5869
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->updateRecordFile(Landroid/content/ContentValues;)V

    .line 5873
    sget-boolean v5, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v5, :cond_1e

    .line 5874
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->convertOrgin2PinyinForSort(Landroid/content/ContentValues;)V

    .line 5880
    :cond_1e
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v28

    iput v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 5881
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 5883
    if-eqz v25, :cond_1f

    .line 5884
    const/4 v5, 0x1

    if-ne v6, v5, :cond_29

    const/16 v5, 0x65

    move/from16 v0, v27

    if-ne v0, v5, :cond_29

    .line 5885
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 5886
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v7, v8, v1}, Lcom/android/providers/media/MediaProvider;->updateGenre(JLjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_1f
    :goto_c
    move v5, v6

    move/from16 v6, v26

    .line 5894
    goto/16 :goto_5

    .line 5735
    :cond_20
    :try_start_9
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_6

    .line 5737
    :catchall_2
    move-exception v4

    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v4

    .line 5749
    :cond_21
    if-eqz v19, :cond_22

    const-string v5, "1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 5752
    :cond_22
    if-nez v20, :cond_23

    .line 5753
    const/16 v5, 0x64

    move/from16 v0, v27

    if-ne v0, v5, :cond_24

    .line 5754
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "Possible multi row album name update without path could give wrong album key"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5776
    :cond_23
    :goto_d
    if-eqz v20, :cond_17

    .line 5781
    const/4 v5, 0x0

    const/16 v6, 0x2f

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v21

    goto/16 :goto_7

    .line 5758
    :cond_24
    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v5

    .line 5761
    if-eqz v5, :cond_23

    .line 5763
    :try_start_b
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 5764
    const/4 v7, 0x1

    if-ne v6, v7, :cond_25

    .line 5765
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5766
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result-object v20

    .line 5771
    :goto_e
    :try_start_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_d

    .line 5768
    :cond_25
    :try_start_d
    sget-object v7, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " rows for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_e

    .line 5771
    :catchall_3
    move-exception v4

    :try_start_e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 5796
    :cond_26
    :try_start_f
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_8

    .line 5798
    :catchall_4
    move-exception v4

    monitor-exit v23
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw v4

    .line 5844
    :cond_27
    const-string v5, "<unknown>"

    goto/16 :goto_9

    .line 5861
    :cond_28
    const-string v5, "<unknown>"

    goto/16 :goto_b

    .line 5889
    :cond_29
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ignoring genre in update: count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " match = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 5901
    :sswitch_1
    sget-object v5, Lcom/android/providers/media/Columns;->IGNORE_NOTIFY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_34

    .line 5902
    const/4 v13, 0x0

    .line 5904
    :goto_f
    new-instance v5, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 5918
    const-string v6, "bucket_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5919
    const-string v6, "bucket_display_name"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5921
    const-string v6, "_data"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5922
    if-eqz v6, :cond_2a

    .line 5923
    invoke-static {v6, v5}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 5925
    :cond_2a
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->computeTakenTime(Landroid/content/ContentValues;)V

    .line 5929
    sget-boolean v6, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v6, :cond_2c

    .line 5930
    const/16 v6, 0xc8

    move/from16 v0, v27

    if-eq v0, v6, :cond_2b

    const/16 v6, 0xc9

    move/from16 v0, v27

    if-ne v0, v6, :cond_2c

    .line 5931
    :cond_2b
    const-string v6, "_display_name"

    const-string v7, "title_pinyin"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5936
    :cond_2c
    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v28

    iput v6, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 5937
    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v4, v6, v5, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 5942
    if-lez v12, :cond_2f

    const-string v6, "_data"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 5943
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v28

    iput v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 5944
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->READY_FLAG_PROJECTION:[Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result-object v11

    .line 5947
    if-eqz v11, :cond_2f

    .line 5949
    :cond_2d
    :goto_10
    :try_start_11
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 5950
    const/4 v5, 0x2

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 5951
    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2d

    .line 5952
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0xa

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/media/MediaProvider;->requestMediaThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/android/providers/media/MediaThumbRequest;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_10

    .line 5957
    :catchall_5
    move-exception v4

    :try_start_12
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_2e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2f
    move v5, v12

    move v6, v13

    .line 5962
    goto/16 :goto_5

    .line 5966
    :sswitch_2
    new-instance v5, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 5967
    sget-boolean v6, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v6, :cond_30

    .line 5968
    const-string v6, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5969
    const-string v6, "name"

    const-string v7, "name_pinyin"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5971
    :cond_30
    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v4, v6, v5, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    move/from16 v6, v26

    .line 5974
    goto/16 :goto_5

    .line 5979
    :sswitch_3
    const-string v5, "move"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5980
    if-eqz v5, :cond_15

    .line 5981
    const-string v5, "play_order"

    .line 5982
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 5983
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 5984
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    .line 5985
    const/4 v5, 0x3

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 5986
    const/4 v5, 0x5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v5, p0

    move-object/from16 v6, v28

    move-object v7, v4

    .line 5987
    invoke-direct/range {v5 .. v11}, Lcom/android/providers/media/MediaProvider;->movePlaylistEntry(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;JII)I

    move-result v4

    monitor-exit v29

    goto/16 :goto_0

    .line 5989
    :cond_31
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Need to specify "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when using \'move\' parameter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 6011
    :cond_32
    if-lez v5, :cond_33

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-nez v4, :cond_33

    if-eqz v6, :cond_33

    .line 6013
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_33
    move v4, v5

    .line 6015
    goto/16 :goto_0

    :cond_34
    move/from16 v13, v26

    goto/16 :goto_f

    :cond_35
    move v6, v5

    goto/16 :goto_a

    :cond_36
    move-object v6, v12

    goto/16 :goto_4

    :cond_37
    move-object/from16 v25, v5

    goto/16 :goto_3

    .line 5712
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x6e -> :sswitch_2
        0x71 -> :sswitch_3
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
    .end sparse-switch
.end method
