.class public Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;
.super Ljava/lang/Object;
.source "SimeDbUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_RETRY_TIME:I = 0x3

.field public static final SIME_DB_COUNT:I = 0x7

.field public static final SIME_DB_DATA:I = 0x1

.field public static final SIME_DB_DATE_FORMAT:Ljava/lang/String; = "yyyy.MM.dd"

.field public static final SIME_DB_INIT_VALUE:I = 0x0

.field public static final SIME_DB_MAX_INDEX:I = 0x7

.field private static final SIME_DB_SIZE_K:I = 0x400

.field public static final SIME_DB_UPDATE_AUTOMATIC:I = 0x1

.field public static final SIME_DB_UPDATE_AUTOMATICAL_UPDATING:I = 0x7

.field public static final SIME_DB_UPDATE_CONNECT_ERROR:I = 0xb

.field public static final SIME_DB_UPDATE_FAILED:I = 0x4

.field public static final SIME_DB_UPDATE_INVALID_MSG:I = -0x1

.field public static final SIME_DB_UPDATE_IN_PROGRESS:I = 0x6

.field public static final SIME_DB_UPDATE_MANUAL:I = 0x0

.field public static final SIME_DB_UPDATE_MAUNAL_UPDATING:I = 0x8

.field public static final SIME_DB_UPDATE_NETWORK_DOWN:I = 0x2

.field public static final SIME_DB_UPDATE_NETWORK_ERROR:I = 0x9

.field public static final SIME_DB_UPDATE_NEW_VERSION_ARRIVE:I = 0xa

.field public static final SIME_DB_UPDATE_NOTICE:I = 0x2

.field public static final SIME_DB_UPDATE_NO_NETWORK:I = 0x1

.field public static final SIME_DB_UPDATE_SUCCESS:I = 0x0

.field public static final SIME_DB_UPDATE_TIMEOUT:I = 0x5

.field public static final SIME_DB_UPDATE_VERSION_SAME:I = 0x3

.field public static final SIME_DB_VERSION:I = 0x0

.field private static final SIME_LDB_CHN_HK_NAME:Ljava/lang/String; = "traditional_hk.ldb"

.field private static final SIME_LDB_CHN_HK_VERSION:Ljava/lang/String; = "traditional_hk.ver"

.field private static final SIME_LDB_CHN_SIMPLIFY_NAME:Ljava/lang/String; = "simplified_chinese.ldb"

.field private static final SIME_LDB_CHN_SIMPLIFY_VERSION:Ljava/lang/String; = "simplified_chinese.ver"

.field private static final SIME_LDB_CHN_TW_NAME:Ljava/lang/String; = "traditional_tw.ldb"

.field private static final SIME_LDB_CHN_TW_VERSION:Ljava/lang/String; = "traditional_tw.ver"

.field private static final SIME_LDB_DOWNLOAD_DIR:Ljava/lang/String; = "/data/data/com.samsung.inputmethod/ldb/"

.field public static final SIME_LDB_ENGLISH:I = 0x0

.field private static final SIME_LDB_ENGLISH_NAME:Ljava/lang/String; = "english.ldb"

.field private static final SIME_LDB_ENGLISH_VERSION:Ljava/lang/String; = "english.ver"

.field public static final SIME_LDB_SIMPLIFIED_CHINESE:I = 0x1

.field public static final SIME_LDB_TRADITIONAL_HK:I = 0x2

.field public static final SIME_LDB_TRADITIONAL_TW:I = 0x3

.field private static final SIME_LDB_URI:Ljava/lang/String; = "http://xiazai.samsungmobile.com.cn/number_region/ldb/"

.field private static final SIME_MDB_CHN_HK_NAME:Ljava/lang/String; = "traditional_hk.mdb"

.field private static final SIME_MDB_CHN_HK_VERSION:Ljava/lang/String; = "traditional_hk_mdb.ver"

.field private static final SIME_MDB_CHN_SIMPLIFY_NAME:Ljava/lang/String; = "simplified_chinese.mdb"

.field private static final SIME_MDB_CHN_SIMPLIFY_VERSION:Ljava/lang/String; = "simplified_chinese_mdb.ver"

.field private static final SIME_MDB_CHN_TW_NAME:Ljava/lang/String; = "traditional_tw.mdb"

.field private static final SIME_MDB_CHN_TW_VERSION:Ljava/lang/String; = "traditional_tw_mdb.ver"

