.class Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;
.super Ljava/lang/Thread;
.source "SimeDbUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadThread"
.end annotation


# instance fields
.field private mDbFileInfo:[Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;

.field private mDbType:[I

.field private mDownloadFileSize:I

.field private mTotalFileSize:I

.field private mURLConnection:Ljava/net/HttpURLConnection;

.field private mUpdateDbCount:I

.field final synthetic this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;[I)V
    .locals 2
    .parameter
    .parameter "dbType"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 451
    iput-object p1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 443
    iput-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mDbType:[I

    .line 444
    iput-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mDbFileInfo:[Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;

    .line 445
    iput v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mUpdateDbCount:I

    .line 446
    iput v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mTotalFileSize:I

    .line 447
    iput v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mDownloadFileSize:I

    .line 448
    iput-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 452
    iput-object p2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mDbType:[I

    .line 453
    return-void
.end method

.method private connectURL(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .parameter "url"

    .prologue
    .line 743
    const/4 v3, 0x0

    .line 744
    .local v3, urlConnection:Ljava/net/HttpURLConnection;
    if-eqz p1, :cond_0

    .line 748
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 749
    .local v1, downloadURL:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 750
    const v4, 0xea60

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 751
    const v4, 0xea60

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 761
    .end local v1           #downloadURL:Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v3

    .line 753
    :catch_0
    move-exception v2

    .line 755
    .local v2, e:Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 756
    .end local v2           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 758
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private dbSetDownloadFileInfo(II)V
    .locals 4
    .parameter "dbType"
    .parameter "downloadLen"

    .prologue
    .line 672
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateFileInfo:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;
    invoke-static {v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$800(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;

    move-result-object v1

    iget v0, v1, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;->updateProgress:I

    .line 673
    .local v0, oldProgress:I
    iget v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mDownloadFileSize:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mDownloadFileSize:I

    .line 674
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateFileInfo:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;
    invoke-static {v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$800(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;

    move-result-object v1

    iput p1, v1, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;->dbType:I

    .line 675
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateFileInfo:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;
    invoke-static {v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$800(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mDownloadFileSize:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mTotalFileSize:I

    div-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;->updateProgress:I

    .line 677
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateFileInfo:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;
    invoke-static {v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$800(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;

    move-result-object v1

    iget v1, v1, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;->updateProgress:I

    if-eq v0, v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    const/4 v2, 0x6

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->notifyUpdateState(I)V
    invoke-static {v1, v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$200(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;I)V

    .line 680
    :cond_0
    return-void
.end method

.method private disCurrentConnection()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 472
    :cond_0
    return-void
.end method

.method private downloadFile(Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;I)I
    .locals 24
    .parameter "dbFile"
    .parameter "fileType"

    .prologue
    .line 547
    const/16 v18, 0x4

    .line 548
    .local v18, ret:I
    const/4 v8, 0x0

    .line 549
    .local v8, inputStream:Ljava/io/BufferedInputStream;
    const/4 v14, 0x0

    .line 550
    .local v14, randomAccfile:Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .line 551
    .local v7, fileName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->getDbVersionURL()Ljava/lang/String;

    move-result-object v20

    .line 553
    .local v20, urlString:Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 554
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->getDbDataURL()Ljava/lang/String;

    move-result-object v20

    .line 556
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v23

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getDownloadFileName(Ljava/lang/String;ZZ)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$400(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-object/from16 v21, v0

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->DEBUG:Z
    invoke-static/range {v21 .. v21}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$700(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 559
    const-string v21, "SimeDbUpdateManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "download filename : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_1
    if-eqz v7, :cond_d

    .line 563
    const/4 v12, 0x0

    .line 564
    .local v12, nRetry:I
    const/4 v13, 0x0

    .line 565
    .local v13, nStartPos:I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->getDbSize()I

    move-result v10

    .line 566
    .local v10, nDownloadLen:I
    const/16 v17, 0x0

    .line 570
    .local v17, readLen:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-object/from16 v21, v0

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->DEBUG:Z
    invoke-static/range {v21 .. v21}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$700(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Z

    move-result v21

    if-eqz v21, :cond_3

    const-string v21, "SimeDbUpdateManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " download filename : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "time:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v12, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->connectURL(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 576
    if-eqz v10, :cond_e

    .line 577
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "bytes="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int v22, v13, v10

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 578
    .local v16, rangeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    const-string v22, "Range"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .end local v16           #rangeStr:Ljava/lang/String;
    :goto_0
    new-instance v15, Ljava/io/RandomAccessFile;

    const-string v21, "rw"

    move-object/from16 v0, v21

    invoke-direct {v15, v7, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .end local v14           #randomAccfile:Ljava/io/RandomAccessFile;
    .local v15, randomAccfile:Ljava/io/RandomAccessFile;
    int-to-long v0, v13

    move-wide/from16 v21, v0

    :try_start_1
    move-wide/from16 v0, v21

    invoke-virtual {v15, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 589
    new-instance v9, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 591
    .end local v8           #inputStream:Ljava/io/BufferedInputStream;
    .local v9, inputStream:Ljava/io/BufferedInputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 593
    .local v11, nRespose:I
    const/16 v21, 0xc8

    move/from16 v0, v21

    if-eq v11, v0, :cond_4

    const/16 v21, 0xce

    move/from16 v0, v21

    if-ne v11, v0, :cond_14

    .line 595
    :cond_4
    const/4 v4, 0x0

    .line 596
    .local v4, buf:[B
    move/from16 v19, v10

    .line 598
    .local v19, size:I
    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 599
    const/16 v19, 0x2800

    .line 601
    :cond_5
    move/from16 v0, v19

    new-array v4, v0, [B

    .line 603
    const/4 v5, 0x0

    .line 605
    .local v5, bufferLen:I
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-object/from16 v21, v0

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mbUpdating:Z
    invoke-static/range {v21 .. v21}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$000(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 607
    invoke-virtual {v9, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_11

    .line 617
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-object/from16 v21, v0

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->DEBUG:Z
    invoke-static/range {v21 .. v21}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$700(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Z

    move-result v21

    if-eqz v21, :cond_8

    const-string v21, "SimeDbUpdateManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "readLen="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "byte"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_8
    move/from16 v0, v17

    if-lt v0, v10, :cond_12

    if-eqz v10, :cond_12

    .line 620
    const/16 v18, 0x0

    .line 630
    .end local v4           #buf:[B
    .end local v5           #bufferLen:I
    .end local v19           #size:I
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-object/from16 v21, v0

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->DEBUG:Z
    invoke-static/range {v21 .. v21}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$700(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 631
    const-string v21, "SimeDbUpdateManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "-----downloadFile------ret = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 643
    :cond_a
    if-eqz v15, :cond_b

    .line 645
    :try_start_3
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 651
    :cond_b
    :goto_3
    if-eqz v9, :cond_c

    .line 653
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 659
    :cond_c
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->disCurrentConnection()V

    .line 660
    add-int/lit8 v12, v12, 0x1

    .line 661
    move/from16 v13, v17

    .line 662
    sub-int v10, v10, v17

    .line 663
    const/16 v17, 0x0

    move-object v14, v15

    .end local v15           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v14       #randomAccfile:Ljava/io/RandomAccessFile;
    move-object v8, v9

    .line 665
    .end local v9           #inputStream:Ljava/io/BufferedInputStream;
    .end local v11           #nRespose:I
    .restart local v8       #inputStream:Ljava/io/BufferedInputStream;
    :goto_5
    const/16 v21, 0x5

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/16 v21, 0x3

    move/from16 v0, v21

    if-ge v12, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-object/from16 v21, v0

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mbUpdating:Z
    invoke-static/range {v21 .. v21}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$000(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 667
    .end local v10           #nDownloadLen:I
    .end local v12           #nRetry:I
    .end local v13           #nStartPos:I
    .end local v17           #readLen:I
    :cond_d
    return v18

    .line 581
    .restart local v10       #nDownloadLen:I
    .restart local v12       #nRetry:I
    .restart local v13       #nStartPos:I
    .restart local v17       #readLen:I
    :cond_e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    .line 582
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->setDbSize(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 633
    :catch_0
    move-exception v6

    .line 636
    .local v6, e:Ljava/io/IOException;
    :goto_6
    :try_start_6
    instance-of v0, v6, Ljava/net/SocketTimeoutException;

    move/from16 v21, v0

    if-eqz v21, :cond_17

    .line 637
    const/16 v18, 0x5

    .line 641
    :goto_7
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 643
    if-eqz v14, :cond_f

    .line 645
    :try_start_7
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 651
    :cond_f
    :goto_8
    if-eqz v8, :cond_10

    .line 653
    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 659
    :cond_10
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->disCurrentConnection()V

    .line 660
    add-int/lit8 v12, v12, 0x1

    .line 661
    move/from16 v13, v17

    .line 662
    sub-int v10, v10, v17

    .line 663
    const/16 v17, 0x0

    .line 664
    goto :goto_5

    .line 610
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #inputStream:Ljava/io/BufferedInputStream;
    .end local v14           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v4       #buf:[B
    .restart local v5       #bufferLen:I
    .restart local v9       #inputStream:Ljava/io/BufferedInputStream;
    .restart local v11       #nRespose:I
    .restart local v15       #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v19       #size:I
    :cond_11
    const/16 v21, 0x0

    :try_start_9
    move/from16 v0, v21

    invoke-virtual {v15, v4, v0, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 611
    add-int v17, v17, v5

    .line 613
    const/16 v21, 0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 614
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->getDbType()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->dbSetDownloadFileInfo(II)V

    goto/16 :goto_1

    .line 633
    .end local v4           #buf:[B
    .end local v5           #bufferLen:I
    .end local v11           #nRespose:I
    .end local v19           #size:I
    :catch_1
    move-exception v6

    move-object v14, v15

    .end local v15           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v14       #randomAccfile:Ljava/io/RandomAccessFile;
    move-object v8, v9

    .end local v9           #inputStream:Ljava/io/BufferedInputStream;
    .restart local v8       #inputStream:Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 622
    .end local v8           #inputStream:Ljava/io/BufferedInputStream;
    .end local v14           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v4       #buf:[B
    .restart local v5       #bufferLen:I
    .restart local v9       #inputStream:Ljava/io/BufferedInputStream;
    .restart local v11       #nRespose:I
    .restart local v15       #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v19       #size:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-object/from16 v21, v0

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->DEBUG:Z
    invoke-static/range {v21 .. v21}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$700(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Z

    move-result v21

    if-eqz v21, :cond_13

    const-string v21, "SimeDbUpdateManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "readLen="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " bytes. "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "need download len:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " bytes."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_13
    const/16 v18, 0x4

    goto/16 :goto_2

    .line 628
    .end local v4           #buf:[B
    .end local v5           #bufferLen:I
    .end local v19           #size:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-object/from16 v21, v0

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->DEBUG:Z
    invoke-static/range {v21 .. v21}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$700(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Z

    move-result v21

    if-eqz v21, :cond_9

    const-string v21, "SimeDbUpdateManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "server response="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_2

    .line 643
    .end local v11           #nRespose:I
    :catchall_0
    move-exception v21

    move-object v14, v15

    .end local v15           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v14       #randomAccfile:Ljava/io/RandomAccessFile;
    move-object v8, v9

    .end local v9           #inputStream:Ljava/io/BufferedInputStream;
    .restart local v8       #inputStream:Ljava/io/BufferedInputStream;
    :goto_a
    if-eqz v14, :cond_15

    .line 645
    :try_start_a
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 651
    :cond_15
    :goto_b
    if-eqz v8, :cond_16

    .line 653
    :try_start_b
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 659
    :cond_16
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->disCurrentConnection()V

    .line 660
    add-int/lit8 v12, v12, 0x1

    .line 661
    move/from16 v13, v17

    .line 662
    sub-int v10, v10, v17

    .line 663
    const/16 v17, 0x0

    throw v21

    .line 646
    .end local v8           #inputStream:Ljava/io/BufferedInputStream;
    .end local v14           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputStream:Ljava/io/BufferedInputStream;
    .restart local v11       #nRespose:I
    .restart local v15       #randomAccfile:Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v6

    .line 648
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 654
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 656
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 639
    .end local v9           #inputStream:Ljava/io/BufferedInputStream;
    .end local v11           #nRespose:I
    .end local v15           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v8       #inputStream:Ljava/io/BufferedInputStream;
    .restart local v14       #randomAccfile:Ljava/io/RandomAccessFile;
    :cond_17
    const/16 v18, 0xb

    goto/16 :goto_7

    .line 646
    :catch_4
    move-exception v6

    .line 648
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 654
    :catch_5
    move-exception v6

    .line 656
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 646
    .end local v6           #e:Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 648
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 654
    .end local v6           #e:Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 656
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 643
    .end local v6           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v21

    goto :goto_a

    .end local v14           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v15       #randomAccfile:Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v21

    move-object v14, v15

    .end local v15           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v14       #randomAccfile:Ljava/io/RandomAccessFile;
    goto :goto_a

    .line 633
    .end local v14           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v15       #randomAccfile:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v6

    move-object v14, v15

    .end local v15           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v14       #randomAccfile:Ljava/io/RandomAccessFile;
    goto/16 :goto_6
.end method

.method private filterUpdateTypeBySameVersion([I)V
    .locals 8
    .parameter "dbType"

    .prologue
    const/4 v7, 0x0

    .line 685
    if-eqz p1, :cond_1

    .line 687
    iput v7, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mUpdateDbCount:I

    .line 688
    array-length v4, p1

    new-array v4, v4, [Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;

    iput-object v4, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mDbFileInfo:[Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;

    .line 690
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mbUpdating:Z
    invoke-static {v4}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$000(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 692
    aget v4, p1, v1

    if-ltz v4, :cond_2

    aget v4, p1, v1

    const/4 v5, 0x7

    if-ge v4, v5, :cond_2

    .line 694
    sget-object v4, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDBVersionURI:[Ljava/lang/String;

    aget v5, p1, v1

    aget-object v3, v4, v5

    .line 696
    .local v3, versionURI:Ljava/lang/String;
    new-instance v0, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;

    aget v4, p1, v1

    invoke-direct {v0, v4}, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;-><init>(I)V

    .line 698
    .local v0, dbFile:Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;
    invoke-direct {p0, v0, v7}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->downloadFile(Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;I)I

    move-result v2

    .line 700
    .local v2, ret:I
    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->isSameVersion(Ljava/lang/String;)Z
    invoke-static {v4, v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$900(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 690
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 703
    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mDbFileInfo:[Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;

    iget v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mUpdateDbCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mUpdateDbCount:I

    aput-object v0, v4, v5

    goto :goto_1

    .line 713
    .end local v0           #dbFile:Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;
    .end local v1           #i:I
    .end local v2           #ret:I
    .end local v3           #versionURI:Ljava/lang/String;
    :cond_1
    iput v7, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mUpdateDbCount:I

    .line 715
    :cond_2
    return-void
.end method

.method private setDownloadTotalSize()V
    .locals 6

    .prologue
    .line 718
    const/4 v3, 0x0

    .line 720
    .local v3, totalLen:I
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mDbFileInfo:[Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;

    if-eqz v5, :cond_1

    .line 722
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mTotalFileSize:I

    .line 724
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mUpdateDbCount:I

    if-ge v1, v5, :cond_1

    .line 726
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mDbFileInfo:[Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->getDbType()I

    move-result v0

    .line 728
    .local v0, dbType:I
    if-ltz v0, :cond_0

    const/4 v5, 0x7

    if-ge v0, v5, :cond_0

    .line 730
    sget-object v5, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDBDataURI:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {p0, v5}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->connectURL(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 731
    .local v4, urlConnection:Ljava/net/HttpURLConnection;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 732
    .local v2, size:I
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mDbFileInfo:[Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->setDbSize(I)V

    .line 733
    add-int/2addr v3, v2

    .line 734
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 724
    .end local v2           #size:I
    .end local v4           #urlConnection:Ljava/net/HttpURLConnection;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 738
    .end local v0           #dbType:I
    .end local v1           #i:I
    :cond_1
    iput v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mTotalFileSize:I

    .line 739
    return-void
.end method


# virtual methods
.method public isDownloading()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mbUpdating:Z
    invoke-static {v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$000(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 477
    const/4 v3, 0x4

    .line 479
    .local v3, ret:I
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mDbType:[I

    invoke-direct {p0, v5}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->filterUpdateTypeBySameVersion([I)V

    .line 481
    iget v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mUpdateDbCount:I

    if-nez v5, :cond_1

    .line 483
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateMethod:I
    invoke-static {v5}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$100(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)I

    move-result v5

    if-nez v5, :cond_0

    .line 484
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    const/4 v6, 0x3

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->notifyUpdateState(I)V
    invoke-static {v5, v6}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$200(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;I)V

    .line 486
    :cond_0
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    const-string v6, "/data/data/com.samsung.inputmethod/ldb/"

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->deleteDownloadFiles(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v10}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$300(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Ljava/lang/String;Z)V

    .line 487
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    const-string v6, "/data/data/com.samsung.inputmethod/mdb/"

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->deleteDownloadFiles(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v10}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$300(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Ljava/lang/String;Z)V

    .line 488
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    #setter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mbUpdating:Z
    invoke-static {v5, v11}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$002(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Z)Z

    .line 544
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDbUpdateMethod:I
    invoke-static {v5}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$100(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 493
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    const/16 v6, 0xa

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->notifyUpdateState(I)V
    invoke-static {v5, v6}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$200(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;I)V

    .line 494
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    #setter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mbUpdating:Z
    invoke-static {v5, v11}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$002(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Z)Z

    goto :goto_0

    .line 498
    :cond_2
    const/4 v4, 0x0

    .line 499
    .local v4, versionURI:Ljava/lang/String;
    const/4 v0, 0x0

    .line 501
    .local v0, dataURI:Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->setDownloadTotalSize()V

    .line 503
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mUpdateDbCount:I

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mbUpdating:Z
    invoke-static {v5}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$000(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 505
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mDbFileInfo:[Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;

    aget-object v5, v5, v2

    invoke-direct {p0, v5, v10}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->downloadFile(Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;I)I

    move-result v3

    .line 507
    if-nez v3, :cond_4

    .line 509
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mDbFileInfo:[Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->getDbVersionURL()Ljava/lang/String;

    move-result-object v4

    .line 510
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mDbFileInfo:[Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->getDbDataURL()Ljava/lang/String;

    move-result-object v0

    .line 513
    :try_start_0
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    iget-object v6, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    const/4 v7, 0x1

    const/4 v8, 0x1

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getDownloadFileName(Ljava/lang/String;ZZ)Ljava/lang/String;
    invoke-static {v6, v4, v7, v8}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$400(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    const/4 v8, 0x0

    const/4 v9, 0x1

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getDownloadFileName(Ljava/lang/String;ZZ)Ljava/lang/String;
    invoke-static {v7, v4, v8, v9}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$400(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->CopyFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v5, v6, v7, v8}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$500(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 516
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    iget-object v6, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    const/4 v7, 0x1

    const/4 v8, 0x1

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getDownloadFileName(Ljava/lang/String;ZZ)Ljava/lang/String;
    invoke-static {v6, v0, v7, v8}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$400(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    const/4 v8, 0x0

    const/4 v9, 0x1

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getDownloadFileName(Ljava/lang/String;ZZ)Ljava/lang/String;
    invoke-static {v7, v0, v8, v9}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$400(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->CopyFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v5, v6, v7, v8}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$500(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 520
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    iget-object v6, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->mDbFileInfo:[Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->getDbType()I

    move-result v6

    const/4 v7, 0x0

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->dbSetUpdateDate(IZ)V
    invoke-static {v5, v6, v7}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$600(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 522
    :catch_0
    move-exception v1

    .line 524
    .local v1, e:Ljava/io/IOException;
    const/4 v3, 0x4

    .line 525
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->DEBUG:Z
    invoke-static {v5}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$700(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 526
    const-string v5, "SimeDbUpdateManager"

    const-string v6, "-----void run()------SIME_DB_UPDATE_FAILED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 535
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mbUpdating:Z
    invoke-static {v5}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$000(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 536
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->notifyUpdateState(I)V
    invoke-static {v5, v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$200(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;I)V

    .line 538
    :cond_5
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    const-string v6, "/data/data/com.samsung.inputmethod/ldb/"

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->deleteDownloadFiles(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v10}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$300(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Ljava/lang/String;Z)V

    .line 539
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    const-string v6, "/data/data/com.samsung.inputmethod/mdb/"

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->deleteDownloadFiles(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v10}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$300(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Ljava/lang/String;Z)V

    .line 541
    iget-object v5, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    #setter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mbUpdating:Z
    invoke-static {v5, v11}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$002(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Z)Z

    goto/16 :goto_0
.end method

.method public setDownloadStop()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mbUpdating:Z
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->access$002(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;Z)Z

    .line 457
    return-void
.end method

.method public stopDownload()V
    .locals 0

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->setDownloadStop()V

    .line 466
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$DownloadThread;->disCurrentConnection()V

    .line 467
    return-void
.end method
