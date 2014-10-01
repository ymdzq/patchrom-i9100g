.class public Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;
.super Ljava/lang/Object;
.source "TouchModalDataStructure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FIXED_REGION_SIZE:I = 0x5

.field private static final NOP:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field public static count:I


# instance fields
.field private IS_HD:Z

.field private IS_KORMODE:Z

.field public grid:[[I

.field mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mKBHeight:I

.field private mKBWidth:I

.field public mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

.field mSimeSkbSoftKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    .line 49
    check-cast v0, [[I

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 53
    iput-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    .line 63
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    return-void
.end method

.method private isNextInitStarted()Z
    .locals 2

    .prologue
    .line 436
    invoke-static {}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->getInstance()Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dump(ZLjava/lang/String;IIII[[I)V
    .locals 14
    .parameter "isLandscape"
    .parameter "language"
    .parameter "mode"
    .parameter "width"
    .parameter "height"
    .parameter "nKeys"
    .parameter "gridArray"

    .prologue
    .line 165
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "grid_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".db"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, FILENAME:Ljava/lang/String;
    if-nez p7, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    new-instance v6, Ljava/io/File;

    iget-object v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v11}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    const-string v12, "grids"

    invoke-direct {v6, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .local v6, gridDirectory:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 172
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 175
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    .local v3, file:Ljava/io/File;
    const-string v10, "\n"

    .line 177
    .local v10, newline:Ljava/lang/String;
    const/4 v4, 0x0

    .line 178
    .local v4, fos:Ljava/io/FileOutputStream;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 180
    .local v9, mBuffer:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 183
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .local v8, k:I
    :goto_1
    move/from16 v0, p5

    if-ge v8, v0, :cond_4

    .line 184
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    move/from16 v0, p4

    if-ge v7, v0, :cond_3

    .line 185
    :try_start_1
    aget-object v11, p7, v7

    aget v11, v11, v8

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 186
    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 188
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 189
    const/4 v11, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 183
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 200
    .end local v7           #j:I
    :cond_4
    if-eqz v5, :cond_7

    .line 202
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 203
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 207
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 204
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 206
    .local v2, e:Ljava/io/IOException;
    sget-object v11, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v12, "Error in Function dump()"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 207
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 191
    .end local v2           #e:Ljava/io/IOException;
    .end local v8           #k:I
    :catch_1
    move-exception v2

    .line 192
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    sget-object v11, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v12, "Error in Function dump()"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    if-eqz v4, :cond_0

    .line 202
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 203
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 204
    :catch_2
    move-exception v2

    .line 206
    .local v2, e:Ljava/io/IOException;
    sget-object v11, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v12, "Error in Function dump()"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 193
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 194
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :goto_4
    :try_start_5
    sget-object v11, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v12, "Error in Function dump()- out of memory"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 196
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 200
    :cond_5
    if-eqz v4, :cond_0

    .line 202
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 203
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 204
    :catch_4
    move-exception v2

    .line 206
    .local v2, e:Ljava/io/IOException;
    sget-object v11, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v12, "Error in Function dump()"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 197
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 198
    .restart local v2       #e:Ljava/io/IOException;
    :goto_5
    :try_start_7
    sget-object v11, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v12, "Error in Function dump()"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 200
    if-eqz v4, :cond_0

    .line 202
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 203
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 204
    :catch_6
    move-exception v2

    .line 206
    sget-object v11, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v12, "Error in Function dump()"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 200
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_6
    if-eqz v4, :cond_6

    .line 202
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 203
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 207
    :cond_6
    :goto_7
    throw v11

    .line 204
    :catch_7
    move-exception v2

    .line 206
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v12, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "Error in Function dump()"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 200
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v7       #j:I
    .restart local v8       #k:I
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 197
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v2

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 193
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v2

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 191
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v2

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v7           #j:I
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :cond_7
    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method public getBaseIndex(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    const/high16 v1, -0x1000

    and-int/2addr v0, v1

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 130
    const/4 v0, -0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    const v1, 0xfff000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method public getKeyIndex(II)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, -0x1

    .line 107
    sget v1, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->count:I

    .line 108
    iget v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v1, v1, -0x1

    if-le p2, v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 114
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    and-int/lit16 v0, v0, 0xfff

    goto :goto_0
.end method

.method getValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 155
    return-void
.end method

.method getValue(Ljava/lang/String;)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 151
    return-void
.end method

.method public increaseBL(III)V
    .locals 14
    .parameter "currentIndex"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 528
    const/4 v6, 0x1

    .line 530
    .local v6, needIncrease:Z
    move/from16 v1, p2

    .line 531
    .local v1, boundX:I
    move/from16 v2, p3

    .line 532
    .local v2, boundY:I
    add-int/lit8 v1, p2, -0xa

    :goto_0
    add-int/lit8 v11, p2, 0xa

    if-gt v1, v11, :cond_0

    .line 533
    move v7, v1

    .line 534
    .local v7, nextX:I
    move/from16 v8, p3

    .line 535
    .local v8, nextY:I
    if-ltz v7, :cond_0

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_0

    if-ltz v8, :cond_0

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_4

    .line 563
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    :cond_0
    const/4 v6, 0x1

    .line 564
    move/from16 v1, p2

    .line 565
    move/from16 v2, p3

    .line 566
    add-int/lit8 v2, p3, -0xa

    :goto_1
    add-int/lit8 v11, p3, 0xa

    if-gt v2, v11, :cond_1

    .line 567
    move/from16 v7, p2

    .line 568
    .restart local v7       #nextX:I
    move v8, v2

    .line 569
    .restart local v8       #nextY:I
    if-ltz v7, :cond_1

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_1

    if-ltz v8, :cond_1

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_c

    .line 597
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    :cond_1
    add-int/lit8 v9, p2, 0xa

    .local v9, x:I
    :goto_2
    move/from16 v0, p2

    if-lt v9, v0, :cond_14

    .line 598
    add-int/lit8 v10, p3, -0xa

    .local v10, y:I
    :goto_3
    move/from16 v0, p3

    if-gt v10, v0, :cond_13

    .line 599
    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    if-ge v9, v11, :cond_2

    if-ltz v10, :cond_2

    .line 600
    invoke-virtual {p0, v9, v10, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 598
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 545
    .end local v9           #x:I
    .end local v10           #y:I
    .restart local v7       #nextX:I
    .restart local v8       #nextY:I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 538
    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_6

    .line 539
    move v2, v8

    .line 540
    if-lez v2, :cond_5

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_5

    if-lez v1, :cond_5

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_3

    .line 542
    :cond_5
    const/4 v6, 0x0

    .line 547
    :cond_6
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 551
    .local v3, distance:I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_8

    const/4 v5, 0x0

    .line 552
    .local v5, iter:I
    :goto_4
    if-eqz v6, :cond_7

    .line 553
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    if-gt v4, v5, :cond_7

    .line 554
    add-int v11, v2, v4

    iget v12, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_9

    .line 532
    .end local v4           #i:I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 551
    .end local v5           #iter:I
    :cond_8
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_4

    .line 556
    .restart local v4       #i:I
    .restart local v5       #iter:I
    :cond_9
    add-int v11, v2, v4

    invoke-virtual {p0, v1, v11}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_a

    .line 557
    add-int v11, v2, v4

    invoke-virtual {p0, v1, v11, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 553
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 579
    .end local v3           #distance:I
    .end local v4           #i:I
    .end local v5           #iter:I
    :cond_b
    add-int/lit8 v7, v7, -0x1

    .line 572
    :cond_c
    invoke-virtual {p0, v7, v8}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_e

    .line 573
    move v1, v7

    .line 574
    if-lez v2, :cond_d

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_d

    if-lez v1, :cond_d

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_b

    .line 576
    :cond_d
    const/4 v6, 0x0

    .line 582
    :cond_e
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 585
    .restart local v3       #distance:I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_10

    const/4 v5, 0x0

    .line 586
    .restart local v5       #iter:I
    :goto_6
    if-eqz v6, :cond_f

    .line 587
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_7
    if-gt v4, v5, :cond_f

    .line 588
    sub-int v11, v1, v4

    if-gez v11, :cond_11

    .line 566
    .end local v4           #i:I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 585
    .end local v5           #iter:I
    :cond_10
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_6

    .line 590
    .restart local v4       #i:I
    .restart local v5       #iter:I
    :cond_11
    sub-int v11, v1, v4

    invoke-virtual {p0, v11, v2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_12

    .line 591
    sub-int v11, v1, v4

    invoke-virtual {p0, v11, v2, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 587
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 597
    .end local v3           #distance:I
    .end local v4           #i:I
    .end local v5           #iter:I
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    .restart local v9       #x:I
    .restart local v10       #y:I
    :cond_13
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    .line 603
    .end local v10           #y:I
    :cond_14
    return-void
.end method

.method public increaseBR(III)V
    .locals 14
    .parameter "currentIndex"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 693
    const/4 v6, 0x1

    .line 695
    .local v6, needIncrease:Z
    move/from16 v1, p2

    .line 696
    .local v1, boundX:I
    move/from16 v2, p3

    .line 697
    .local v2, boundY:I
    add-int/lit8 v1, p2, -0xa

    :goto_0
    add-int/lit8 v11, p2, 0xa

    if-gt v1, v11, :cond_0

    .line 698
    move v7, v1

    .line 699
    .local v7, nextX:I
    move/from16 v8, p3

    .line 700
    .local v8, nextY:I
    if-ltz v7, :cond_0

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_0

    if-ltz v8, :cond_0

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_4

    .line 729
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    :cond_0
    const/4 v6, 0x1

    .line 730
    move/from16 v1, p2

    .line 731
    move/from16 v2, p3

    .line 732
    add-int/lit8 v2, p3, -0xa

    :goto_1
    add-int/lit8 v11, p3, 0xa

    if-gt v2, v11, :cond_1

    .line 733
    move/from16 v7, p2

    .line 734
    .restart local v7       #nextX:I
    move v8, v2

    .line 735
    .restart local v8       #nextY:I
    if-ltz v7, :cond_1

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_1

    if-ltz v8, :cond_1

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_c

    .line 763
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    :cond_1
    add-int/lit8 v9, p2, -0xa

    .local v9, x:I
    :goto_2
    move/from16 v0, p2

    if-gt v9, v0, :cond_14

    .line 764
    add-int/lit8 v10, p3, -0xa

    .local v10, y:I
    :goto_3
    move/from16 v0, p3

    if-gt v10, v0, :cond_13

    .line 765
    if-ltz v9, :cond_2

    if-ltz v10, :cond_2

    .line 766
    invoke-virtual {p0, v9, v10, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 764
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 710
    .end local v9           #x:I
    .end local v10           #y:I
    .restart local v7       #nextX:I
    .restart local v8       #nextY:I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 703
    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_6

    .line 704
    move v2, v8

    .line 705
    if-lez v2, :cond_5

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_5

    if-lez v1, :cond_5

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_3

    .line 707
    :cond_5
    const/4 v6, 0x0

    .line 712
    :cond_6
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 716
    .local v3, distance:I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_8

    const/4 v5, 0x0

    .line 717
    .local v5, iter:I
    :goto_4
    if-eqz v6, :cond_7

    .line 718
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    if-gt v4, v5, :cond_7

    .line 719
    add-int v11, v2, v4

    iget v12, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_9

    .line 697
    .end local v4           #i:I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 716
    .end local v5           #iter:I
    :cond_8
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_4

    .line 721
    .restart local v4       #i:I
    .restart local v5       #iter:I
    :cond_9
    add-int v11, v2, v4

    invoke-virtual {p0, v1, v11}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_a

    .line 722
    add-int v11, v2, v4

    invoke-virtual {p0, v1, v11, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 718
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 745
    .end local v3           #distance:I
    .end local v4           #i:I
    .end local v5           #iter:I
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 738
    :cond_c
    invoke-virtual {p0, v7, v8}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_e

    .line 739
    move v1, v7

    .line 740
    if-lez v2, :cond_d

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_d

    if-lez v1, :cond_d

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_b

    .line 742
    :cond_d
    const/4 v6, 0x0

    .line 747
    :cond_e
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 751
    .restart local v3       #distance:I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_10

    const/4 v5, 0x0

    .line 752
    .restart local v5       #iter:I
    :goto_6
    if-eqz v6, :cond_f

    .line 753
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_7
    if-gt v4, v5, :cond_f

    .line 754
    add-int v11, v1, v4

    iget v12, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_11

    .line 732
    .end local v4           #i:I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 751
    .end local v5           #iter:I
    :cond_10
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_6

    .line 756
    .restart local v4       #i:I
    .restart local v5       #iter:I
    :cond_11
    add-int v11, v1, v4

    invoke-virtual {p0, v11, v2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_12

    .line 757
    add-int v11, v1, v4

    invoke-virtual {p0, v11, v2, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 753
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 763
    .end local v3           #distance:I
    .end local v4           #i:I
    .end local v5           #iter:I
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    .restart local v9       #x:I
    .restart local v10       #y:I
    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 769
    .end local v10           #y:I
    :cond_14
    return-void
.end method

.method public increaseTL(III)V
    .locals 14
    .parameter "currentIndex"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 445
    const/4 v6, 0x1

    .line 447
    .local v6, needIncrease:Z
    move/from16 v1, p2

    .line 448
    .local v1, boundX:I
    move/from16 v2, p3

    .line 449
    .local v2, boundY:I
    add-int/lit8 v1, p2, -0xa

    :goto_0
    add-int/lit8 v11, p2, 0xa

    if-gt v1, v11, :cond_0

    .line 450
    move v7, v1

    .line 451
    .local v7, nextX:I
    move/from16 v8, p3

    .line 452
    .local v8, nextY:I
    if-ltz v7, :cond_0

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_0

    if-ltz v8, :cond_0

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_4

    .line 481
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    :cond_0
    const/4 v6, 0x1

    .line 482
    move/from16 v1, p2

    .line 483
    move/from16 v2, p3

    .line 484
    add-int/lit8 v2, p3, -0xa

    :goto_1
    add-int/lit8 v11, p3, 0xa

    if-gt v2, v11, :cond_1

    .line 485
    move/from16 v7, p2

    .line 486
    .restart local v7       #nextX:I
    move v8, v2

    .line 487
    .restart local v8       #nextY:I
    if-ltz v7, :cond_1

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_1

    if-ltz v8, :cond_1

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_c

    .line 515
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    :cond_1
    add-int/lit8 v9, p2, 0xa

    .local v9, x:I
    :goto_2
    move/from16 v0, p2

    if-lt v9, v0, :cond_14

    .line 516
    add-int/lit8 v10, p3, 0xa

    .local v10, y:I
    :goto_3
    move/from16 v0, p3

    if-lt v10, v0, :cond_13

    .line 517
    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    if-ge v9, v11, :cond_2

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    if-ge v10, v11, :cond_2

    .line 518
    invoke-virtual {p0, v9, v10, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 516
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 462
    .end local v9           #x:I
    .end local v10           #y:I
    .restart local v7       #nextX:I
    .restart local v8       #nextY:I
    :cond_3
    add-int/lit8 v8, v8, -0x1

    .line 455
    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_6

    .line 456
    move v2, v8

    .line 457
    if-lez v2, :cond_5

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_5

    if-lez v1, :cond_5

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_3

    .line 459
    :cond_5
    const/4 v6, 0x0

    .line 464
    :cond_6
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 468
    .local v3, distance:I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_8

    const/4 v5, 0x0

    .line 469
    .local v5, iter:I
    :goto_4
    if-eqz v6, :cond_7

    .line 470
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    if-gt v4, v5, :cond_7

    .line 471
    sub-int v11, v2, v4

    if-gez v11, :cond_9

    .line 449
    .end local v4           #i:I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 468
    .end local v5           #iter:I
    :cond_8
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_4

    .line 473
    .restart local v4       #i:I
    .restart local v5       #iter:I
    :cond_9
    sub-int v11, v2, v4

    invoke-virtual {p0, v1, v11}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_a

    .line 474
    sub-int v11, v2, v4

    invoke-virtual {p0, v1, v11, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 470
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 497
    .end local v3           #distance:I
    .end local v4           #i:I
    .end local v5           #iter:I
    :cond_b
    add-int/lit8 v7, v7, -0x1

    .line 490
    :cond_c
    invoke-virtual {p0, v7, v8}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_e

    .line 491
    move v1, v7

    .line 492
    if-lez v2, :cond_d

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_d

    if-lez v1, :cond_d

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_b

    .line 494
    :cond_d
    const/4 v6, 0x0

    .line 499
    :cond_e
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 503
    .restart local v3       #distance:I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_10

    const/4 v5, 0x0

    .line 504
    .restart local v5       #iter:I
    :goto_6
    if-eqz v6, :cond_f

    .line 505
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_7
    if-gt v4, v5, :cond_f

    .line 506
    sub-int v11, v1, v4

    if-gez v11, :cond_11

    .line 484
    .end local v4           #i:I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 503
    .end local v5           #iter:I
    :cond_10
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_6

    .line 508
    .restart local v4       #i:I
    .restart local v5       #iter:I
    :cond_11
    sub-int v11, v1, v4

    invoke-virtual {p0, v11, v2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_12

    .line 509
    sub-int v11, v1, v4

    invoke-virtual {p0, v11, v2, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 505
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 515
    .end local v3           #distance:I
    .end local v4           #i:I
    .end local v5           #iter:I
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    .restart local v9       #x:I
    .restart local v10       #y:I
    :cond_13
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    .line 521
    .end local v10           #y:I
    :cond_14
    return-void
.end method

.method public increaseTR(III)V
    .locals 14
    .parameter "currentIndex"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 610
    const/4 v6, 0x1

    .line 612
    .local v6, needIncrease:Z
    move/from16 v1, p2

    .line 613
    .local v1, boundX:I
    move/from16 v2, p3

    .line 614
    .local v2, boundY:I
    add-int/lit8 v1, p2, -0xa

    :goto_0
    add-int/lit8 v11, p2, 0xa

    if-gt v1, v11, :cond_0

    .line 615
    move v7, v1

    .line 616
    .local v7, nextX:I
    move/from16 v8, p3

    .line 617
    .local v8, nextY:I
    if-ltz v7, :cond_0

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_0

    if-ltz v8, :cond_0

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_4

    .line 646
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    :cond_0
    const/4 v6, 0x1

    .line 647
    move/from16 v1, p2

    .line 648
    move/from16 v2, p3

    .line 649
    add-int/lit8 v2, p3, -0xa

    :goto_1
    add-int/lit8 v11, p3, 0xa

    if-gt v2, v11, :cond_1

    .line 650
    move/from16 v7, p2

    .line 651
    .restart local v7       #nextX:I
    move v8, v2

    .line 652
    .restart local v8       #nextY:I
    if-ltz v7, :cond_1

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_1

    if-ltz v8, :cond_1

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_c

    .line 680
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    :cond_1
    add-int/lit8 v9, p2, -0xa

    .local v9, x:I
    :goto_2
    move/from16 v0, p2

    if-gt v9, v0, :cond_14

    .line 681
    add-int/lit8 v10, p3, 0xa

    .local v10, y:I
    :goto_3
    move/from16 v0, p3

    if-lt v10, v0, :cond_13

    .line 682
    if-ltz v9, :cond_2

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    if-ge v10, v11, :cond_2

    .line 683
    invoke-virtual {p0, v9, v10, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 681
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 627
    .end local v9           #x:I
    .end local v10           #y:I
    .restart local v7       #nextX:I
    .restart local v8       #nextY:I
    :cond_3
    add-int/lit8 v8, v8, -0x1

    .line 620
    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_6

    .line 621
    move v2, v8

    .line 622
    if-lez v2, :cond_5

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_5

    if-lez v1, :cond_5

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_3

    .line 624
    :cond_5
    const/4 v6, 0x0

    .line 629
    :cond_6
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 633
    .local v3, distance:I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_8

    const/4 v5, 0x0

    .line 634
    .local v5, iter:I
    :goto_4
    if-eqz v6, :cond_7

    .line 635
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    if-gt v4, v5, :cond_7

    .line 636
    sub-int v11, v2, v4

    if-gez v11, :cond_9

    .line 614
    .end local v4           #i:I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 633
    .end local v5           #iter:I
    :cond_8
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_4

    .line 638
    .restart local v4       #i:I
    .restart local v5       #iter:I
    :cond_9
    sub-int v11, v2, v4

    invoke-virtual {p0, v1, v11}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_a

    .line 639
    sub-int v11, v2, v4

    invoke-virtual {p0, v1, v11, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 635
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 662
    .end local v3           #distance:I
    .end local v4           #i:I
    .end local v5           #iter:I
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 655
    :cond_c
    invoke-virtual {p0, v7, v8}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_e

    .line 656
    move v1, v7

    .line 657
    if-lez v2, :cond_d

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_d

    if-lez v1, :cond_d

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_b

    .line 659
    :cond_d
    const/4 v6, 0x0

    .line 664
    :cond_e
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 668
    .restart local v3       #distance:I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_10

    const/4 v5, 0x0

    .line 669
    .restart local v5       #iter:I
    :goto_6
    if-eqz v6, :cond_f

    .line 670
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_7
    if-gt v4, v5, :cond_f

    .line 671
    add-int v11, v1, v4

    iget v12, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_11

    .line 649
    .end local v4           #i:I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 668
    .end local v5           #iter:I
    :cond_10
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_6

    .line 673
    .restart local v4       #i:I
    .restart local v5       #iter:I
    :cond_11
    add-int v11, v1, v4

    invoke-virtual {p0, v11, v2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_12

    .line 674
    add-int v11, v1, v4

    invoke-virtual {p0, v11, v2, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 670
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 680
    .end local v3           #distance:I
    .end local v4           #i:I
    .end local v5           #iter:I
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    .restart local v9       #x:I
    .restart local v10       #y:I
    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 686
    .end local v10           #y:I
    :cond_14
    return-void
.end method

.method public initialize(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;ILjava/lang/String;IIIZI)Z
    .locals 22
    .parameter "keyboard"
    .parameter "windowWidth"
    .parameter "language"
    .parameter "mode"
    .parameter "keyboardWidth"
    .parameter "keyboardHeight"
    .parameter "orientation"
    .parameter "nKeys"

    .prologue
    .line 297
    const/4 v3, 0x0

    new-array v0, v3, [Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v20, v0

    .line 298
    .local v20, softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    .end local v20           #softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    check-cast v20, [Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 299
    .restart local v20       #softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object/from16 v0, v20

    array-length v15, v0

    .line 300
    .local v15, length:I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    .line 302
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    move/from16 v0, p7

    if-ne v3, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v3

    move/from16 v0, p5

    if-ne v3, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v3

    move/from16 v0, p6

    if-ne v3, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    move/from16 v0, p8

    if-ne v3, v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isNextInitStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 307
    :cond_0
    const/4 v3, 0x0

    check-cast v3, [[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 308
    const/4 v3, 0x0

    .line 432
    :goto_1
    return v3

    .line 302
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 310
    :cond_2
    move-object/from16 v0, v20

    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    .line 311
    const/4 v11, 0x1

    .local v11, i:I
    :goto_2
    move-object/from16 v0, v20

    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    if-ge v11, v3, :cond_4

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v3, v3, v11

    if-nez v3, :cond_3

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    new-instance v4, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;-><init>(Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;)V

    aput-object v4, v3, v11

    .line 314
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v3, v3, v11

    add-int/lit8 v4, v11, -0x1

    aget-object v4, v20, v4

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    add-int/lit8 v5, v11, -0x1

    aget-object v5, v20, v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;->x:I

    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v3, v3, v11

    add-int/lit8 v4, v11, -0x1

    aget-object v4, v20, v4

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    add-int/lit8 v5, v11, -0x1

    aget-object v5, v20, v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;->y:I

    .line 311
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 320
    :cond_4
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    :goto_3
    move/from16 v0, p7

    if-ne v3, v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v3

    move/from16 v0, p5

    if-ne v3, v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v3

    move/from16 v0, p6

    if-ne v3, v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    move/from16 v0, p8

    if-ne v3, v0, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isNextInitStarted()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 324
    :cond_5
    const/4 v3, 0x0

    check-cast v3, [[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 325
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 320
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 327
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 328
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, p7

    if-ne v3, v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v3

    move/from16 v0, p5

    if-ne v3, v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v3

    move/from16 v0, p6

    if-ne v3, v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    move/from16 v0, p8

    if-ne v3, v0, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isNextInitStarted()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 332
    :cond_8
    const/4 v3, 0x0

    check-cast v3, [[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 333
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 328
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p7

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p1

    move/from16 v10, p8

    .line 335
    invoke-virtual/range {v3 .. v10}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->readGrid(Ljava/lang/String;IZIILcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 341
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 348
    :cond_b
    const/4 v13, 0x0

    .local v13, k:I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    if-ge v13, v3, :cond_11

    .line 349
    const/4 v12, 0x0

    .local v12, j:I
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    if-ge v12, v3, :cond_10

    .line 350
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    const/4 v3, 0x1

    :goto_7
    move/from16 v0, p7

    if-ne v3, v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v3

    move/from16 v0, p5

    if-ne v3, v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v3

    move/from16 v0, p6

    if-ne v3, v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    move/from16 v0, p8

    if-ne v3, v0, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isNextInitStarted()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 355
    :cond_c
    const/4 v3, 0x0

    check-cast v3, [[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 356
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 350
    :cond_d
    const/4 v3, 0x0

    goto :goto_7

    .line 358
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    if-eqz v3, :cond_f

    .line 359
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 349
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 361
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 348
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 365
    .end local v12           #j:I
    :cond_11
    const/4 v14, 0x1

    .local v14, key:I
    :goto_8
    add-int/lit8 v3, v15, 0x1

    if-ge v14, v3, :cond_18

    .line 366
    add-int/lit8 v3, v14, -0x1

    aget-object v3, v20, v3

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    add-int/lit8 v4, v14, -0x1

    aget-object v4, v20, v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v4, v14, -0x1

    aget-object v4, v20, v4

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomMargin:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v4, v14, -0x1

    aget-object v4, v20, v4

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMargin:F

    float-to-int v4, v4

    add-int v17, v3, v4

    .line 367
    .local v17, limity:I
    add-int/lit8 v3, v14, -0x1

    aget-object v3, v20, v3

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    add-int/lit8 v4, v14, -0x1

    aget-object v4, v20, v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v4, v14, -0x1

    aget-object v4, v20, v4

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMargin:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v4, v14, -0x1

    aget-object v4, v20, v4

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightMargin:F

    float-to-int v4, v4

    add-int v16, v3, v4

    .line 368
    .local v16, limitx:I
    add-int/lit8 v3, v14, -0x1

    aget-object v3, v20, v3

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    add-int/lit8 v4, v14, -0x1

    aget-object v4, v20, v4

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMargin:F

    float-to-int v4, v4

    sub-int v19, v3, v4

    .local v19, n:I
    :goto_9
    move/from16 v0, v19

    move/from16 v1, v17

    if-gt v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    move/from16 v0, v19

    if-ge v0, v3, :cond_17

    .line 369
    add-int/lit8 v3, v14, -0x1

    aget-object v3, v20, v3

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    add-int/lit8 v4, v14, -0x1

    aget-object v4, v20, v4

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMargin:F

    float-to-int v4, v4

    sub-int v18, v3, v4

    .local v18, m:I
    :goto_a
    move/from16 v0, v18

    move/from16 v1, v16

    if-gt v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    move/from16 v0, v18

    if-ge v0, v3, :cond_16

    .line 370
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_13

    const/4 v3, 0x1

    :goto_b
    move/from16 v0, p7

    if-ne v3, v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v3

    move/from16 v0, p5

    if-ne v3, v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v3

    move/from16 v0, p6

    if-ne v3, v0, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isNextInitStarted()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 374
    :cond_12
    const/4 v3, 0x0

    check-cast v3, [[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 375
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 370
    :cond_13
    const/4 v3, 0x0

    goto :goto_b

    .line 378
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v14}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setBaseIndex(III)V

    .line 379
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v14}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 381
    add-int/lit8 v3, v14, -0x1

    aget-object v3, v20, v3

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    add-int/lit8 v3, v3, 0x5

    move/from16 v0, v18

    if-le v0, v3, :cond_15

    add-int/lit8 v3, v14, -0x1

    aget-object v3, v20, v3

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    add-int/lit8 v4, v14, -0x1

    aget-object v4, v20, v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    move/from16 v0, v18

    if-ge v0, v3, :cond_15

    add-int/lit8 v3, v14, -0x1

    aget-object v3, v20, v3

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    add-int/lit8 v3, v3, 0x5

    move/from16 v0, v19

    if-le v0, v3, :cond_15

    add-int/lit8 v3, v14, -0x1

    aget-object v3, v20, v3

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    add-int/lit8 v4, v14, -0x1

    aget-object v4, v20, v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    move/from16 v0, v19

    if-ge v0, v3, :cond_15

    .line 385
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    .line 369
    :goto_c
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_a

    .line 387
    :cond_15
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    goto :goto_c

    .line 368
    :cond_16
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_9

    .line 365
    .end local v18           #m:I
    :cond_17
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8

    .line 394
    .end local v16           #limitx:I
    .end local v17           #limity:I
    .end local v19           #n:I
    :cond_18
    const/4 v13, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    if-ge v13, v3, :cond_24

    .line 395
    const/4 v12, 0x0

    .restart local v12       #j:I
    :goto_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    if-ge v12, v3, :cond_23

    .line 396
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1a

    const/4 v3, 0x1

    :goto_f
    move/from16 v0, p7

    if-ne v3, v0, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v3

    move/from16 v0, p5

    if-ne v3, v0, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v3

    move/from16 v0, p6

    if-ne v3, v0, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isNextInitStarted()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 400
    :cond_19
    const/4 v3, 0x0

    check-cast v3, [[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 401
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 396
    :cond_1a
    const/4 v3, 0x0

    goto :goto_f

    .line 403
    :cond_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1c

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v3

    if-nez v3, :cond_1f

    .line 405
    :cond_1c
    const/16 v21, -0x1

    .line 406
    .local v21, temp:I
    const/4 v14, 0x1

    :goto_10
    add-int/lit8 v3, v15, 0x1

    if-ge v14, v3, :cond_1d

    .line 407
    add-int/lit8 v21, v21, 0x1

    .line 408
    add-int/lit8 v3, v14, -0x1

    aget-object v3, v20, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mapToKey(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 409
    add-int/lit8 v21, v21, 0x1

    .line 414
    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v12, v13, v1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setBaseIndex(III)V

    .line 415
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v12, v13, v1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 417
    const/4 v3, -0x1

    move/from16 v0, v21

    if-eq v0, v3, :cond_1e

    if-nez v21, :cond_21

    .line 418
    :cond_1e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    .line 395
    .end local v21           #temp:I
    :cond_1f
    :goto_11
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_e

    .line 406
    .restart local v21       #temp:I
    :cond_20
    add-int/lit8 v14, v14, 0x1

    goto :goto_10

    .line 420
    :cond_21
    add-int/lit8 v3, v21, -0x1

    aget-object v3, v20, v3

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    add-int/lit8 v3, v3, 0x5

    if-le v12, v3, :cond_22

    add-int/lit8 v3, v21, -0x1

    aget-object v3, v20, v3

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    add-int/lit8 v4, v21, -0x1

    aget-object v4, v20, v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    if-ge v12, v3, :cond_22

    add-int/lit8 v3, v21, -0x1

    aget-object v3, v20, v3

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    add-int/lit8 v3, v3, 0x5

    if-le v13, v3, :cond_22

    add-int/lit8 v3, v21, -0x1

    aget-object v3, v20, v3

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    add-int/lit8 v4, v21, -0x1

    aget-object v4, v20, v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    if-ge v13, v3, :cond_22

    .line 424
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    goto :goto_11

    .line 426
    :cond_22
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    goto :goto_11

    .line 394
    .end local v21           #temp:I
    :cond_23
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_d

    .line 432
    .end local v12           #j:I
    :cond_24
    const/4 v3, 0x1

    goto/16 :goto_1
.end method

.method public isFixed(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    const/high16 v1, 0xf00

    and-int/2addr v0, v1

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readGrid(Ljava/lang/String;IZIILcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;I)Z
    .locals 17
    .parameter "language"
    .parameter "mode"
    .parameter "isLandscape"
    .parameter "keyboardWidth"
    .parameter "keyboardHeight"
    .parameter "keyboard"
    .parameter "nKeys"

    .prologue
    .line 220
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "grid_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p7

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".db"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, FILENAME:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v14}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    const-string v15, "grids"

    invoke-direct {v6, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 224
    .local v6, gridDirectory:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    .local v3, file:Ljava/io/File;
    const/4 v10, 0x0

    .line 227
    .local v10, returnvalue:Z
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    .line 228
    const/4 v14, 0x0

    .line 282
    :cond_0
    :goto_0
    return v14

    .line 230
    :cond_1
    const/4 v4, 0x0

    .line 232
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 233
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    const/4 v11, -0x1

    .local v11, size:I
    const/4 v7, 0x0

    .local v7, i:I
    const/4 v8, 0x0

    .local v8, j:I
    const/4 v13, 0x0

    .line 234
    .local v13, value:I
    mul-int v14, p4, p4

    mul-int/lit8 v14, v14, 0x4

    :try_start_1
    new-array v12, v14, [B

    .line 238
    .local v12, tempbuffer:[B
    :cond_2
    invoke-virtual {v5, v12}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    .line 239
    const/4 v9, 0x0

    .local v9, k:I
    :goto_1
    if-ge v9, v11, :cond_6

    .line 240
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    const/4 v14, 0x1

    :goto_2
    move/from16 v0, p3

    if-ne v14, v0, :cond_3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v14

    move/from16 v0, p4

    if-ne v14, v0, :cond_3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v14

    move/from16 v0, p5

    if-ne v14, v0, :cond_3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v14

    array-length v14, v14

    move/from16 v0, p7

    if-ne v14, v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isNextInitStarted()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 244
    :cond_3
    const/4 v14, 0x0

    check-cast v14, [[I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_7

    .line 245
    const/4 v14, 0x0

    .line 274
    if-eqz v5, :cond_0

    .line 276
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v2

    .line 278
    .local v2, e:Ljava/io/IOException;
    sget-object v15, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v16, "Error in closing the stream"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 240
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 247
    :cond_5
    :try_start_3
    aget-byte v14, v12, v9

    const/16 v15, 0xa

    if-ne v14, v15, :cond_9

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v14, v14, v7

    aput v13, v14, v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_7

    .line 249
    const/4 v13, 0x0

    .line 250
    add-int/lit8 v9, v9, 0x1

    .line 251
    add-int/lit8 v14, p4, -0x1

    if-ne v7, v14, :cond_8

    .line 252
    add-int/lit8 v8, v8, 0x1

    .line 253
    const/4 v7, 0x0

    .line 256
    :goto_3
    if-lt v9, v11, :cond_9

    .line 261
    :cond_6
    const/4 v14, -0x1

    if-ne v11, v14, :cond_2

    .line 262
    const/4 v10, 0x1

    .line 274
    if-eqz v5, :cond_c

    .line 276
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #k:I
    .end local v11           #size:I
    .end local v12           #tempbuffer:[B
    .end local v13           #value:I
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_7
    :goto_4
    move v14, v10

    .line 282
    goto/16 :goto_0

    .line 255
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v7       #i:I
    .restart local v8       #j:I
    .restart local v9       #k:I
    .restart local v11       #size:I
    .restart local v12       #tempbuffer:[B
    .restart local v13       #value:I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 259
    :cond_9
    mul-int/lit8 v14, v13, 0xa

    :try_start_5
    aget-byte v15, v12, v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_7

    add-int/lit8 v15, v15, -0x30

    add-int v13, v14, v15

    .line 239
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 277
    :catch_1
    move-exception v2

    .line 278
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v14, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "Error in closing the stream"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 279
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 263
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #k:I
    .end local v11           #size:I
    .end local v12           #tempbuffer:[B
    .end local v13           #value:I
    :catch_2
    move-exception v2

    .line 264
    .restart local v2       #e:Ljava/io/IOException;
    :goto_5
    :try_start_6
    sget-object v14, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "Error in Function readGrid()"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 265
    const/4 v10, 0x0

    .line 274
    if-eqz v4, :cond_7

    .line 276
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    .line 277
    :catch_3
    move-exception v2

    .line 278
    sget-object v14, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "Error in closing the stream"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 266
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 267
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_6
    :try_start_8
    sget-object v14, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "!@ArrayIndexOutOfBoundsException: File corrupted, deleting now."

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 271
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 272
    :cond_a
    const/4 v10, 0x0

    .line 274
    if-eqz v4, :cond_7

    .line 276
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    .line 277
    :catch_5
    move-exception v2

    .line 278
    .local v2, e:Ljava/io/IOException;
    sget-object v14, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "Error in closing the stream"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 274
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_7
    if-eqz v4, :cond_b

    .line 276
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 279
    :cond_b
    :goto_8
    throw v14

    .line 277
    :catch_6
    move-exception v2

    .line 278
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v15, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v16, "Error in closing the stream"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 274
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v7       #i:I
    .restart local v8       #j:I
    .restart local v11       #size:I
    .restart local v13       #value:I
    :catchall_1
    move-exception v14

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .line 266
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 263
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v9       #k:I
    .restart local v12       #tempbuffer:[B
    :cond_c
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public release(III)V
    .locals 6
    .parameter "prevTouchX"
    .parameter "prevTouchY"
    .parameter "releaseTo"

    .prologue
    .line 810
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v2

    .line 812
    .local v2, releaseFrom:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    move v3, p1

    .local v3, x:I
    move v0, p1

    .local v0, px:I
    move v4, p2

    .local v4, y:I
    move v1, p2

    .line 820
    .local v1, py:I
    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-ne v5, v2, :cond_3

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    if-ne v5, p3, :cond_3

    .line 822
    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 823
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 825
    if-ltz v3, :cond_4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 828
    :cond_4
    move v3, v0

    .line 830
    :cond_5
    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-ne v5, v2, :cond_6

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    if-ne v5, p3, :cond_6

    .line 832
    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 833
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 835
    iget v5, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v5, v5, -0x1

    if-gt v3, v5, :cond_7

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 838
    :cond_7
    add-int/lit8 v1, v1, -0x1

    .line 839
    move v3, v0

    .line 840
    move v4, v1

    .line 841
    if-ltz v4, :cond_8

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 845
    :cond_8
    move v3, p1

    move v0, p1

    .line 846
    add-int/lit8 v4, p2, 0x1

    move v1, v4

    .line 849
    :cond_9
    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-ne v5, v2, :cond_a

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    if-ne v5, p3, :cond_a

    .line 851
    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 852
    :cond_a
    add-int/lit8 v3, v3, -0x1

    .line 854
    if-ltz v3, :cond_b

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 857
    :cond_b
    move v3, v0

    .line 859
    :cond_c
    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-ne v5, v2, :cond_d

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    if-ne v5, p3, :cond_d

    .line 861
    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 862
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 864
    iget v5, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v5, v5, -0x1

    if-gt v3, v5, :cond_e

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 867
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 868
    move v3, v0

    .line 869
    move v4, v1

    .line 870
    iget v5, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_0

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_9

    goto/16 :goto_0
.end method

.method public restore(II)V
    .locals 7
    .parameter "prevTouchX"
    .parameter "prevTouchY"

    .prologue
    .line 778
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v4

    .line 780
    .local v4, releaseFrom:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 806
    :cond_0
    return-void

    .line 783
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    .line 784
    .local v5, releaseTo:I
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 787
    if-eq v4, v5, :cond_2

    .line 788
    invoke-virtual {p0, p1, p2, v5}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->release(III)V

    .line 792
    :cond_2
    add-int/lit8 v2, p1, 0xa

    .local v2, limiti:I
    add-int/lit8 v3, p2, 0xa

    .line 793
    .local v3, limitj:I
    add-int/lit8 v1, p2, -0xa

    .local v1, j:I
    :goto_0
    if-gt v1, v3, :cond_0

    .line 794
    add-int/lit8 v0, p1, -0xa

    .local v0, i:I
    :goto_1
    if-gt v0, v2, :cond_4

    .line 795
    if-ltz v0, :cond_3

    if-ltz v1, :cond_3

    iget v6, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v6, v6, -0x1

    if-gt v0, v6, :cond_3

    iget v6, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v6, v6, -0x1

    if-gt v1, v6, :cond_3

    .line 797
    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v6

    if-ne v6, v4, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v6

    if-eq v6, v4, :cond_3

    .line 799
    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    .line 800
    invoke-virtual {p0, p1, p2, v5}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->release(III)V

    .line 794
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 793
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setBaseIndex(III)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "value"

    .prologue
    .line 135
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, -0x70000001

    and-int/2addr v1, v2

    aput v1, v0, p2

    .line 142
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, -0xfff001

    and-int/2addr v1, v2

    aput v1, v0, p2

    .line 139
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    shl-int/lit8 v2, p3, 0xc

    or-int/2addr v1, v2

    aput v1, v0, p2

    .line 140
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, 0xfffffff

    and-int/2addr v1, v2

    aput v1, v0, p2

    goto :goto_0
.end method

.method public setFixed(IIZ)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "value"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, -0xf000001

    and-int/2addr v1, v2

    aput v1, v0, p2

    .line 159
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v0, p1

    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v2, v0, p2

    if-eqz p3, :cond_0

    const/high16 v0, 0x100

    :goto_0
    or-int/2addr v0, v2

    aput v0, v1, p2

    .line 160
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeyIndex(III)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "value"

    .prologue
    .line 118
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, -0x70000001

    and-int/2addr v1, v2

    aput v1, v0, p2

    .line 126
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    and-int/lit16 v1, v1, -0x1000

    aput v1, v0, p2

    .line 123
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    or-int/2addr v1, p3

    aput v1, v0, p2

    .line 124
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, 0xfffffff

    and-int/2addr v1, v2

    aput v1, v0, p2

    goto :goto_0
.end method
