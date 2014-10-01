.class Lcom/sec/android/app/FileShareClient/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/FileShareClient/FileManager$1;,
        Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;
    }
.end annotation


# static fields
.field public static final GENERATE_FAIL:I = 0x0

.field public static final GENERATE_SUCCESS:I = 0x1

.field public static final GENERATING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[FileShare][Client]"

.field private static final TAGClass:Ljava/lang/String; = "FileManager: "

.field private static final URI_ERROR:I = 0x0

.field private static final URI_GENERATED:I = 0x1

.field private static final URI_NEED_TO_COPY_FILE:I = 0x3

.field private static final URI_NEED_TO_MAKE_VCARD:I = 0x2

.field private static final URI_VCARD_HEADER:Ljava/lang/String; = "content://com.android.contacts/contacts/as_multi_vcard/"

.field private static final URI_VCARD_WRITE_MAX:I = 0x3e8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mFileMaker:Ljava/lang/Thread;

.field private mResultHandler:Landroid/os/Handler;

.field private mRetFilePath:Ljava/lang/String;

.field private mTempFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mbDestroyed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mContext:Landroid/content/Context;

    .line 42
    iput-object v1, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mResultHandler:Landroid/os/Handler;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mRetFilePath:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mFileList:Ljava/util/ArrayList;

    .line 46
    iput-object v1, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mTempFileList:Ljava/util/ArrayList;

    .line 48
    iput-object v1, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mFileMaker:Ljava/lang/Thread;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mbDestroyed:Z

    .line 52
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/FileShareClient/FileManager;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/FileShareClient/FileManager;->uri2FileUri(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/FileShareClient/FileManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mRetFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/FileShareClient/FileManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/FileShareClient/FileManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mResultHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/FileShareClient/FileManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mbDestroyed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/FileShareClient/FileManager;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileShareClient/FileManager;->copyFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/FileShareClient/FileManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mTempFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private copyFile(Ljava/io/File;)Ljava/io/File;
    .locals 14
    .parameter "file"

    .prologue
    .line 426
    const/4 v5, 0x0

    .line 427
    .local v5, inFile:Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 429
    .local v8, outFile:Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sec/android/app/FileShareClient/FileManager;->getDestCopyFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, destPath:Ljava/lang/String;
    const-string v10, "[FileShare][Client]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FileManager: copyFile: dest "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v7, newFile:Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 436
    .end local v5           #inFile:Ljava/io/FileInputStream;
    .local v6, inFile:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v10, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 438
    const/16 v10, 0x200

    new-array v0, v10, [B

    .line 439
    .local v0, buffer:[B
    const/4 v9, 0x0

    .line 440
    .local v9, readCount:I
    :goto_0
    const/4 v10, -0x1

    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    if-eq v10, v9, :cond_4

    .line 441
    const/4 v10, 0x0

    invoke-virtual {v8, v0, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 444
    .end local v0           #buffer:[B
    .end local v9           #readCount:I
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 445
    .end local v6           #inFile:Ljava/io/FileInputStream;
    .local v2, e:Ljava/lang/Exception;
    .restart local v5       #inFile:Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    const-string v10, "[FileShare][Client]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FileManager: copyFile: Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 446
    const/4 v7, 0x0

    .line 449
    if-eqz v5, :cond_0

    .line 450
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 457
    :cond_0
    :goto_2
    if-eqz v8, :cond_1

    .line 458
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 465
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 466
    :cond_2
    const/4 v7, 0x0

    .line 467
    const-string v10, "[FileShare][Client]"

    const-string v11, "FileManager: copyFile: fail to copy"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_3
    return-object v7

    .line 449
    .end local v5           #inFile:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v6       #inFile:Ljava/io/FileInputStream;
    .restart local v9       #readCount:I
    :cond_4
    if-eqz v6, :cond_5

    .line 450
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 457
    :cond_5
    :goto_4
    if-eqz v8, :cond_6

    .line 458
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_6
    move-object v5, v6

    .line 462
    .end local v6           #inFile:Ljava/io/FileInputStream;
    .restart local v5       #inFile:Ljava/io/FileInputStream;
    goto :goto_3

    .line 452
    .end local v5           #inFile:Ljava/io/FileInputStream;
    .restart local v6       #inFile:Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 453
    .local v3, eIn:Ljava/io/IOException;
    const-string v10, "[FileShare][Client]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FileManager: copyFile: in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 460
    .end local v3           #eIn:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 461
    .local v4, eOut:Ljava/lang/Exception;
    const-string v10, "[FileShare][Client]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FileManager: copyFile: out "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 463
    .end local v6           #inFile:Ljava/io/FileInputStream;
    .restart local v5       #inFile:Ljava/io/FileInputStream;
    goto :goto_3

    .line 452
    .end local v0           #buffer:[B
    .end local v4           #eOut:Ljava/lang/Exception;
    .end local v9           #readCount:I
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 453
    .restart local v3       #eIn:Ljava/io/IOException;
    const-string v10, "[FileShare][Client]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FileManager: copyFile: in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 460
    .end local v3           #eIn:Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 461
    .restart local v4       #eOut:Ljava/lang/Exception;
    const-string v10, "[FileShare][Client]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FileManager: copyFile: out "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 448
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #eOut:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 449
    :goto_5
    if-eqz v5, :cond_7

    .line 450
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 457
    :cond_7
    :goto_6
    if-eqz v8, :cond_8

    .line 458
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 462
    :cond_8
    :goto_7
    throw v10

    .line 452
    :catch_5
    move-exception v3

    .line 453
    .restart local v3       #eIn:Ljava/io/IOException;
    const-string v11, "[FileShare][Client]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileManager: copyFile: in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 460
    .end local v3           #eIn:Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 461
    .restart local v4       #eOut:Ljava/lang/Exception;
    const-string v11, "[FileShare][Client]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileManager: copyFile: out "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 448
    .end local v4           #eOut:Ljava/lang/Exception;
    .end local v5           #inFile:Ljava/io/FileInputStream;
    .restart local v6       #inFile:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #inFile:Ljava/io/FileInputStream;
    .restart local v5       #inFile:Ljava/io/FileInputStream;
    goto :goto_5

    .line 444
    :catch_7
    move-exception v2

    goto/16 :goto_1
.end method

.method private getDestCopyFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filePath"

    .prologue
    .line 407
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 409
    .local v4, nPos:I
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, fileName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, destPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .local v1, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 415
    .local v3, index:I
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 416
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    add-int/lit8 v3, v3, 0x1

    .line 418
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v1       #file:Ljava/io/File;
    goto :goto_0

    .line 422
    :cond_0
    return-object v0
.end method

.method private getDestHtmlFile()Ljava/io/File;
    .locals 10

    .prologue
    .line 577
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 578
    .local v3, formatter:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 579
    .local v0, currentTime:Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, dTime:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mContext:Landroid/content/Context;

    const v9, 0x7f050022

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 582
    .local v6, name:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".html"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 583
    .local v4, htmlName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v2, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 585
    .local v2, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 586
    .local v5, index:I
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 587
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".html"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 588
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 590
    :cond_0
    return-object v2
.end method

.method private getDestVcardPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter "uri"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 477
    const-string v8, ""

    .line 478
    .local v8, retPath:Ljava/lang/String;
    const-string v7, ""

    .line 479
    .local v7, filename:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_display_name"

    aput-object v0, v2, v9

    .line 481
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 482
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 483
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 484
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 487
    :cond_0
    if-eqz v6, :cond_1

    .line 488
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 491
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 492
    const-string v0, "[FileShare][Client]"

    invoke-static {v0, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-object v8
.end method

.method private getFilePathFromUri(Landroid/net/Uri;)I
    .locals 12
    .parameter "contentUri"

    .prologue
    const/4 v3, 0x0

    .line 352
    const/4 v11, 0x0

    .line 354
    .local v11, nRetResult:I
    if-nez p1, :cond_0

    .line 355
    const-string v0, "[FileShare][Client]"

    const-string v1, "FileManager: getFilePathFromUri: In is null "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 399
    :goto_0
    return v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 360
    .local v7, contentType:Ljava/lang/String;
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileManager: getFilePathFromUri: contentType > "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    if-eqz v7, :cond_1

    const-string v0, "text/x-vcard"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    const/4 v0, 0x2

    goto :goto_0

    .line 365
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 366
    .local v2, proj:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 367
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_2

    move v0, v11

    .line 368
    goto :goto_0

    .line 371
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gez v0, :cond_3

    .line 372
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileManager: getFilePathFromUri: wrong query > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 373
    goto :goto_0

    .line 376
    :cond_3
    const/4 v6, -0x1

    .line 378
    .local v6, col:I
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 380
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 382
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mRetFilePath:Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mRetFilePath:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 384
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mRetFilePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 398
    :goto_2
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileManager: getFilePathFromUri: ret > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " path > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mRetFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 399
    goto/16 :goto_0

    .line 386
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mRetFilePath:Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mRetFilePath:Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 388
    .local v10, index:I
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mRetFilePath:Ljava/lang/String;

    add-int/lit8 v1, v10, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mRetFilePath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 390
    .end local v10           #index:I
    :cond_5
    const/4 v11, 0x1

    goto :goto_1

    .line 392
    :catch_0
    move-exception v9

    .line 393
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileManager: getFilePathFromUri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private uri2FileUri(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "mime"

    .prologue
    const/4 v1, 0x0

    .line 323
    const-string v2, "[FileShare][Client]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileManager: uri2FileUri : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mime : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    if-nez p1, :cond_0

    .line 326
    const-string v2, "[FileShare][Client]"

    const-string v3, "FileManager: uri : is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_0
    return v1

    .line 331
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, scheme:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 333
    const-string v2, "[FileShare][Client]"

    const-string v3, "FileManager: scheme : is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    :cond_1
    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileShareClient/FileManager;->getFilePathFromUri(Landroid/net/Uri;)I

    move-result v1

    goto :goto_0

    .line 339
    :cond_2
    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 341
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mRetFilePath:Ljava/lang/String;

    .line 347
    const/4 v1, 0x1

    goto :goto_0

    .line 343
    :cond_3
    const-string v2, "[FileShare][Client]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileManager: path : can\'t handle >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method createHtml(Ljava/lang/CharSequence;)Ljava/io/File;
    .locals 15
    .parameter "charSeq"

    .prologue
    .line 595
    if-nez p1, :cond_1

    .line 596
    const-string v11, "[FileShare][Client]"

    const-string v12, "FileManager: createHtml: charSeq is null"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v3, 0x0

    .line 648
    :cond_0
    :goto_0
    return-object v3

    .line 601
    :cond_1
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 602
    .local v9, strBody:Ljava/lang/StringBuffer;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/FileShareClient/FileManager;->getMultiLiskList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 604
    .local v5, linkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_2

    .line 605
    const-string v11, "[FileShare][Client]"

    const-string v12, "FileManager: createHtml: linkList is null"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v3, 0x0

    goto :goto_0

    .line 609
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 610
    .local v6, nSize:I
    const-string v11, "[FileShare][Client]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileManager: createHtml: link > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_4

    .line 613
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 614
    .local v8, start_position:I
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v2, v8, v11

    .line 615
    .local v2, end_position:I
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "www"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 616
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<a href=\"http://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</a>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v2, v11}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 618
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<a href=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</a>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v2, v11}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 623
    .end local v2           #end_position:I
    .end local v8           #start_position:I
    :cond_4
    const-string v10, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/></head><body>"

    .line 624
    .local v10, strHtml:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 625
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</body></html>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 628
    const/4 v7, 0x0

    .line 629
    .local v7, outStream:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 633
    .local v3, htmlFile:Ljava/io/File;
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/FileManager;->getDestHtmlFile()Ljava/io/File;

    move-result-object v3

    .line 634
    iget-object v11, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 635
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 641
    if-eqz v7, :cond_0

    .line 642
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 643
    :catch_0
    move-exception v1

    .line 644
    .local v1, eOst:Ljava/lang/Exception;
    const-string v11, "[FileShare][Client]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileManager: createHtml: OutStream "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 636
    .end local v1           #eOst:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 637
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v11, "[FileShare][Client]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileManager: createHtml: Exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 638
    const/4 v3, 0x0

    .line 641
    if-eqz v7, :cond_0

    .line 642
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 643
    :catch_2
    move-exception v1

    .line 644
    .restart local v1       #eOst:Ljava/lang/Exception;
    const-string v11, "[FileShare][Client]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileManager: createHtml: OutStream "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 640
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #eOst:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 641
    if-eqz v7, :cond_5

    .line 642
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 645
    :cond_5
    :goto_3
    throw v11

    .line 643
    :catch_3
    move-exception v1

    .line 644
    .restart local v1       #eOst:Ljava/lang/Exception;
    const-string v12, "[FileShare][Client]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileManager: createHtml: OutStream "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method createVcard(Landroid/net/Uri;)Ljava/io/File;
    .locals 21
    .parameter "uri"

    .prologue
    .line 499
    const/4 v7, 0x0

    .line 500
    .local v7, inStream:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 501
    .local v10, outStream:Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .line 502
    .local v15, vCard:Ljava/io/File;
    const/4 v12, 0x1

    .line 505
    .local v12, reqWrite:Z
    const/4 v14, 0x0

    .line 506
    .local v14, uriString:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 507
    .local v9, nextToken:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/FileShareClient/FileManager;->getDestVcardPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 508
    .local v13, savePath:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 510
    .end local v15           #vCard:Ljava/io/File;
    .local v16, vCard:Ljava/io/File;
    :cond_0
    if-eqz v12, :cond_b

    .line 511
    move-object v14, v9

    .line 512
    const/4 v8, 0x0

    .line 513
    .local v8, index:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/16 v17, 0x3e8

    move/from16 v0, v17

    if-ge v6, v0, :cond_1

    .line 514
    :try_start_1
    const-string v17, "%3A"

    add-int/lit8 v18, v8, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 515
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_4

    .line 519
    :cond_1
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_5

    .line 520
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "content://com.android.contacts/contacts/as_multi_vcard/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    add-int/lit8 v18, v8, 0x3

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 521
    const/16 v17, 0x0

    add-int/lit8 v18, v8, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 522
    const/4 v12, 0x1

    .line 527
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileShareClient/FileManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 528
    if-nez v7, :cond_6

    .line 529
    const-string v17, "[FileShare][Client]"

    const-string v18, "FileManager: createVcard: fail to create [inStream is null]"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 530
    const/4 v15, 0x0

    .line 548
    if-eqz v7, :cond_2

    .line 549
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 556
    :cond_2
    :goto_2
    if-eqz v10, :cond_3

    .line 557
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_3
    move-object/from16 v17, v15

    move-object/from16 v15, v16

    .line 569
    .end local v6           #i:I
    .end local v8           #index:I
    .end local v9           #nextToken:Ljava/lang/String;
    .end local v13           #savePath:Ljava/lang/String;
    .end local v16           #vCard:Ljava/io/File;
    .restart local v15       #vCard:Ljava/io/File;
    :goto_4
    return-object v17

    .line 513
    .end local v15           #vCard:Ljava/io/File;
    .restart local v6       #i:I
    .restart local v8       #index:I
    .restart local v9       #nextToken:Ljava/lang/String;
    .restart local v13       #savePath:Ljava/lang/String;
    .restart local v16       #vCard:Ljava/io/File;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 524
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 551
    :catch_0
    move-exception v4

    .line 552
    .local v4, eIst:Ljava/io/IOException;
    const-string v17, "[FileShare][Client]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "FileManager: createVcard: InStream "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 559
    .end local v4           #eIst:Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 560
    .local v5, eOst:Ljava/lang/Exception;
    const-string v17, "[FileShare][Client]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "FileManager: createVcard: OutStream"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 532
    .end local v5           #eOst:Ljava/lang/Exception;
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileShareClient/FileManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const v19, 0x8001

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10

    .line 534
    const/16 v17, 0x200

    move/from16 v0, v17

    new-array v2, v0, [B

    .line 535
    .local v2, buffer:[B
    const/4 v11, 0x0

    .line 536
    .local v11, readCount:I
    :cond_7
    :goto_5
    const/16 v17, -0x1

    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v11

    move/from16 v0, v17

    if-eq v0, v11, :cond_0

    .line 537
    if-lez v11, :cond_7

    .line 538
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v2, v0, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 542
    .end local v2           #buffer:[B
    .end local v11           #readCount:I
    :catch_2
    move-exception v3

    move-object/from16 v15, v16

    .line 544
    .end local v6           #i:I
    .end local v8           #index:I
    .end local v9           #nextToken:Ljava/lang/String;
    .end local v13           #savePath:Ljava/lang/String;
    .end local v16           #vCard:Ljava/io/File;
    .local v3, e:Ljava/lang/Exception;
    .restart local v15       #vCard:Ljava/io/File;
    :goto_6
    :try_start_5
    const-string v17, "[FileShare][Client]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "FileManager: createVcard: Exception "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 548
    if-eqz v7, :cond_8

    .line 549
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 556
    :cond_8
    :goto_7
    if-eqz v10, :cond_9

    .line 557
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 564
    .end local v3           #e:Ljava/lang/Exception;
    :cond_9
    :goto_8
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_a

    .line 565
    const/4 v15, 0x0

    .line 566
    const-string v17, "[FileShare][Client]"

    const-string v18, "FileManager: createVcard: fail to create"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v17, v15

    .line 569
    goto/16 :goto_4

    .line 548
    .end local v15           #vCard:Ljava/io/File;
    .restart local v9       #nextToken:Ljava/lang/String;
    .restart local v13       #savePath:Ljava/lang/String;
    .restart local v16       #vCard:Ljava/io/File;
    :cond_b
    if-eqz v7, :cond_c

    .line 549
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 556
    :cond_c
    :goto_9
    if-eqz v10, :cond_d

    .line 557
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_d
    move-object/from16 v15, v16

    .line 561
    .end local v16           #vCard:Ljava/io/File;
    .restart local v15       #vCard:Ljava/io/File;
    goto :goto_8

    .line 551
    .end local v15           #vCard:Ljava/io/File;
    .restart local v16       #vCard:Ljava/io/File;
    :catch_3
    move-exception v4

    .line 552
    .restart local v4       #eIst:Ljava/io/IOException;
    const-string v17, "[FileShare][Client]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "FileManager: createVcard: InStream "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 559
    .end local v4           #eIst:Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 560
    .restart local v5       #eOst:Ljava/lang/Exception;
    const-string v17, "[FileShare][Client]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "FileManager: createVcard: OutStream"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v15, v16

    .line 562
    .end local v16           #vCard:Ljava/io/File;
    .restart local v15       #vCard:Ljava/io/File;
    goto :goto_8

    .line 551
    .end local v5           #eOst:Ljava/lang/Exception;
    .end local v9           #nextToken:Ljava/lang/String;
    .end local v13           #savePath:Ljava/lang/String;
    .restart local v3       #e:Ljava/lang/Exception;
    :catch_5
    move-exception v4

    .line 552
    .restart local v4       #eIst:Ljava/io/IOException;
    const-string v17, "[FileShare][Client]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "FileManager: createVcard: InStream "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 559
    .end local v4           #eIst:Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 560
    .restart local v5       #eOst:Ljava/lang/Exception;
    const-string v17, "[FileShare][Client]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "FileManager: createVcard: OutStream"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 547
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #eOst:Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 548
    :goto_a
    if-eqz v7, :cond_e

    .line 549
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 556
    :cond_e
    :goto_b
    if-eqz v10, :cond_f

    .line 557
    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 561
    :cond_f
    :goto_c
    throw v17

    .line 551
    :catch_7
    move-exception v4

    .line 552
    .restart local v4       #eIst:Ljava/io/IOException;
    const-string v18, "[FileShare][Client]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "FileManager: createVcard: InStream "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 559
    .end local v4           #eIst:Ljava/io/IOException;
    :catch_8
    move-exception v5

    .line 560
    .restart local v5       #eOst:Ljava/lang/Exception;
    const-string v18, "[FileShare][Client]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "FileManager: createVcard: OutStream"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 547
    .end local v5           #eOst:Ljava/lang/Exception;
    .end local v15           #vCard:Ljava/io/File;
    .restart local v6       #i:I
    .restart local v8       #index:I
    .restart local v9       #nextToken:Ljava/lang/String;
    .restart local v13       #savePath:Ljava/lang/String;
    .restart local v16       #vCard:Ljava/io/File;
    :catchall_1
    move-exception v17

    move-object/from16 v15, v16

    .end local v16           #vCard:Ljava/io/File;
    .restart local v15       #vCard:Ljava/io/File;
    goto :goto_a

    .line 542
    .end local v6           #i:I
    .end local v8           #index:I
    .end local v9           #nextToken:Ljava/lang/String;
    .end local v13           #savePath:Ljava/lang/String;
    :catch_9
    move-exception v3

    goto/16 :goto_6
.end method

.method public destroy()V
    .locals 5

    .prologue
    .line 145
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mFileMaker:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mFileMaker:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mFileMaker:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 147
    const-string v2, "[FileShare][Client]"

    const-string v3, "FileManager: destroy : call interruped"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    const-string v2, "[FileShare][Client]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileManager: destroy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mTempFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mTempFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mTempFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 154
    .local v1, tmp:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 158
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #tmp:Ljava/io/File;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mbDestroyed:Z

    .line 159
    return-void
.end method

.method public generateFileList(Landroid/content/Intent;Landroid/os/Handler;)V
    .locals 11
    .parameter "intent"
    .parameter "resultHandler"

    .prologue
    .line 56
    iput-object p2, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mResultHandler:Landroid/os/Handler;

    .line 57
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mFileList:Ljava/util/ArrayList;

    .line 58
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mTempFileList:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, action:Ljava/lang/String;
    const-string v8, "[FileShare][Client]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileManager: action : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v8, "[FileShare][Client]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileManager: type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 65
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 67
    .local v5, stream:Landroid/net/Uri;
    if-eqz v5, :cond_3

    .line 68
    new-instance v2, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;

    const/4 v8, 0x0

    invoke-direct {v2, p0, v8}, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;-><init>(Lcom/sec/android/app/FileShareClient/FileManager;Lcom/sec/android/app/FileShareClient/FileManager$1;)V

    .line 69
    .local v2, fileMaker:Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->addUri(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 70
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mResultHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 138
    .end local v2           #fileMaker:Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;
    .end local v5           #stream:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 74
    .restart local v2       #fileMaker:Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;
    .restart local v5       #stream:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->needtoStartThread()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 75
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mResultHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 76
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mFileMaker:Ljava/lang/Thread;

    .line 77
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mFileMaker:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 79
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mResultHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 85
    .end local v2           #fileMaker:Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;
    :cond_3
    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 86
    .local v1, extra_text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileShareClient/FileManager;->createHtml(Ljava/lang/CharSequence;)Ljava/io/File;

    move-result-object v3

    .line 92
    .local v3, html:Ljava/io/File;
    if-eqz v3, :cond_4

    .line 93
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mTempFileList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mResultHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 97
    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mResultHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 102
    .end local v1           #extra_text:Ljava/lang/CharSequence;
    .end local v3           #html:Ljava/io/File;
    .end local v5           #stream:Landroid/net/Uri;
    :cond_5
    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 103
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v7, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 106
    if-nez v7, :cond_6

    .line 107
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mResultHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 108
    const-string v8, "[FileShare][Client]"

    const-string v9, "FileManager: generateFileList : invalid extra"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_6
    new-instance v2, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;

    const/4 v8, 0x0

    invoke-direct {v2, p0, v8}, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;-><init>(Lcom/sec/android/app/FileShareClient/FileManager;Lcom/sec/android/app/FileShareClient/FileManager$1;)V

    .line 114
    .restart local v2       #fileMaker:Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 115
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->addUri(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_7

    .line 116
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mResultHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 121
    .end local v6           #uri:Landroid/net/Uri;
    :cond_8
    invoke-virtual {v2}, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->needtoStartThread()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 122
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mResultHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mFileMaker:Ljava/lang/Thread;

    .line 124
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mFileMaker:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 126
    :cond_9
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mResultHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public getFileArryList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager;->mFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method getMultiLiskList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "srcStr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    if-nez p1, :cond_1

    .line 656
    const-string v5, "[FileShare][Client]"

    const-string v6, "FileManager: getMultiLiskList: srcStr is null"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v4, 0x0

    .line 673
    :cond_0
    return-object v4

    .line 660
    :cond_1
    const-string v0, "\\(?\\b(http://|https://|www[.])[-A-Za-z0-9+&@#/%?=~_()|!:,.;]*[-A-Za-z0-9+&@#/%=~_()|]"

    .line 661
    .local v0, URL_REGEX:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v4, urlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 663
    .local v2, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 665
    .local v1, matcher:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 666
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 667
    .local v3, url:Ljava/lang/String;
    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 668
    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 670
    :cond_2
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
