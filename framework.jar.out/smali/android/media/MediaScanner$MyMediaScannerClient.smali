.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private isDrmConverted:Z

.field private isDrmFlag:Z

.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDrmPath:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mRecordingType:I

.field private mResolution:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 540
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 561
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmFlag:Z

    .line 570
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 540
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method private computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "data"
    .parameter "values"

    .prologue
    .line 1005
    if-nez p1, :cond_1

    const-string v1, ""

    .line 1006
    .local v1, s:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1007
    .local v0, idx:I
    if-ltz v0, :cond_0

    .line 1008
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1010
    :cond_0
    const-string v2, "_display_name"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    return-void

    .line 1005
    .end local v0           #idx:I
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "input"
    .parameter "expected"

    .prologue
    .line 830
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, output:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 832
    const/4 v1, 0x1

    .line 835
    :goto_0
    return v1

    .line 834
    :cond_0
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 1326
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1327
    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1328
    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 54
    .parameter "entry"
    .parameter "ringtones"
    .parameter "notifications"
    .parameter "alarms"
    .parameter "music"
    .parameter "podcasts"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1019
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1020
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1023
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v51

    .line 1024
    .local v51, values:Landroid/content/ContentValues;
    const-string/jumbo v6, "title"

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1025
    .local v50, title:Ljava/lang/String;
    if-eqz v50, :cond_2

    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1026
    :cond_2
    const-string v6, "_data"

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1027
    const-string/jumbo v6, "title"

    move-object/from16 v0, v51

    move-object/from16 v1, v50

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_3
    const-string v6, "album"

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1030
    .local v15, album:Ljava/lang/String;
    const-string v6, "<unknown>"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1031
    const-string v6, "_data"

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1033
    const/16 v6, 0x2f

    invoke-virtual {v15, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v35

    .line 1034
    .local v35, lastSlash:I
    if-ltz v35, :cond_5

    .line 1035
    const/16 v41, 0x0

    .line 1037
    .local v41, previousSlash:I
    :goto_0
    const/16 v6, 0x2f

    add-int/lit8 v7, v41, 0x1

    invoke-virtual {v15, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v32

    .line 1038
    .local v32, idx:I
    if-ltz v32, :cond_4

    move/from16 v0, v32

    move/from16 v1, v35

    if-lt v0, v1, :cond_13

    .line 1043
    :cond_4
    if-eqz v41, :cond_5

    .line 1044
    add-int/lit8 v6, v41, 0x1

    move/from16 v0, v35

    invoke-virtual {v15, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 1045
    const-string v6, "album"

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    .end local v32           #idx:I
    .end local v35           #lastSlash:I
    .end local v41           #previousSlash:I
    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v45, v0

    .line 1050
    .local v45, rowId:J
    const-wide/16 v16, 0x0

    .line 1051
    .local v16, beforeExifExtractingTime:J
    const-wide/16 v24, 0x0

    .line 1053
    .local v24, exifExtractingTime:J
    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v6

    if-eqz v6, :cond_14

    const-wide/16 v6, 0x0

    cmp-long v6, v45, v6

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v6}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)I

    move-result v6

    if-eqz v6, :cond_14

    .line 1058
    :cond_6
    const-string v6, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1059
    const-string v6, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1060
    const-string v6, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1061
    const-string v6, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1062
    const-string v6, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1146
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v47

    .line 1147
    .local v47, tableUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v33

    .line 1148
    .local v33, inserter:Landroid/media/MediaInserter;
    const-wide/16 v18, 0x0

    .line 1150
    .local v18, bulkInserterTime:J
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v6, :cond_8

    .line 1151
    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1152
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v47

    .line 1159
    :cond_8
    :goto_2
    const/16 v42, 0x0

    .line 1160
    .local v42, result:Landroid/net/Uri;
    const/16 v38, 0x0

    .line 1161
    .local v38, needToSetSettings:Z
    const-wide/16 v6, 0x0

    cmp-long v6, v45, v6

    if-nez v6, :cond_25

    .line 1162
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v6}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)I

    move-result v6

    if-eqz v6, :cond_9

    .line 1163
    const-string v6, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v7}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1165
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v47

    if-ne v0, v6, :cond_b

    .line 1166
    move-object/from16 v0, p1

    iget v0, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    move/from16 v28, v0

    .line 1167
    .local v28, format:I
    if-nez v28, :cond_a

    .line 1168
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v28

    .line 1170
    :cond_a
    const-string v6, "format"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1175
    .end local v28           #format:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1176
    if-eqz p3, :cond_1f

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 1177
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v7}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1179
    :cond_c
    const/16 v38, 0x1

    .line 1200
    :cond_d
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1201
    if-eqz v33, :cond_e

    if-eqz v38, :cond_23

    .line 1202
    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v6

    move-object/from16 v0, v47

    move-object/from16 v1, v51

    invoke-interface {v6, v0, v1}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v42

    .line 1208
    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v6}, Landroid/media/MediaScanner;->access$3008(Landroid/media/MediaScanner;)J

    .line 1209
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v18

    invoke-static {v6, v7, v8}, Landroid/media/MediaScanner;->access$3114(Landroid/media/MediaScanner;J)J

    if-eqz v42, :cond_f

    invoke-static/range {v42 .. v42}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v45

    move-wide/from16 v0, v45

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    :cond_f
    :goto_5
    if-eqz v38, :cond_2f

    #start
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static {v6, v1, v2, v3, v4}, Landroid/media/MediaScanner$Injector;->setAllSettingsIfNotSet(Landroid/media/MediaScanner;Landroid/media/MediaScanner$FileEntry;ZZZ)V
    #end

    if-eqz p3, :cond_30

    const-string v6, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-wide/from16 v2, v45

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1255
    const-string v6, "CTC"

    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "CHM"

    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1257
    :cond_10
    const-string v10, "com.android.settings"

    .line 1258
    .local v10, AUTHORITY:Ljava/lang/String;
    const-string/jumbo v12, "profile"

    .line 1259
    .local v12, PROFILE_TABLE:Ljava/lang/String;
    const-string v6, "content://com.android.settings/profile"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1261
    .local v5, PROFILE_CONTENT_URI:Landroid/net/Uri;
    const/16 v31, 0x0

    .local v31, i:I
    :goto_6
    const/4 v6, 0x5

    move/from16 v0, v31

    if-ge v0, v6, :cond_2e

    .line 1262
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1263
    .local v4, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "profile_notification_tone"

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v31, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1264
    .local v20, cursor:Landroid/database/Cursor;
    if-eqz v20, :cond_11

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1265
    const-string/jumbo v6, "profile_notification_tone"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1266
    .local v11, NotiRingtone:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1267
    new-instance v44, Landroid/content/ContentValues;

    invoke-direct/range {v44 .. v44}, Landroid/content/ContentValues;-><init>()V

    .line 1268
    .local v44, ringtoneValues:Landroid/content/ContentValues;
    const-string/jumbo v6, "profile_notification_tone"

    move-object/from16 v0, v47

    move-wide/from16 v1, v45

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    add-int/lit8 v6, v31, 0x1

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 1270
    .local v14, _uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v6, v14, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1273
    .end local v11           #NotiRingtone:Ljava/lang/String;
    .end local v14           #_uri:Landroid/net/Uri;
    .end local v44           #ringtoneValues:Landroid/content/ContentValues;
    :cond_11
    if-eqz v20, :cond_12

    .line 1274
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1261
    :cond_12
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_6

    .line 1041
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v5           #PROFILE_CONTENT_URI:Landroid/net/Uri;
    .end local v10           #AUTHORITY:Ljava/lang/String;
    .end local v12           #PROFILE_TABLE:Ljava/lang/String;
    .end local v16           #beforeExifExtractingTime:J
    .end local v18           #bulkInserterTime:J
    .end local v20           #cursor:Landroid/database/Cursor;
    .end local v24           #exifExtractingTime:J
    .end local v31           #i:I
    .end local v33           #inserter:Landroid/media/MediaInserter;
    .end local v38           #needToSetSettings:Z
    .end local v42           #result:Landroid/net/Uri;
    .end local v45           #rowId:J
    .end local v47           #tableUri:Landroid/net/Uri;
    .restart local v32       #idx:I
    .restart local v35       #lastSlash:I
    .restart local v41       #previousSlash:I
    :cond_13
    move/from16 v41, v32

    .line 1042
    goto/16 :goto_0

    .line 1063
    .end local v32           #idx:I
    .end local v35           #lastSlash:I
    .end local v41           #previousSlash:I
    .restart local v16       #beforeExifExtractingTime:J
    .restart local v24       #exifExtractingTime:J
    .restart local v45       #rowId:J
    :cond_14
    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v7, 0x1f

    if-ne v6, v7, :cond_7

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v6, :cond_7

    .line 1064
    const/16 v53, -0x1

    .line 1065
    .local v53, width:I
    const/16 v30, -0x1

    .line 1066
    .local v30, height:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1067
    const/16 v22, 0x0

    .line 1069
    .local v22, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v23, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v22           #exif:Landroid/media/ExifInterface;
    .local v23, exif:Landroid/media/ExifInterface;
    move-object/from16 v22, v23

    .line 1073
    .end local v23           #exif:Landroid/media/ExifInterface;
    .restart local v22       #exif:Landroid/media/ExifInterface;
    :goto_7
    if-eqz v22, :cond_17

    .line 1074
    const/4 v6, 0x2

    new-array v0, v6, [F

    move-object/from16 v36, v0

    .line 1075
    .local v36, latlng:[F
    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1076
    const-string v6, "latitude"

    const/4 v7, 0x0

    aget v7, v36, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1077
    const-string v6, "longitude"

    const/4 v7, 0x1

    aget v7, v36, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1080
    :cond_15
    invoke-virtual/range {v22 .. v22}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v48

    .line 1081
    .local v48, time:J
    const-wide/16 v6, -0x1

    cmp-long v6, v48, v6

    if-eqz v6, :cond_1a

    .line 1082
    const-string v6, "datetaken"

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1095
    :cond_16
    :goto_8
    const-string v6, "ImageWidth"

    const/4 v7, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v53

    .line 1096
    const-string v6, "ImageLength"

    const/4 v7, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v30

    .line 1098
    const-string v6, "Orientation"

    const/4 v7, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v39

    .line 1100
    .local v39, orientation:I
    const/4 v6, -0x1

    move/from16 v0, v39

    if-eq v0, v6, :cond_17

    .line 1103
    packed-switch v39, :pswitch_data_0

    .line 1114
    :pswitch_0
    const/16 v21, 0x0

    .line 1117
    .local v21, degree:I
    :goto_9
    const-string/jumbo v6, "orientation"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1120
    .end local v21           #degree:I
    .end local v36           #latlng:[F
    .end local v39           #orientation:I
    .end local v48           #time:J
    :cond_17
    const/4 v6, -0x1

    move/from16 v0, v53

    if-eq v0, v6, :cond_18

    const/4 v6, -0x1

    move/from16 v0, v30

    if-ne v0, v6, :cond_1b

    .line 1121
    :cond_18
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    .line 1127
    :goto_a
    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v6, :cond_19

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v6, :cond_19

    .line 1128
    const-string/jumbo v6, "width"

    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1129
    const-string v6, "height"

    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1131
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v24, v6, v16

    .line 1132
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-wide/from16 v0, v24

    invoke-static {v6, v0, v1}, Landroid/media/MediaScanner;->access$1714(Landroid/media/MediaScanner;J)J

    .line 1133
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v34

    .line 1134
    .local v34, lastDot:I
    if-lez v34, :cond_7

    const-wide/16 v6, 0x0

    cmp-long v6, v16, v6

    if-eqz v6, :cond_7

    const-wide/16 v6, 0x0

    cmp-long v6, v24, v6

    if-eqz v6, :cond_7

    .line 1135
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    add-int/lit8 v7, v34, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    .line 1136
    .local v26, extention:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/media/MediaScanner$FileParsingTime;

    .line 1137
    .local v40, parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    if-eqz v40, :cond_1c

    .line 1138
    move-object/from16 v0, v40

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$FileParsingTime;->addParsingTime(J)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1088
    .end local v26           #extention:Ljava/lang/String;
    .end local v34           #lastDot:I
    .end local v40           #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    .restart local v36       #latlng:[F
    .restart local v48       #time:J
    :cond_1a
    invoke-virtual/range {v22 .. v22}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v48

    .line 1089
    const-wide/16 v6, -0x1

    cmp-long v6, v48, v6

    if-eqz v6, :cond_16

    .line 1090
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sub-long v6, v6, v48

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    cmp-long v6, v6, v8

    if-ltz v6, :cond_16

    .line 1091
    const-string v6, "datetaken"

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_8

    .line 1105
    .restart local v39       #orientation:I
    :pswitch_1
    const/16 v21, 0x5a

    .line 1106
    .restart local v21       #degree:I
    goto/16 :goto_9

    .line 1108
    .end local v21           #degree:I
    :pswitch_2
    const/16 v21, 0xb4

    .line 1109
    .restart local v21       #degree:I
    goto/16 :goto_9

    .line 1111
    .end local v21           #degree:I
    :pswitch_3
    const/16 v21, 0x10e

    .line 1112
    .restart local v21       #degree:I
    goto/16 :goto_9

    .line 1123
    .end local v21           #degree:I
    .end local v36           #latlng:[F
    .end local v39           #orientation:I
    .end local v48           #time:J
    :cond_1b
    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 1124
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_a

    .line 1141
    .restart local v26       #extention:Ljava/lang/String;
    .restart local v34       #lastDot:I
    .restart local v40       #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v6

    new-instance v7, Landroid/media/MediaScanner$FileParsingTime;

    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-direct {v7, v0, v1, v2}, Landroid/media/MediaScanner$FileParsingTime;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v26

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1153
    .end local v22           #exif:Landroid/media/ExifInterface;
    .end local v26           #extention:Ljava/lang/String;
    .end local v30           #height:I
    .end local v34           #lastDot:I
    .end local v40           #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    .end local v53           #width:I
    .restart local v18       #bulkInserterTime:J
    .restart local v33       #inserter:Landroid/media/MediaInserter;
    .restart local v47       #tableUri:Landroid/net/Uri;
    :cond_1d
    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1154
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v47

    goto/16 :goto_2

    .line 1155
    :cond_1e
    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1156
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v47

    goto/16 :goto_2

    .line 1181
    .restart local v38       #needToSetSettings:Z
    .restart local v42       #result:Landroid/net/Uri;
    :cond_1f
    if-eqz p2, :cond_21

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 1182
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v7}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1184
    :cond_20
    const/16 v38, 0x1

    goto/16 :goto_3

    .line 1186
    :cond_21
    if-eqz p4, :cond_d

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 1187
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_22

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v7}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1189
    :cond_22
    const/16 v38, 0x1

    goto/16 :goto_3

    .line 1203
    :cond_23
    move-object/from16 v0, p1

    iget v6, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    const/16 v7, 0x3001

    if-ne v6, v7, :cond_24

    .line 1204
    move-object/from16 v0, v33

    move-object/from16 v1, v47

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_4

    .line 1206
    :cond_24
    move-object/from16 v0, v33

    move-object/from16 v1, v47

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_4

    .line 1216
    :cond_25
    move-object/from16 v0, v47

    move-wide/from16 v1, v45

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v42

    .line 1219
    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v6

    if-nez v6, :cond_26

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v6

    if-nez v6, :cond_26

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1220
    :cond_26
    const-string v6, "_data"

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1221
    .local v13, _datafield:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v13, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1225
    .end local v13           #_datafield:Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 1226
    const-string/jumbo v6, "mini_thumb_magic"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1231
    :cond_28
    const-string v6, "_data"

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1233
    const/16 v37, 0x0

    .line 1234
    .local v37, mediaType:I
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 1235
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v6}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v27

    .line 1236
    .local v27, fileType:I
    invoke-static/range {v27 .. v27}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1237
    const/16 v37, 0x2

    .line 1245
    :cond_29
    :goto_b
    const-string v6, "media_type"

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1247
    .end local v27           #fileType:I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v6}, Landroid/media/MediaScanner;->access$3208(Landroid/media/MediaScanner;)J

    .line 1248
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    invoke-interface {v6, v0, v1, v7, v8}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1238
    .restart local v27       #fileType:I
    :cond_2b
    invoke-static/range {v27 .. v27}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 1239
    const/16 v37, 0x3

    goto :goto_b

    .line 1240
    :cond_2c
    invoke-static/range {v27 .. v27}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1241
    const/16 v37, 0x1

    goto :goto_b

    .line 1242
    :cond_2d
    invoke-static/range {v27 .. v27}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1243
    const/16 v37, 0x4

    goto :goto_b

    .line 1278
    .end local v27           #fileType:I
    .end local v37           #mediaType:I
    :cond_2e
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v7, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v6, v7}, Landroid/media/MediaScanner;->access$2302(Landroid/media/MediaScanner;Z)Z

    .line 1322
    :cond_2f
    :goto_c
    return-object v42

    .line 1279
    :cond_30
    if-eqz p2, :cond_38

    .line 1280
    const-string/jumbo v6, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-wide/from16 v2, v45

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1282
    const-string v6, "CTC"

    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    const-string v6, "CHM"

    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 1284
    :cond_31
    const-string v10, "com.android.settings"

    .line 1285
    .restart local v10       #AUTHORITY:Ljava/lang/String;
    const-string/jumbo v12, "profile"

    .line 1286
    .restart local v12       #PROFILE_TABLE:Ljava/lang/String;
    const-string v6, "content://com.android.settings/profile"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1288
    .restart local v5       #PROFILE_CONTENT_URI:Landroid/net/Uri;
    const/16 v31, 0x0

    .restart local v31       #i:I
    :goto_d
    const/4 v6, 0x5

    move/from16 v0, v31

    if-ge v0, v6, :cond_37

    .line 1289
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1290
    .restart local v4       #cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v31, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1291
    .restart local v20       #cursor:Landroid/database/Cursor;
    if-eqz v20, :cond_35

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 1292
    const-string/jumbo v6, "profile_ringtone"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 1293
    .local v43, ringtone:Ljava/lang/String;
    const-string/jumbo v6, "profile_gsm_ringtone"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1294
    .local v29, gsmRingtone:Ljava/lang/String;
    const-string/jumbo v6, "profile_video_ringtone"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 1295
    .local v52, videoRingtone:Ljava/lang/String;
    new-instance v44, Landroid/content/ContentValues;

    invoke-direct/range {v44 .. v44}, Landroid/content/ContentValues;-><init>()V

    .line 1296
    .restart local v44       #ringtoneValues:Landroid/content/ContentValues;
    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1297
    const-string/jumbo v6, "profile_ringtone"

    move-object/from16 v0, v47

    move-wide/from16 v1, v45

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    :cond_32
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 1300
    const-string/jumbo v6, "profile_gsm_ringtone"

    move-object/from16 v0, v47

    move-wide/from16 v1, v45

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    :cond_33
    invoke-static/range {v52 .. v52}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 1303
    const-string/jumbo v6, "profile_video_ringtone"

    move-object/from16 v0, v47

    move-wide/from16 v1, v45

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    :cond_34
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-eqz v6, :cond_35

    .line 1306
    add-int/lit8 v6, v31, 0x1

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 1307
    .restart local v14       #_uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v6, v14, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1310
    .end local v14           #_uri:Landroid/net/Uri;
    .end local v29           #gsmRingtone:Ljava/lang/String;
    .end local v43           #ringtone:Ljava/lang/String;
    .end local v44           #ringtoneValues:Landroid/content/ContentValues;
    .end local v52           #videoRingtone:Ljava/lang/String;
    :cond_35
    if-eqz v20, :cond_36

    .line 1311
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1288
    :cond_36
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_d

    .line 1315
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v5           #PROFILE_CONTENT_URI:Landroid/net/Uri;
    .end local v10           #AUTHORITY:Ljava/lang/String;
    .end local v12           #PROFILE_TABLE:Ljava/lang/String;
    .end local v20           #cursor:Landroid/database/Cursor;
    .end local v31           #i:I
    :cond_37
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v7, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v6, v7}, Landroid/media/MediaScanner;->access$2502(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_c

    .line 1316
    :cond_38
    if-eqz p4, :cond_2f

    .line 1317
    const-string v6, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-wide/from16 v2, v45

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v7, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v6, v7}, Landroid/media/MediaScanner;->access$2702(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_c

    .line 1070
    .end local v18           #bulkInserterTime:J
    .end local v33           #inserter:Landroid/media/MediaInserter;
    .end local v38           #needToSetSettings:Z
    .end local v42           #result:Landroid/net/Uri;
    .end local v47           #tableUri:Landroid/net/Uri;
    .restart local v22       #exif:Landroid/media/ExifInterface;
    .restart local v30       #height:I
    .restart local v53       #width:I
    :catch_0
    move-exception v6

    goto/16 :goto_7

    .line 1103
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 17
    .parameter "path"

    .prologue
    .line 1345
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v13}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1346
    const/4 v10, 0x0

    .line 1459
    :cond_0
    :goto_0
    return v10

    .line 1349
    :cond_1
    const/4 v10, 0x0

    .line 1353
    .local v10, resultFileType:I
    const/4 v13, 0x3

    new-array v8, v13, [I

    .line 1354
    .local v8, mOutPermissions:[I
    const-string v13, "data/system/databases/drmdatabase.db"

    invoke-static {v13, v8}, Landroid/os/FileUtils;->getPermissions(Ljava/lang/String;[I)I

    .line 1355
    const-string v13, "MediaScanner"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getFileTypeFromDrm drmdatabase.db :  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const-string v13, "data/system/databases/drmdatabase.db-journal"

    invoke-static {v13, v8}, Landroid/os/FileUtils;->getPermissions(Ljava/lang/String;[I)I

    .line 1358
    const-string v13, "MediaScanner"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getFileTypeFromDrm drmdatabase.db-journal  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const-string v13, ".dm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    .line 1362
    .local v7, isDM:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v13}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v13

    if-nez v13, :cond_2

    .line 1363
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-instance v14, Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v15}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    #setter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v13, v14}, Landroid/media/MediaScanner;->access$3402(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    .line 1364
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v13}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v13

    if-nez v13, :cond_2

    .line 1365
    const-string v13, "MediaScanner"

    const-string v14, "getFileTypeFromDrm DrmManagerClient is NULL"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    const/4 v10, -0x1

    goto :goto_0

    .line 1370
    :cond_2
    if-eqz v7, :cond_5

    .line 1372
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1373
    .local v1, downloadedDrmFileSize:Ljava/io/File;
    const-string v13, "MediaScanner"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getFileTypeFromDrm : drm file size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    new-instance v3, Landroid/drm/DrmInfoRequest;

    const/4 v13, 0x7

    const-string v14, "application/vnd.oma.drm.content"

    invoke-direct {v3, v13, v14}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1378
    .local v3, drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    const-string v13, "drm_path"

    move-object/from16 v0, p1

    invoke-virtual {v3, v13, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1379
    const-string/jumbo v13, "status"

    const-string v14, "fail"

    invoke-virtual {v3, v13, v14}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v13}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v2

    .line 1383
    .local v2, drmInfo:Landroid/drm/DrmInfo;
    if-eqz v2, :cond_3

    const-string/jumbo v13, "status"

    invoke-virtual {v2, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_4

    .line 1384
    :cond_3
    const-string v13, "MediaScanner"

    const-string v14, "Mediascanner::getFileTypeFromDrm : DrmInfoRequest.STATUS have NoV"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 1387
    :cond_4
    const-string/jumbo v13, "status"

    invoke-virtual {v2, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1391
    .local v11, status_req1:Ljava/lang/String;
    const-string/jumbo v13, "success"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1400
    const-string v13, "drm_path"

    invoke-virtual {v2, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 1401
    .local v9, pathname_dest:Ljava/lang/Object;
    if-eqz v9, :cond_7

    .line 1404
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1405
    .local v6, file2:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1406
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1407
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 1408
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 1409
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmFlag:Z

    .line 1418
    .end local v1           #downloadedDrmFileSize:Ljava/io/File;
    .end local v2           #drmInfo:Landroid/drm/DrmInfo;
    .end local v3           #drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    .end local v6           #file2:Ljava/io/File;
    .end local v9           #pathname_dest:Ljava/lang/Object;
    .end local v11           #status_req1:Ljava/lang/String;
    :cond_5
    :goto_1
    new-instance v4, Landroid/drm/DrmInfoRequest;

    const/16 v13, 0x8

    const-string v14, "application/vnd.oma.drm.content"

    invoke-direct {v4, v13, v14}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1419
    .local v4, drmInfoRequest_register:Landroid/drm/DrmInfoRequest;
    const-string v13, "drm_path"

    move-object/from16 v0, p1

    invoke-virtual {v4, v13, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1420
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v13}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v2

    .line 1421
    .restart local v2       #drmInfo:Landroid/drm/DrmInfo;
    const-string/jumbo v13, "status"

    invoke-virtual {v2, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1423
    .local v12, status_req2:Ljava/lang/String;
    const-string/jumbo v13, "success"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1437
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v13}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1438
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v13}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1439
    .local v5, drmMimetype:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1440
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1441
    invoke-static {v5}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_0

    .line 1396
    .end local v4           #drmInfoRequest_register:Landroid/drm/DrmInfoRequest;
    .end local v5           #drmMimetype:Ljava/lang/String;
    .end local v12           #status_req2:Ljava/lang/String;
    .restart local v1       #downloadedDrmFileSize:Ljava/io/File;
    .restart local v3       #drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    .restart local v11       #status_req1:Ljava/lang/String;
    :cond_6
    const-string v13, "MediaScanner"

    const-string v14, "Mediascanner::getFileTypeFromDrm :: acquireDrmInfo Fail"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 1414
    .restart local v9       #pathname_dest:Ljava/lang/Object;
    :cond_7
    const-string v13, "MediaScanner"

    const-string v14, "Mediascanner::getFileTypeFromDrm :: acquireDrmInfo_convert no file path"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1432
    .end local v1           #downloadedDrmFileSize:Ljava/io/File;
    .end local v3           #drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    .end local v9           #pathname_dest:Ljava/lang/Object;
    .end local v11           #status_req1:Ljava/lang/String;
    .restart local v4       #drmInfoRequest_register:Landroid/drm/DrmInfoRequest;
    .restart local v12       #status_req2:Ljava/lang/String;
    :cond_8
    const-string v13, "MediaScanner"

    const-string v14, "Mediascanner::getFileTypeFromDrm ::acquireDrmInfo_register Fail"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "defaultValue"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 758
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 759
    .local v1, length:I
    if-ne p2, v1, :cond_0

    .line 772
    .end local p3
    :goto_0
    return p3

    .line 761
    .restart local p3
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 763
    .local v0, ch:C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    goto :goto_0

    .line 765
    .end local p2
    .restart local v3       #start:I
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .line 766
    .local v2, result:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 767
    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 768
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    goto :goto_0

    .line 769
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #start:I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move p3, v2

    .line 772
    goto :goto_0
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 911
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 912
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 914
    const-string v1, ".dcf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 915
    .local v0, isDCF:Z
    if-eqz v0, :cond_0

    .line 916
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->isPreview:Z

    .line 924
    :goto_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 925
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 926
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 930
    .end local v0           #isDCF:Z
    :goto_1
    return-void

    .line 919
    .restart local v0       #isDCF:Z
    :cond_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->isPreview:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 927
    .end local v0           #isDCF:Z
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .parameter "settingName"
    .parameter "uri"
    .parameter "rowId"

    .prologue
    .line 1334
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1337
    .local v0, existingSettingValue:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1339
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1342
    :cond_0
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    .prologue
    .line 839
    const-string v0, "2"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 840
    const-string v0, "(2)"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 841
    const-string v0, "(2"

    const-string v1, "(2"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 842
    const-string v0, "2 Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 843
    const-string v0, "(2) Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 844
    const-string v0, "(2 Foo"

    const-string v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 845
    const-string v0, "2Foo"

    const-string v1, "2Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 846
    const-string v0, "(2)Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 847
    const-string v0, "200 Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 848
    const-string v0, "(200) Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 849
    const-string v0, "200Foo"

    const-string v1, "200Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 850
    const-string v0, "(200)Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 851
    const-string v0, "200)Foo"

    const-string v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 852
    const-string v0, "200) Foo"

    const-string v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 853
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 951
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 953
    .local v0, map:Landroid/content/ContentValues;
    const-string v3, "_data"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string/jumbo v3, "title"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v3, "date_modified"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 956
    const-string v3, "_size"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 957
    const-string v3, "mime_type"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const-string v3, "is_drm"

    iget-boolean v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 960
    const/4 v1, 0x0

    .line 961
    .local v1, resolution:Ljava/lang/String;
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v3, :cond_0

    .line 962
    const-string/jumbo v3, "width"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 963
    const-string v3, "height"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 964
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 967
    :cond_0
    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v3, :cond_3

    .line 968
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 969
    const-string v4, "artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v4, "album"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v3, "duration"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 974
    if-eqz v1, :cond_1

    .line 975
    const-string/jumbo v3, "resolution"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    :cond_1
    const-string v2, "0x0"

    .line 979
    .local v2, sUnknownResolution:Ljava/lang/String;
    const-string/jumbo v3, "resolution"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    .end local v2           #sUnknownResolution:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    :cond_3
    :goto_2
    return-object v0

    .line 969
    :cond_4
    const-string v3, "<unknown>"

    goto :goto_0

    .line 971
    :cond_5
    const-string v3, "<unknown>"

    goto :goto_1

    .line 981
    :cond_6
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 983
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 984
    const-string v4, "artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v4, "album_artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string v4, "album"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string v3, "composer"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v3, "genre"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v3, :cond_7

    .line 993
    const-string/jumbo v3, "year"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 995
    :cond_7
    const-string/jumbo v3, "track"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 996
    const-string v3, "duration"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 997
    const-string v3, "compilation"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 998
    const-string/jumbo v3, "recordingtype"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 984
    :cond_8
    const-string v3, "<unknown>"

    goto :goto_3

    .line 986
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    .line 988
    :cond_a
    const-string v3, "<unknown>"

    goto :goto_5
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 15
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 573
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 574
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 575
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 577
    if-nez p7, :cond_4

    .line 578
    if-nez p8, :cond_0

    #calls: Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->access$100(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 579
    const/16 p8, 0x1

    .line 581
    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 584
    if-eqz p2, :cond_1

    .line 585
    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 589
    :cond_1
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    .line 590
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v13

    .line 591
    .local v13, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v13, :cond_2

    .line 592
    iget v3, v13, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 593
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 594
    iget-object v3, v13, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 599
    .end local v13           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_2
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 600
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 603
    :cond_3
    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    if-eqz v3, :cond_4

    .line 606
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 607
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 615
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 616
    .local v9, beforeMakeEntryTime:J
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/media/MediaScanner;->fastMakeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v2

    .line 617
    .local v2, entry:Landroid/media/MediaScanner$FileEntry;
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v9

    invoke-static {v3, v4, v5}, Landroid/media/MediaScanner;->access$314(Landroid/media/MediaScanner;J)J

    .line 620
    if-eqz v2, :cond_8

    iget-wide v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v11, p3, v3

    .line 621
    .local v11, delta:J
    :goto_0
    const-wide/16 v3, 0x1

    cmp-long v3, v11, v3

    if-gtz v3, :cond_5

    const-wide/16 v3, -0x1

    cmp-long v3, v11, v3

    if-gez v3, :cond_9

    :cond_5
    const/4 v14, 0x1

    .line 622
    .local v14, wasModified:Z
    :goto_1
    if-eqz v2, :cond_6

    if-eqz v14, :cond_7

    .line 623
    :cond_6
    if-eqz v14, :cond_a

    .line 624
    move-wide/from16 v0, p3

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 629
    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 632
    :cond_7
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 633
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    const/4 v2, 0x0

    .line 657
    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    :goto_3
    return-object v2

    .line 620
    .end local v11           #delta:J
    .end local v14           #wasModified:Z
    .restart local v2       #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_8
    const-wide/16 v11, 0x0

    goto :goto_0

    .line 621
    .restart local v11       #delta:J
    :cond_9
    const/4 v14, 0x0

    goto :goto_1

    .line 626
    .restart local v14       #wasModified:Z
    :cond_a
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    if-eqz p7, :cond_b

    const/16 v8, 0x3001

    :goto_4
    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .restart local v2       #entry:Landroid/media/MediaScanner$FileEntry;
    goto :goto_2

    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_b
    const/4 v8, 0x0

    goto :goto_4

    .line 639
    .restart local v2       #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_c
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 640
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 641
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 642
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 643
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 644
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 645
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 646
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 647
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 648
    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 649
    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 650
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 651
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 652
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 653
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 654
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 655
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    goto :goto_3
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaInserter;->clear()V

    .line 676
    :cond_0
    return-void
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 22
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "scanAlways"
    .parameter "noMedia"

    .prologue
    .line 681
    const/16 v21, 0x0

    .local v21, result:Landroid/net/Uri;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p9

    .line 684
    :try_start_0
    invoke-virtual/range {v3 .. v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    move-result-object v4

    .line 687
    .local v4, entry:Landroid/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    if-eqz v3, :cond_0

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 691
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 692
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 698
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 699
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 702
    :cond_1
    if-eqz v4, :cond_3

    iget-boolean v3, v4, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v3, :cond_2

    if-eqz p8, :cond_3

    .line 703
    :cond_2
    if-eqz p9, :cond_4

    .line 704
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v21

    .line 754
    .end local v4           #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_3
    :goto_0
    return-object v21

    .line 706
    .restart local v4       #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 707
    .local v17, lowpath:Ljava/lang/String;
    const-string v3, "/ringtones/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_a

    const/4 v5, 0x1

    .line 708
    .local v5, ringtones:Z
    :goto_1
    const-string v3, "/notifications/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_b

    const/4 v6, 0x1

    .line 709
    .local v6, notifications:Z
    :goto_2
    const-string v3, "/alarms/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_c

    const/4 v7, 0x1

    .line 710
    .local v7, alarms:Z
    :goto_3
    const-string v3, "/podcasts/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_d

    const/4 v9, 0x1

    .line 711
    .local v9, podcasts:Z
    :goto_4
    const-string v3, "/music/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_5

    if-nez v5, :cond_e

    if-nez v6, :cond_e

    if-nez v7, :cond_e

    if-nez v9, :cond_e

    :cond_5
    const/4 v8, 0x1

    .line 714
    .local v8, music:Z
    :goto_5
    const-wide/16 v12, 0x0

    .local v12, beforeMetaParsingTime:J
    const-wide/16 v18, 0x0

    .line 716
    .local v18, metaParsingTime:J
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 719
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 720
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    #calls: Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v3, v0, v1, v2}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v18, v10, v12

    .line 722
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Landroid/media/MediaScanner;->access$1114(Landroid/media/MediaScanner;J)J

    .line 725
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 726
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v10, 0x1f

    if-eq v3, v10, :cond_8

    .line 727
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 728
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    .line 729
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v18, v10, v12

    .line 730
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Landroid/media/MediaScanner;->access$1214(Landroid/media/MediaScanner;J)J

    .line 734
    :cond_8
    const-string v3, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 735
    .local v16, lastDot:I
    if-lez v16, :cond_9

    const-wide/16 v10, 0x0

    cmp-long v3, v12, v10

    if-eqz v3, :cond_9

    const-wide/16 v10, 0x0

    cmp-long v3, v18, v10

    if-eqz v3, :cond_9

    .line 736
    add-int/lit8 v3, v16, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    .line 737
    .local v15, extention:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/media/MediaScanner$FileParsingTime;

    .line 738
    .local v20, parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    if-eqz v20, :cond_f

    .line 739
    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$FileParsingTime;->addParsingTime(J)V

    .line 740
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v15           #extention:Ljava/lang/String;
    .end local v20           #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    :cond_9
    :goto_6
    move-object/from16 v3, p0

    .line 746
    invoke-direct/range {v3 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v21

    goto/16 :goto_0

    .line 707
    .end local v5           #ringtones:Z
    .end local v6           #notifications:Z
    .end local v7           #alarms:Z
    .end local v8           #music:Z
    .end local v9           #podcasts:Z
    .end local v12           #beforeMetaParsingTime:J
    .end local v16           #lastDot:I
    .end local v18           #metaParsingTime:J
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 708
    .restart local v5       #ringtones:Z
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 709
    .restart local v6       #notifications:Z
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 710
    .restart local v7       #alarms:Z
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 711
    .restart local v9       #podcasts:Z
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 742
    .restart local v8       #music:Z
    .restart local v12       #beforeMetaParsingTime:J
    .restart local v15       #extention:Ljava/lang/String;
    .restart local v16       #lastDot:I
    .restart local v18       #metaParsingTime:J
    .restart local v20       #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v10, Landroid/media/MediaScanner$FileParsingTime;

    move-wide/from16 v0, v18

    invoke-direct {v10, v15, v0, v1}, Landroid/media/MediaScanner$FileParsingTime;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 749
    .end local v4           #entry:Landroid/media/MediaScanner$FileEntry;
    .end local v5           #ringtones:Z
    .end local v6           #notifications:Z
    .end local v7           #alarms:Z
    .end local v8           #music:Z
    .end local v9           #podcasts:Z
    .end local v12           #beforeMetaParsingTime:J
    .end local v15           #extention:Ljava/lang/String;
    .end local v16           #lastDot:I
    .end local v17           #lowpath:Ljava/lang/String;
    .end local v18           #metaParsingTime:J
    .end local v20           #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    :catch_0
    move-exception v14

    .line 750
    .local v14, e:Landroid/os/RemoteException;
    const-string v3, "MediaScanner"

    const-string v10, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v3, v10, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "genreTagValue"

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0xff

    const/16 v9, 0x29

    .line 857
    if-nez p1, :cond_1

    .line 906
    :cond_0
    :goto_0
    return-object v7

    .line 860
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 862
    .local v4, length:I
    if-lez v4, :cond_9

    .line 863
    const/4 v6, 0x0

    .line 864
    .local v6, parenthesized:Z
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 865
    .local v5, number:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 866
    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 867
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 868
    .local v0, c:C
    if-nez v3, :cond_2

    const/16 v8, 0x28

    if-ne v0, v8, :cond_2

    .line 869
    const/4 v6, 0x1

    .line 866
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 870
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 871
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 876
    .end local v0           #c:C
    :cond_3
    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 877
    .local v1, charAfterNumber:C
    :goto_3
    if-eqz v6, :cond_4

    if-eq v1, v9, :cond_5

    :cond_4
    if-nez v6, :cond_9

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 880
    :cond_5
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    .line 881
    .local v2, genreIndex:S
    if-ltz v2, :cond_9

    .line 882
    invoke-static {}, Landroid/media/MediaScanner;->access$1500()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v2, v8, :cond_7

    .line 883
    invoke-static {}, Landroid/media/MediaScanner;->access$1500()[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v2

    goto :goto_0

    .line 876
    .end local v1           #charAfterNumber:C
    .end local v2           #genreIndex:S
    :cond_6
    const/16 v1, 0x20

    goto :goto_3

    .line 884
    .restart local v1       #charAfterNumber:C
    .restart local v2       #genreIndex:S
    :cond_7
    if-eq v2, v10, :cond_0

    .line 886
    if-ge v2, v10, :cond_a

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_a

    .line 889
    if-eqz v6, :cond_8

    if-ne v1, v9, :cond_8

    .line 890
    add-int/lit8 v3, v3, 0x1

    .line 892
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 893
    .local v7, ret:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .end local v1           #charAfterNumber:C
    .end local v2           #genreIndex:S
    .end local v3           #i:I
    .end local v5           #number:Ljava/lang/StringBuffer;
    .end local v6           #parenthesized:Z
    .end local v7           #ret:Ljava/lang/String;
    :cond_9
    :goto_4
    move-object v7, p1

    .line 906
    goto :goto_0

    .line 898
    .restart local v1       #charAfterNumber:C
    .restart local v2       #genreIndex:S
    .restart local v3       #i:I
    .restart local v5       #number:Ljava/lang/StringBuffer;
    .restart local v6       #parenthesized:Z
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 901
    .end local v2           #genreIndex:S
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 776
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 780
    :cond_0
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 827
    :cond_1
    :goto_0
    return-void

    .line 781
    :cond_2
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 782
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 783
    :cond_4
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 785
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 786
    :cond_6
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 787
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 788
    :cond_8
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 789
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 790
    :cond_a
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 792
    :cond_b
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 793
    :cond_c
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string/jumbo v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 794
    :cond_d
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    .line 795
    :cond_e
    const-string/jumbo v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string/jumbo v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 798
    :cond_f
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 799
    .local v0, num:I
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 800
    .end local v0           #num:I
    :cond_10
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 804
    :cond_11
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 805
    .restart local v0       #num:I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 806
    .end local v0           #num:I
    :cond_12
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 807
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    .line 808
    :cond_13
    const-string/jumbo v3, "writer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "writer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 809
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    .line 811
    :cond_15
    const-string/jumbo v3, "resolution"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "resolution"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 812
    :cond_16
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    goto/16 :goto_0

    .line 814
    :cond_17
    const-string v3, "compilation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 815
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    .line 816
    :cond_18
    const-string v3, "isdrm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 817
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_19

    :goto_1
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_19
    move v1, v2

    goto :goto_1

    .line 818
    :cond_1a
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 819
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_0

    .line 820
    :cond_1b
    const-string v1, "height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 821
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_0

    .line 822
    :cond_1c
    const-string/jumbo v1, "recordingtype"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 823
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    goto/16 :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 10
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 665
    if-eqz p6, :cond_0

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$608(Landroid/media/MediaScanner;)J

    .line 668
    :goto_0
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 669
    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$708(Landroid/media/MediaScanner;)J

    goto :goto_0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 933
    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    :goto_0
    return-void

    .line 940
    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 941
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0
.end method