.field private static final SIME_MDB_DOWNLAOD_DIR:Ljava/lang/String; = "/data/data/com.samsung.inputmethod/mdb/"

.field public static final SIME_MDB_SIMPLIFIED_CHINESE:I = 0x4

.field public static final SIME_MDB_TRADITIONAL_HK:I = 0x5

.field public static final SIME_MDB_TRADITIONAL_TW:I = 0x6

.field private static final SIME_MDB_URI:Ljava/lang/String; = "http://xiazai.samsungmobile.com.cn/number_region/mdb/"

.field private static final TAG:Ljava/lang/String; = "SimeDbUpdateManager"

.field private static final mDBDataPath:[Ljava/lang/String;

.field public static final mDBDataURI:[Ljava/lang/String;

.field private static final mDBVersionPath:[Ljava/lang/String;

.field public static final mDBVersionURI:[Ljava/lang/String;

.field private static mInstance:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentHandler:Landroid/os/Handler;

.field private mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

.field private mDbUpdateFileInfo:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;

.field private mDbUpdateMethod:I

.field private mDownloadThread:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;

.field private mLastMessageID:I

.field private mNotificationHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mProgressBarNotification:Landroid/app/Notification;

.field private mUIHandler:Landroid/os/Handler;

.field private mbUpdating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://xiazai.samsungmobile.com.cn/number_region/ldb/english.ver"

    aput-object v1, v0, v3

    const-string v1, "http://xiazai.samsungmobile.com.cn/number_region/ldb/simplified_chinese.ver"

    aput-object v1, v0, v4

    const-string v1, "http://xiazai.samsungmobile.com.cn/number_region/ldb/traditional_hk.ver"

    aput-object v1, v0, v5

    const-string v1, "http://xiazai.samsungmobile.com.cn/number_region/ldb/traditional_tw.ver"

    aput-object v1, v0, v6

    const-string v1, "http://xiazai.samsungmobile.com.cn/number_region/mdb/simplified_chinese_mdb.ver"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "http://xiazai.samsungmobile.com.cn/number_region/mdb/traditional_hk_mdb.ver"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "http://xiazai.samsungmobile.com.cn/number_region/mdb/traditional_tw_mdb.ver"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDBVersionURI:[Ljava/lang/String;

    .line 182
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://xiazai.samsungmobile.com.cn/number_region/ldb/english.ldb"

    aput-object v1, v0, v3

    const-string v1, "http://xiazai.samsungmobile.com.cn/number_region/ldb/simplified_chinese.ldb"

    aput-object v1, v0, v4

    const-string v1, "http://xiazai.samsungmobile.com.cn/number_region/ldb/traditional_hk.ldb"

    aput-object v1, v0, v5

    const-string v1, "http://xiazai.samsungmobile.com.cn/number_region/ldb/traditional_tw.ldb"

    aput-object v1, v0, v6

    const-string v1, "http://xiazai.samsungmobile.com.cn/number_region/mdb/simplified_chinese.mdb"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "http://xiazai.samsungmobile.com.cn/number_region/mdb/traditional_hk.mdb"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "http://xiazai.samsungmobile.com.cn/number_region/mdb/traditional_tw.mdb"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDBDataURI:[Ljava/lang/String;

    .line 192
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/data/data/com.samsung.inputmethod/ldb/english.ver"

    aput-object v1, v0, v3

    const-string v1, "/data/data/com.samsung.inputmethod/ldb/simplified_chinese.ver"

    aput-object v1, v0, v4

    const-string v1, "/data/data/com.samsung.inputmethod/ldb/traditional_hk.ver"

    aput-object v1, v0, v5

    const-string v1, "/data/data/com.samsung.inputmethod/ldb/traditional_tw.ver"

    aput-object v1, v0, v6

    const-string v1, "/data/data/com.samsung.inputmethod/mdb/simplified_chinese_mdb.ver"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "/data/data/com.samsung.inputmethod/mdb/traditional_hk_mdb.ver"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/data/data/com.samsung.inputmethod/mdb/traditional_tw_mdb.ver"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDBVersionPath:[Ljava/lang/String;

    .line 203
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/data/data/com.samsung.inputmethod/ldb/english.ldb"

    aput-object v1, v0, v3

    const-string v1, "/data/data/com.samsung.inputmethod/ldb/simplified_chinese.ldb"

    aput-object v1, v0, v4

    const-string v1, "/data/data/com.samsung.inputmethod/ldb/traditional_hk.ldb"

    aput-object v1, v0, v5

    const-string v1, "/data/data/com.samsung.inputmethod/ldb/traditional_tw.ldb"

    aput-object v1, v0, v6

    const-string v1, "/data/data/com.samsung.inputmethod/mdb/simplified_chinese.mdb"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "/data/data/com.samsung.inputmethod/mdb/traditional_hk.mdb"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/data/data/com.samsung.inputmethod/mdb/traditional_tw.mdb"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDBDataPath:[Ljava/lang/String;

    .line 243
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mInstance:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-boolean v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->DEBUG:Z

    .line 227
    iput-boolean v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mbUpdating:Z

    .line 229
    iput-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDownloadThread:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;

    .line 230
    iput-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateFileInfo:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;

    .line 232
    iput-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mUIHandler:Landroid/os/Handler;

    .line 233
    iput-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mNotificationHandler:Landroid/os/Handler;

    .line 234
    iput-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mCurrentHandler:Landroid/os/Handler;

    .line 238
    iput v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mLastMessageID:I

    .line 258
    iput-object p1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    .line 260
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.samsung.inputmethod/ldb/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, ldbDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 266
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.samsung.inputmethod/mdb/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, mdbDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 272
    :cond_1
    new-instance v2, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    iget-object v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    .line 274
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 275
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->createProgressBarNotification()V

    .line 276
    new-instance v2, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;

    invoke-direct {v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateFileInfo:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;

    .line 278
    new-instance v2, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$1;-><init>(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mNotificationHandler:Landroid/os/Handler;

    .line 288
    iget-boolean v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "SimeDbUpdateManager"

    const-string v3, "SimeDbUpdateManager Created.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_2
    return-void
.end method

.method private CopyFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .parameter "strSrc"
    .parameter "strDst"
    .parameter "bDelSrc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1034
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1035
    .local v4, src:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1037
    .local v2, dst:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1038
    iget-boolean v7, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "SimeDbUpdateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copy file: Src file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not exits!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_0
    :goto_0
    return v6

    .line 1042
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1043
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1045
    :cond_2
    const/4 v3, 0x0

    .line 1046
    .local v3, from:Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 1048
    .local v5, to:Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    .end local v3           #from:Ljava/io/BufferedInputStream;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1049
    .restart local v3       #from:Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    .end local v5           #to:Ljava/io/BufferedOutputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1051
    .restart local v5       #to:Ljava/io/BufferedOutputStream;
    const/16 v7, 0x2800

    new-array v0, v7, [B

    .line 1052
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 1053
    .local v1, bytesRead:I
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    .line 1054
    invoke-virtual {v5, v0, v6, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 1055
    :cond_3
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1057
    if-eqz v3, :cond_4

    .line 1058
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 1059
    :cond_4
    if-eqz v5, :cond_5

    .line 1060
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 1062
    :cond_5
    if-eqz p3, :cond_6

    .line 1063
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1065
    :cond_6
    const/4 v6, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mbUpdating:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mbUpdating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateMethod:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->notifyUpdateState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->deleteDownloadFiles(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getDownloadFileName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->CopyFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->dbSetUpdateDate(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateFileInfo:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->isSameVersion(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private cancelUpdateNotification()V
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 884
    return-void
.end method

.method private createProgressBarNotification()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 785
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mProgressBarNotification:Landroid/app/Notification;

    .line 786
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mProgressBarNotification:Landroid/app/Notification;

    const v3, 0x7f020002

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 787
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mProgressBarNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 790
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 791
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 794
    .local v1, pi:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mProgressBarNotification:Landroid/app/Notification;

    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f03000c

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 795
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mProgressBarNotification:Landroid/app/Notification;

    const/16 v3, 0x12

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 796
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mProgressBarNotification:Landroid/app/Notification;

    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 797
    return-void
.end method

.method private dbSetUpdateDate(IZ)V
    .locals 3
    .parameter "dbType"
    .parameter "bDefaultDate"

    .prologue
    .line 1091
    if-ltz p1, :cond_0

    const/4 v1, 0x7

    if-ge p1, v1, :cond_0

    .line 1093
    const/4 v0, 0x0

    .line 1095
    .local v0, updateDate:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 1096
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getDbDateInfoFromVersion(I)Ljava/lang/String;

    move-result-object v0

    .line 1100
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->setDbUpdateDate(ILjava/lang/String;)V

    .line 1102
    .end local v0           #updateDate:Ljava/lang/String;
    :cond_0
    return-void

    .line 1098
    .restart local v0       #updateDate:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy.MM.dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private deleteDownloadFiles(Ljava/lang/String;Z)V
    .locals 8
    .parameter "dirName"
    .parameter "bDeltempOnly"

    .prologue
    .line 1014
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 1018
    .local v4, files:[Ljava/io/File;
    if-eqz v4, :cond_0

    array-length v7, v4

    if-nez v7, :cond_1

    .line 1030
    :cond_0
    return-void

    .line 1021
    :cond_1
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v0, v5

    .line 1022
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1023
    .local v3, fileName:Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 1024
    const-string v7, "temp"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1025
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1021
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1027
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private deletefile(Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"

    .prologue
    .line 1005
    if-eqz p1, :cond_0

    .line 1006
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1007
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1008
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1011
    .end local v0           #file:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private getCurrentVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 999
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->readVersionFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDbDateInfoFromVersion(I)Ljava/lang/String;
    .locals 1
    .parameter "dbType"

    .prologue
    .line 994
    sget-object v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDBVersionURI:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getCurrentVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDownloadFileName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 4
    .parameter "urlString"
    .parameter "bIsTempFile"
    .parameter "bIncludePath"

    .prologue
    .line 1070
    const-string v0, ""

    .line 1071
    .local v0, fileName:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1072
    const-string v0, "temp_"

    .line 1074
    :cond_0
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1076
    .local v1, splitStr:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1078
    if-eqz p3, :cond_1

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 1080
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    aget-object v2, v1, v2

    const-string v3, "ldb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/com.samsung.inputmethod/ldb/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1086
    :cond_1
    :goto_0
    return-object v0

    .line 1083
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/com.samsung.inputmethod/mdb/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 247
    const-class v1, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mInstance:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    if-nez v0, :cond_0

    .line 248
    if-eqz p0, :cond_0

    .line 249
    new-instance v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mInstance:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    .line 252
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mInstance:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isSameVersion(Ljava/lang/String;)Z
    .locals 6
    .parameter "downloadVerURL"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 921
    const/4 v0, 0x0

    .line 922
    .local v0, currentVersion:Ljava/lang/String;
    const/4 v1, 0x0

    .line 924
    .local v1, downloadVersion:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 926
    invoke-direct {p0, p1, v2, v4}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getDownloadFileName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getCurrentVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 928
    invoke-direct {p0, p1, v4, v4}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getDownloadFileName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->readVersionFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 930
    iget-boolean v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SimeDbUpdateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SimeDbUpdateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 936
    :cond_2
    :goto_0
    return v2

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private notifyUpdateState(I)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x6

    .line 768
    if-ne p1, v2, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mLastMessageID:I

    if-eq v1, v2, :cond_1

    .line 769
    :cond_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->cancelUpdateNotification()V

    .line 771
    :cond_1
    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mUIHandler:Landroid/os/Handler;

    if-nez v1, :cond_3

    .line 772
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mNotificationHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mCurrentHandler:Landroid/os/Handler;

    .line 776
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mCurrentHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 777
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateFileInfo:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 779
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mCurrentHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 781
    iput p1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mLastMessageID:I

    .line 782
    return-void

    .line 774
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mUIHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mCurrentHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private readVersionFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "fileNameWithpath"

    .prologue
    .line 941
    const/4 v8, 0x0

    .line 943
    .local v8, readString:Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 945
    const-string v12, "/"

    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 946
    .local v11, splitStr:[Ljava/lang/String;
    array-length v12, v11

    add-int/lit8 v12, v12, -0x1

    aget-object v5, v11, v12

    .line 948
    .local v5, fileName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 949
    .local v6, is:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 951
    .local v10, size:I
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 954
    .local v4, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 955
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6           #is:Ljava/io/InputStream;
    .local v7, is:Ljava/io/InputStream;
    move-object v6, v7

    .line 960
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v10

    .line 961
    if-eqz v10, :cond_0

    .line 962
    new-array v0, v10, [B

    .line 963
    .local v0, buffer:[B
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    .line 964
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v8           #readString:Ljava/lang/String;
    .local v9, readString:Ljava/lang/String;
    move-object v8, v9

    .line 976
    .end local v0           #buffer:[B
    .end local v9           #readString:Ljava/lang/String;
    .restart local v8       #readString:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 978
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 990
    .end local v4           #file:Ljava/io/File;
    .end local v5           #fileName:Ljava/lang/String;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v10           #size:I
    .end local v11           #splitStr:[Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v8

    .line 957
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #fileName:Ljava/lang/String;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v10       #size:I
    .restart local v11       #splitStr:[Ljava/lang/String;
    :cond_2
    :try_start_3
    iget-object v12, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    goto :goto_0

    .line 967
    :catch_0
    move-exception v2

    .line 969
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 971
    .end local v2           #e1:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 973
    .local v3, e2:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 976
    if-eqz v6, :cond_1

    .line 978
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 979
    :catch_2
    move-exception v1

    .line 981
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 979
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #e2:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 981
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 976
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    if-eqz v6, :cond_3

    .line 978
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 982
    :cond_3
    :goto_3
    throw v12

    .line 979
    :catch_4
    move-exception v1

    .line 981
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 988
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #fileName:Ljava/lang/String;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v10           #size:I
    .end local v11           #splitStr:[Ljava/lang/String;
    :cond_4
    iget-boolean v12, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->DEBUG:Z

    if-eqz v12, :cond_1

    const-string v12, "SimeDbUpdateManager"

    const-string v13, "readVersionFromFile input parame is NULL!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateProgressBarNotification()V
    .locals 6

    .prologue
    .line 801
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateFileInfo:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;

    iget v1, v2, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;->updateProgress:I

    .line 802
    .local v1, resultProgress:I
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateFileInfo:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;

    iget v2, v2, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;->dbType:I

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getDbUpdateString(I)Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, dbStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mProgressBarNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f0c0031

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 808
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mProgressBarNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f0c0032

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 812
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mProgressBarNotification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 815
    return-void
.end method


# virtual methods
.method public bIsHKTWDb(I)Z
    .locals 1
    .parameter "dbType"

    .prologue
    .line 438
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkNetworkEnabled()Z
    .locals 4

    .prologue
    .line 389
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 391
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 393
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dBUpdate([II)I
    .locals 5
    .parameter "dbType"
    .parameter "updateMethod"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 404
    const/4 v0, 0x4

    .line 406
    .local v0, result:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->checkNetworkEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 407
    const/4 v0, 0x1

    .line 408
    iget-boolean v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 409
    const-string v1, "SimeDbUpdateManager"

    const-string v2, "-----!checkNetworkEnabled()------SIME_DB_UPDATE_NO_NETWORK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->notifyUpdateState(I)V

    .line 434
    :goto_0
    return v0

    .line 412
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mbUpdating:Z

    if-eqz v1, :cond_3

    .line 414
    iget v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateMethod:I

    if-nez v1, :cond_2

    .line 415
    const/16 v0, 0x8

    .line 419
    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->notifyUpdateState(I)V

    goto :goto_0

    .line 417
    :cond_2
    const/4 v0, 0x7

    goto :goto_1

    .line 422
    :cond_3
    iput-boolean v4, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mbUpdating:Z

    .line 423
    iput p2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateMethod:I

    .line 424
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateFileInfo:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;

    aget v2, p1, v3

    iput v2, v1, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;->dbType:I

    .line 425
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateFileInfo:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;

    iput v3, v1, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;->updateProgress:I

    .line 427
    iget v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateMethod:I

    if-nez v1, :cond_4

    .line 428
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->notifyUpdateState(I)V

    .line 430
    :cond_4
    new-instance v1, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;

    invoke-direct {v1, p0, p1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;-><init>(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;[I)V

    iput-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDownloadThread:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;

    .line 431
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDownloadThread:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->start()V

    .line 432
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dbGetPopularDbUpdateDate()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 327
    const/4 v3, 0x0

    .line 328
    .local v3, latestDateStr:Ljava/lang/String;
    const/4 v6, 0x0

    .line 329
    .local v6, updateDateStr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 330
    .local v2, latestDate:Ljava/util/Date;
    const/4 v5, 0x0

    .line 332
    .local v5, updateDate:Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy.MM.dd"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v9}, Ljava/text/ParsePosition;-><init>(I)V

    .line 335
    .local v4, pos:Ljava/text/ParsePosition;
    iget-object v7, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-direct {p0, v10}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getDbDateInfoFromVersion(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdateDate(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    invoke-virtual {v0, v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 339
    const/4 v1, 0x5

    .local v1, i:I
    :goto_0
    const/4 v7, 0x6

    if-gt v1, v7, :cond_1

    .line 341
    iget-object v7, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getDbDateInfoFromVersion(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdateDate(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 342
    invoke-virtual {v4, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 343
    invoke-virtual {v0, v6, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    .line 345
    invoke-virtual {v2, v5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 346
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 347
    move-object v3, v6

    .line 339
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    :cond_1
    return-object v3
.end method

.method public dbGetUpdateDate(I)Ljava/lang/String;
    .locals 3
    .parameter "dbType"

    .prologue
    .line 310
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy.MM.dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, ret:Ljava/lang/String;
    if-ltz p1, :cond_0

    const/4 v1, 0x7

    if-ge p1, v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getDbDateInfoFromVersion(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdateDate(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_0
    return-object v0
.end method

.method public dbResetToDefault([I)V
    .locals 5
    .parameter "dbType"

    .prologue
    .line 375
    move-object v0, p1

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 377
    .local v3, type:I
    if-ltz v3, :cond_0

    const/4 v4, 0x7

    if-ge v3, v4, :cond_0

    .line 378
    sget-object v4, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDBVersionPath:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->deletefile(Ljava/lang/String;)V

    .line 379
    sget-object v4, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDBDataPath:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->deletefile(Ljava/lang/String;)V

    .line 380
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->dbSetUpdateDate(IZ)V

    .line 375
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    .end local v3           #type:I
    :cond_1
    return-void
.end method

.method public dbUpdateStop(I)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x6

    .line 357
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimeDbUpdateManager"

    const-string v1, "dbUpdateStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDownloadThread:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDownloadThread:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDownloadThread:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->stopDownload()V

    .line 363
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mCurrentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mCurrentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 367
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 368
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->notifyUpdateState(I)V

    .line 371
    :cond_2
    return-void
.end method

.method public getDbSettings()Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    return-object v0
.end method

.method public getDbUpdateString(I)Ljava/lang/String;
    .locals 2
    .parameter "dbType"

    .prologue
    .line 918
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0082

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDbUpdating()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mbUpdating:Z

    return v0
.end method

.method public isWLANConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 397
    iget-object v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 399
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 401
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sendUpdateNotification(I)V
    .locals 10
    .parameter "NotifyType"

    .prologue
    const v9, 0x7f0b0083

    const v8, 0x7f0b006e

    const/4 v7, 0x0

    .line 818
    const/4 v5, 0x6

    if-ne v5, p1, :cond_0

    .line 820
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->updateProgressBarNotification()V

    .line 879
    :goto_0
    return-void

    .line 824
    :cond_0
    const/4 v3, 0x0

    .line 825
    .local v3, notifyContent:Ljava/lang/String;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 826
    .local v1, mNotification:Landroid/app/Notification;
    const v5, 0x7f020002

    iput v5, v1, Landroid/app/Notification;->icon:I

    .line 827
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Landroid/app/Notification;->when:J

    .line 828
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 830
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 832
    .local v2, mNotificationManager:Landroid/app/NotificationManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 834
    .local v0, intent:Landroid/content/Intent;
    const/4 v5, -0x1

    iput v5, v1, Landroid/app/Notification;->defaults:I

    .line 835
    const/16 v5, 0x10

    iput v5, v1, Landroid/app/Notification;->flags:I

    .line 837
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 845
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    const-class v6, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 846
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0080

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 872
    :goto_1
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 875
    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 877
    invoke-virtual {v2, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 840
    .end local v4           #pi:Landroid/app/PendingIntent;
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    const-class v6, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 841
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0b008a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 842
    goto :goto_1

    .line 850
    :pswitch_3
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0b008b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 851
    goto :goto_1

    .line 853
    :pswitch_4
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0b007f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 854
    goto :goto_1

    .line 858
    :pswitch_5
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 859
    goto :goto_1

    .line 862
    :pswitch_6
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 863
    goto :goto_1

    .line 866
    :pswitch_7
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0081

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 867
    goto :goto_1

    .line 837
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    const/4 v1, 0x6

    .line 297
    iput-object p1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mUIHandler:Landroid/os/Handler;

    .line 299
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mbUpdating:Z

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mCurrentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mCurrentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 304
    :cond_0
    iget v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mLastMessageID:I

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->notifyUpdateState(I)V

    .line 306
    :cond_1
    return-void
.end method
