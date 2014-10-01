.class Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileShareClient/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileMaker"
.end annotation


# instance fields
.field private mCompleteCount:I

.field private mCopyFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mVCardUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/FileShareClient/FileManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/FileShareClient/FileManager;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 164
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->this$0:Lcom/sec/android/app/FileShareClient/FileManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mVCardUriList:Ljava/util/ArrayList;

    .line 167
    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mCopyFileList:Ljava/util/ArrayList;

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mCompleteCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/FileShareClient/FileManager;Lcom/sec/android/app/FileShareClient/FileManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;-><init>(Lcom/sec/android/app/FileShareClient/FileManager;)V

    return-void
.end method

.method private addCopyFileList(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mCopyFileList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mCopyFileList:Ljava/util/ArrayList;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mCopyFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    return-void
.end method

.method private addVCardUriList(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mVCardUriList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mVCardUriList:Ljava/util/ArrayList;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mVCardUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method private getTotalCount()I
    .locals 2

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 300
    .local v0, nTotal:I
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mVCardUriList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mVCardUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mCopyFileList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mCopyFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 308
    :cond_1
    return v0
.end method

.method private isCompleted()Z
    .locals 2

    .prologue
    .line 312
    iget v0, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mCompleteCount:I

    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->getTotalCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 313
    const-string v0, "[FileShare][Client]"

    const-string v1, "FileManager: FileMaker :isCompleted!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x1

    .line 317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSuccess(Ljava/io/File;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 278
    iget v0, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mCompleteCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mCompleteCount:I

    .line 280
    if-nez p1, :cond_0

    .line 295
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->this$0:Lcom/sec/android/app/FileShareClient/FileManager;

    #getter for: Lcom/sec/android/app/FileShareClient/FileManager;->mbDestroyed:Z
    invoke-static {v0}, Lcom/sec/android/app/FileShareClient/FileManager;->access$500(Lcom/sec/android/app/FileShareClient/FileManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    const-string v0, "[FileShare][Client]"

    const-string v1, "FileManager: FileMaker : delete fail "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_1
    const-string v0, "[FileShare][Client]"

    const-string v1, "FileManager: FileMaker :updateSuccess > deleted"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_2
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileManager: FileMaker :updateSuccess!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->this$0:Lcom/sec/android/app/FileShareClient/FileManager;

    #getter for: Lcom/sec/android/app/FileShareClient/FileManager;->mFileList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/FileShareClient/FileManager;->access$300(Lcom/sec/android/app/FileShareClient/FileManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->this$0:Lcom/sec/android/app/FileShareClient/FileManager;

    #getter for: Lcom/sec/android/app/FileShareClient/FileManager;->mTempFileList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/FileShareClient/FileManager;->access$700(Lcom/sec/android/app/FileShareClient/FileManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addUri(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "type"

    .prologue
    .line 171
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->this$0:Lcom/sec/android/app/FileShareClient/FileManager;

    #calls: Lcom/sec/android/app/FileShareClient/FileManager;->uri2FileUri(Landroid/net/Uri;Ljava/lang/String;)I
    invoke-static {v2, p1, p2}, Lcom/sec/android/app/FileShareClient/FileManager;->access$100(Lcom/sec/android/app/FileShareClient/FileManager;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    .line 172
    .local v1, nResult:I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_3

    .line 174
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->this$0:Lcom/sec/android/app/FileShareClient/FileManager;

    #getter for: Lcom/sec/android/app/FileShareClient/FileManager;->mRetFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/FileShareClient/FileManager;->access$200(Lcom/sec/android/app/FileShareClient/FileManager;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    const-string v2, "[FileShare][Client]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileManager: FileMaker.addUri : file does not exist["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v1, 0x0

    .line 191
    .end local v0           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return v1

    .line 180
    .restart local v0       #file:Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_2

    .line 181
    invoke-direct {p0, v0}, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->addCopyFileList(Ljava/io/File;)V

    .line 182
    const/4 v1, 0x3

    .line 183
    const-string v2, "[FileShare][Client]"

    const-string v3, "FileManager: FileMaker.addUri : no permission"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->this$0:Lcom/sec/android/app/FileShareClient/FileManager;

    #getter for: Lcom/sec/android/app/FileShareClient/FileManager;->mFileList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/FileShareClient/FileManager;->access$300(Lcom/sec/android/app/FileShareClient/FileManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    .end local v0           #file:Ljava/io/File;
    :cond_3
    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    .line 188
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->addVCardUriList(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public needtoStartThread()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mVCardUriList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mVCardUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    const-string v1, "[FileShare][Client]"

    const-string v2, "FileManager: FileMaker.needtoStartThread : need to create"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    return v0

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mCopyFileList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mCopyFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    const-string v1, "[FileShare][Client]"

    const-string v2, "FileManager: FileMaker.needtoStartThread : need to copy"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 211
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mVCardUriList:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 212
    iget-object v5, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mVCardUriList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 213
    .local v4, uri:Landroid/net/Uri;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 214
    const-string v5, "[FileShare][Client]"

    const-string v6, "FileManager: FileMaker : fail to make > interrupted"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 218
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->this$0:Lcom/sec/android/app/FileShareClient/FileManager;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/FileShareClient/FileManager;->createVcard(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    .line 219
    .local v2, file:Ljava/io/File;
    if-nez v2, :cond_2

    .line 220
    iget-object v5, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->this$0:Lcom/sec/android/app/FileShareClient/FileManager;

    #getter for: Lcom/sec/android/app/FileShareClient/FileManager;->mResultHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/FileShareClient/FileManager;->access$400(Lcom/sec/android/app/FileShareClient/FileManager;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 221
    const-string v5, "[FileShare][Client]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileManager: FileMaker : fail to make > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 256
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 257
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "[FileShare][Client]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileManager: FileMaker: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 225
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_2
    :try_start_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->updateSuccess(Ljava/io/File;)V

    goto :goto_0

    .line 228
    .end local v2           #file:Ljava/io/File;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->this$0:Lcom/sec/android/app/FileShareClient/FileManager;

    #getter for: Lcom/sec/android/app/FileShareClient/FileManager;->mbDestroyed:Z
    invoke-static {v5}, Lcom/sec/android/app/FileShareClient/FileManager;->access$500(Lcom/sec/android/app/FileShareClient/FileManager;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 229
    iget-object v5, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->this$0:Lcom/sec/android/app/FileShareClient/FileManager;

    #getter for: Lcom/sec/android/app/FileShareClient/FileManager;->mResultHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/FileShareClient/FileManager;->access$400(Lcom/sec/android/app/FileShareClient/FileManager;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 234
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mCopyFileList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 235
    iget-object v5, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->mCopyFileList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 236
    .restart local v2       #file:Ljava/io/File;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 237
    const-string v5, "[FileShare][Client]"

    const-string v6, "FileManager: FileMaker : fail to copy > interrupted"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 241
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->this$0:Lcom/sec/android/app/FileShareClient/FileManager;

    #calls: Lcom/sec/android/app/FileShareClient/FileManager;->copyFile(Ljava/io/File;)Ljava/io/File;
    invoke-static {v5, v2}, Lcom/sec/android/app/FileShareClient/FileManager;->access$600(Lcom/sec/android/app/FileShareClient/FileManager;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 242
    .local v0, copyFile:Ljava/io/File;
    if-nez v0, :cond_6

    .line 243
    iget-object v5, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->this$0:Lcom/sec/android/app/FileShareClient/FileManager;

    #getter for: Lcom/sec/android/app/FileShareClient/FileManager;->mResultHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/FileShareClient/FileManager;->access$400(Lcom/sec/android/app/FileShareClient/FileManager;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 244
    const-string v5, "[FileShare][Client]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileManager: FileMaker : fail to copy > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 247
    :cond_6
    invoke-direct {p0, v0}, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->updateSuccess(Ljava/io/File;)V

    goto :goto_2

    .line 250
    .end local v0           #copyFile:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->this$0:Lcom/sec/android/app/FileShareClient/FileManager;

    #getter for: Lcom/sec/android/app/FileShareClient/FileManager;->mbDestroyed:Z
    invoke-static {v5}, Lcom/sec/android/app/FileShareClient/FileManager;->access$500(Lcom/sec/android/app/FileShareClient/FileManager;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 251
    iget-object v5, p0, Lcom/sec/android/app/FileShareClient/FileManager$FileMaker;->this$0:Lcom/sec/android/app/FileShareClient/FileManager;

    #getter for: Lcom/sec/android/app/FileShareClient/FileManager;->mResultHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/FileShareClient/FileManager;->access$400(Lcom/sec/android/app/FileShareClient/FileManager;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
