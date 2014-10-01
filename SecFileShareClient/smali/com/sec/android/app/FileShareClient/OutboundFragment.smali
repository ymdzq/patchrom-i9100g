.class public Lcom/sec/android/app/FileShareClient/OutboundFragment;
.super Landroid/app/Fragment;
.source "OutboundFragment.java"

# interfaces
.implements Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "[FileShare][Client]"

.field private static final TAGClass:Ljava/lang/String; = "OutboundFragments : "


# instance fields
.field private mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCurrentStateText:Ljava/lang/String;

.field private mCurrentStateTextView:Landroid/widget/TextView;

.field private mCustomAdapter:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

.field private mFilelistTextView:Landroid/widget/TextView;

.field private mIntent:Landroid/content/Intent;

.field private mListView:Landroid/widget/ListView;

.field private mMenuItem:Landroid/view/MenuItem;

.field private mMoreTextView:Landroid/widget/TextView;

.field private mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

.field private mOutboundId:I

.field private mP2pDeviceInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSendFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mSendLayout:Landroid/widget/LinearLayout;

.field private mTotalSizeTextView:Landroid/widget/TextView;

.field final mUiHandler:Landroid/os/Handler;

.field final mUpdateResults:Ljava/lang/Runnable;

.field private mbBindReq:Z

.field private mbCompleted:Z

.field private mbCreateOutbound:Z

.field private mbGetOutbound:Z

.field private mbReadyFileList:Z

.field private mbStopForegroundService:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mSendFileList:Ljava/util/ArrayList;

    .line 47
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mP2pDeviceInfoList:Ljava/util/ArrayList;

    .line 48
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mIntent:Landroid/content/Intent;

    .line 49
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutboundId:I

    .line 51
    iput-boolean v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbBindReq:Z

    .line 52
    iput-boolean v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbCompleted:Z

    .line 53
    iput-boolean v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbCreateOutbound:Z

    .line 54
    iput-boolean v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbGetOutbound:Z

    .line 55
    iput-boolean v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbStopForegroundService:Z

    .line 56
    iput-boolean v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbReadyFileList:Z

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCurrentStateText:Ljava/lang/String;

    .line 250
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    .line 252
    new-instance v0, Lcom/sec/android/app/FileShareClient/OutboundFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment$2;-><init>(Lcom/sec/android/app/FileShareClient/OutboundFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mConnection:Landroid/content/ServiceConnection;

    .line 433
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mUiHandler:Landroid/os/Handler;

    .line 434
    new-instance v0, Lcom/sec/android/app/FileShareClient/OutboundFragment$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment$3;-><init>(Lcom/sec/android/app/FileShareClient/OutboundFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mUpdateResults:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbReadyFileList:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mSendFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbCreateOutbound:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/FileShareClient/OutboundFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbCreateOutbound:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/FileShareClient/OutboundFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->createOutbound()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbCompleted:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCurrentStateText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Lcom/sec/android/app/FileShareClient/OutboundListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCustomAdapter:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Lcom/sec/android/app/FileShareClient/ClientService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/FileShareClient/OutboundFragment;Lcom/sec/android/app/FileShareClient/ClientService;)Lcom/sec/android/app/FileShareClient/ClientService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sec/android/app/FileShareClient/OutboundFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbBindReq:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbStopForegroundService:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/FileShareClient/OutboundFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbStopForegroundService:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbGetOutbound:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/FileShareClient/OutboundFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbGetOutbound:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/FileShareClient/OutboundFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getOutbound()V

    return-void
.end method

.method private bindClientService()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 289
    const-string v1, "[FileShare][Client]"

    const-string v2, "OutboundFragments : bindClientService()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    if-nez v1, :cond_0

    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.FileShareClient.SERVICE_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 293
    iput-boolean v3, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbBindReq:Z

    .line 295
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private createOutbound()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    if-nez v0, :cond_1

    .line 339
    iget-boolean v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbBindReq:Z

    if-eqz v0, :cond_0

    .line 340
    iput-boolean v3, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbCreateOutbound:Z

    .line 341
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboundFragments : createOutbound : waiting bindReq"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->bindClientService()V

    .line 345
    iput-boolean v3, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbCreateOutbound:Z

    .line 346
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboundFragments : createOutbound : waiting bind"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mP2pDeviceInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 352
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboundFragments : createOutbound : device info null!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_3

    .line 358
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboundFragments : createOutbound : mIntent null!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    :cond_3
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboundFragments : createOutbound"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "onNewIntent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCurrentStateTextView:Landroid/widget/TextView;

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    if-eqz v0, :cond_4

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileShareClient/Outbound;->setListener(Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;)V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/Outbound;->getUseStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/Outbound;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileShareClient/ClientService;->destroyOutbound(I)V

    .line 377
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mP2pDeviceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/FileShareClient/ClientService;->createOutbound(Landroid/content/Intent;Ljava/util/ArrayList;)Lcom/sec/android/app/FileShareClient/Outbound;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    if-nez v0, :cond_6

    .line 379
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboundFragments : createOutbound : is null!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 373
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/FileShareClient/Outbound;->setUseStatus(I)V

    goto :goto_1

    .line 384
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/Outbound;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutboundId:I

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/Outbound;->isComplete()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbCompleted:Z

    .line 386
    new-instance v0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/FileShareClient/Outbound;)V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCustomAdapter:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCustomAdapter:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/FileShareClient/Outbound;->setListener(Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/FileShareClient/Outbound;->setUseStatus(I)V

    goto/16 :goto_0
.end method

.method private getConvertSize(J)Ljava/lang/String;
    .locals 12
    .parameter "size"

    .prologue
    const/4 v11, 0x5

    const-wide/high16 v9, 0x4090

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 315
    const-string v3, ""

    .line 316
    .local v3, retSize:Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "Bytes"

    aput-object v5, v4, v8

    const-string v5, "KB"

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string v6, "MB"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "GB"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "TB"

    aput-object v6, v4, v5

    .line 317
    .local v4, unit:[Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 318
    .local v0, convertSize:D
    const/4 v2, 0x0

    .line 320
    .local v2, count:I
    long-to-double v0, p1

    .line 321
    :goto_0
    cmpl-double v5, v0, v9

    if-lez v5, :cond_0

    .line 322
    div-double/2addr v0, v9

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-ltz v5, :cond_1

    if-lt v2, v11, :cond_2

    .line 326
    :cond_1
    const-string v3, "Wrong size"

    .line 333
    :goto_1
    return-object v3

    .line 327
    :cond_2
    if-nez v2, :cond_3

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 330
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%.2f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private getOutbound()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    if-nez v0, :cond_2

    .line 395
    iget-boolean v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbBindReq:Z

    if-eqz v0, :cond_1

    .line 396
    iput-boolean v3, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbGetOutbound:Z

    .line 397
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboundFragments : getOutbound : waiting bindReq"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->bindClientService()V

    .line 401
    iput-boolean v3, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbGetOutbound:Z

    .line 402
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboundFragments : getOutbound : waiting bind"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 407
    :cond_2
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutboundFragments : getOutbound : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutboundId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileShareClient/Outbound;->setListener(Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;)V

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    iget v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutboundId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileShareClient/ClientService;->getOutbound(I)Lcom/sec/android/app/FileShareClient/Outbound;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    if-nez v0, :cond_4

    .line 414
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboundFragments : getOutbound : is null!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 418
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/Outbound;->isComplete()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbCompleted:Z

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbReadyFileList:Z

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/Outbound;->getCurrentStateString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCurrentStateText:Ljava/lang/String;

    .line 421
    new-instance v0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/FileShareClient/Outbound;)V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCustomAdapter:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCustomAdapter:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 423
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->readyFilelist()V

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/Outbound;->getUseStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/FileShareClient/Outbound;->setUseStatus(I)V

    .line 428
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbCompleted:Z

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/FileShareClient/Outbound;->setListener(Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;)V

    goto/16 :goto_0
.end method

.method private startService()V
    .locals 3

    .prologue
    .line 309
    const-string v1, "[FileShare][Client]"

    const-string v2, "OutboundFragments : startService()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.FileShareClient.SERVICE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 312
    return-void
.end method

.method private unbindClientService()V
    .locals 2

    .prologue
    .line 298
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboundFragments : unbindClientService()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 304
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbBindReq:Z

    .line 306
    return-void
.end method


# virtual methods
.method public Invalidate(Z)V
    .locals 2
    .parameter "bRemoveOutbound"

    .prologue
    .line 536
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboundFragments : Invalidate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    if-eqz p1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/Outbound;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileShareClient/ClientService;->destroyOutbound(I)V

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 543
    return-void
.end method

.method public completed()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 463
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboundFragments : completed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/Outbound;->getCurrentStateString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCurrentStateText:Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCurrentStateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCurrentStateText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mSendFileList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mFilelistTextView:Landroid/widget/TextView;

    const v1, 0x7f050020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mTotalSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCustomAdapter:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->dismissDialog()V

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbCompleted:Z

    .line 474
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 67
    const-string v1, "[FileShare][Client]"

    const-string v2, "OutboundFragments : onActivityCreated"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mListView:Landroid/widget/ListView;

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCurrentStateTextView:Landroid/widget/TextView;

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mTotalSizeTextView:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mMoreTextView:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mFilelistTextView:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mSendLayout:Landroid/widget/LinearLayout;

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mSendLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mSendLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/FileShareClient/OutboundFragment$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment$1;-><init>(Lcom/sec/android/app/FileShareClient/OutboundFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mIntent:Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sec.android.app.FileShareClient.SEND_RESULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.app.FileShareClient.SEND_PROGRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "outboundId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutboundId:I

    .line 94
    iget v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutboundId:I

    if-gez v1, :cond_1

    .line 95
    const-string v1, "[FileShare][Client]"

    const-string v2, "OutboundFragments : onActivityCreated : Index is invalid"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 121
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v1, "com.sec.android.app.FileShareClient.SEND_RESULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iput-boolean v4, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbCompleted:Z

    .line 105
    :cond_2
    invoke-virtual {p0, v4}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->setHasOptionsMenu(Z)V

    .line 107
    const-string v1, "com.sec.android.app.FileShareClient.SEND_RESULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    sget v1, Lcom/sec/android/app/FileShareClient/ClientService;->mNotiCnt:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/sec/android/app/FileShareClient/ClientService;->mNotiCnt:I

    .line 109
    const-string v1, "[FileShare][Client]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@@ OutboundFragments : onCreate : mNotiCnt ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/FileShareClient/ClientService;->mNotiCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget v1, Lcom/sec/android/app/FileShareClient/ClientService;->mNotiCnt:I

    if-nez v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    if-eqz v1, :cond_4

    .line 112
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/ClientService;->stopOutboundForeground()V

    .line 119
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->startService()V

    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->bindClientService()V

    goto :goto_0

    .line 115
    :cond_4
    iput-boolean v4, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbStopForegroundService:Z

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 182
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboundFragments : onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.FileShareClient.SEND_RESULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/Outbound;->getUseStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/Outbound;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileShareClient/ClientService;->destroyOutbound(I)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileShareClient/Outbound;->setListener(Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileShareClient/Outbound;->setUseStatus(I)V

    .line 192
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 197
    const-string v1, "[FileShare][Client]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutboundFragments : onConfigurationChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, deviceType:Ljava/lang/String;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mMenuItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 203
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 204
    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mMenuItem:Landroid/view/MenuItem;

    const/high16 v2, 0x7f02

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 210
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, deviceType:Ljava/lang/String;
    const v1, 0x7f050005

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mMenuItem:Landroid/view/MenuItem;

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mMenuItem:Landroid/view/MenuItem;

    const/high16 v2, 0x7f02

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mMenuItem:Landroid/view/MenuItem;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 215
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 62
    const v0, 0x7f040003

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 176
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->unbindClientService()V

    .line 177
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboundFragments : onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mMenuItem:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCustomAdapter:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->showCancelAllConfirmDialog(Lcom/sec/android/app/FileShareClient/Outbound;)V

    .line 222
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 126
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 127
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mIntent:Landroid/content/Intent;

    .line 128
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, action:Ljava/lang/String;
    const-string v2, "[FileShare][Client]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutboundFragments : onResume : mIntent["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "outboundId"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 134
    .local v1, outboundId:I
    const-string v2, "com.sec.android.app.FileShareClient.SEND_RESULT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.sec.android.app.FileShareClient.SEND_PROGRESS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 135
    :cond_0
    iget v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutboundId:I

    if-eq v1, v2, :cond_2

    .line 136
    iput v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutboundId:I

    .line 138
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/FileShareClient/Outbound;->setListener(Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;)V

    .line 140
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v2}, Lcom/sec/android/app/FileShareClient/Outbound;->getUseStatus()I

    move-result v2

    if-eq v2, v6, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "bOutboundClear"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v3}, Lcom/sec/android/app/FileShareClient/Outbound;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/FileShareClient/ClientService;->destroyOutbound(I)V

    .line 143
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "bOutboundClear"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getOutbound()V

    .line 151
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbStopForegroundService:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 152
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    invoke-virtual {v2}, Lcom/sec/android/app/FileShareClient/ClientService;->stopOutboundForeground()V

    .line 153
    iput-boolean v5, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbStopForegroundService:Z

    .line 170
    :cond_3
    :goto_1
    return-void

    .line 146
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/FileShareClient/Outbound;->setUseStatus(I)V

    goto :goto_0

    .line 157
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    if-nez v2, :cond_6

    .line 158
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->createOutbound()V

    goto :goto_1

    .line 159
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v2}, Lcom/sec/android/app/FileShareClient/Outbound;->getReqFinish()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v2}, Lcom/sec/android/app/FileShareClient/Outbound;->getUseStatus()I

    move-result v2

    if-ne v2, v6, :cond_7

    .line 161
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v3}, Lcom/sec/android/app/FileShareClient/Outbound;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/FileShareClient/ClientService;->destroyOutbound(I)V

    .line 162
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "bOutboundClear"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/FileShareClient/Outbound;->setReqFinish(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 164
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/FileShareClient/Outbound;->setUseStatus(I)V

    goto :goto_2
.end method

.method public readyFilelist()V
    .locals 11

    .prologue
    const v10, 0x7f050001

    const/4 v3, 0x2

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 479
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v2}, Lcom/sec/android/app/FileShareClient/Outbound;->getFileArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mSendFileList:Ljava/util/ArrayList;

    .line 480
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mSendFileList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 481
    const-string v2, "[FileShare][Client]"

    const-string v3, "OutboundFragments : readyFilelist : mSendFileList == null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCurrentStateTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(I)V

    .line 483
    iget-boolean v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbCompleted:Z

    if-eqz v2, :cond_0

    .line 484
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mFilelistTextView:Landroid/widget/TextView;

    const v3, 0x7f050020

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 488
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mTotalSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    iput-boolean v7, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbReadyFileList:Z

    .line 531
    :goto_1
    return-void

    .line 486
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mFilelistTextView:Landroid/widget/TextView;

    const v3, 0x7f050017

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 493
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mFilelistTextView:Landroid/widget/TextView;

    if-nez v2, :cond_2

    .line 494
    const-string v2, "[FileShare][Client]"

    const-string v3, "OutboundFragments : readyFilelist : mFilelistTextView == null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 498
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mSendFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, fileListText:Ljava/lang/String;
    const-string v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, deviceType:Ljava/lang/String;
    iput-boolean v8, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbReadyFileList:Z

    .line 502
    if-eqz v0, :cond_5

    const-string v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 503
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 504
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mSendFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 505
    const v2, 0x7f05001e

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 517
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mFilelistTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mTotalSizeTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f05001a

    invoke-virtual {p0, v4}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v4}, Lcom/sec/android/app/FileShareClient/Outbound;->getTotalSize()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getConvertSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-boolean v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbCompleted:Z

    if-eqz v2, :cond_7

    .line 520
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCurrentStateTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCurrentStateText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mTotalSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 523
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCustomAdapter:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->dismissDialog()V

    goto/16 :goto_1

    .line 506
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mSendFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 507
    const v2, 0x7f05001d

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v7

    iget-object v4, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mSendFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 510
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mSendFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v8, :cond_6

    .line 511
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 512
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mMoreTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f050006

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mSendFileList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 514
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 526
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 527
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCurrentStateTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public requestFinish()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mOutbound:Lcom/sec/android/app/FileShareClient/Outbound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileShareClient/Outbound;->setReqFinish(Z)V

    .line 241
    :cond_0
    return-void
.end method

.method public setDeviceList(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, p2pDeviceInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;>;"
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboundFragments : setDeviceList"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mP2pDeviceInfoList:Ljava/util/ArrayList;

    .line 235
    return-void
.end method

.method public setStopForegroundService(Z)V
    .locals 0
    .parameter "bStopForegroundService"

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbStopForegroundService:Z

    .line 245
    return-void
.end method

.method public updateReciver()V
    .locals 2

    .prologue
    .line 449
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/FileShareClient/OutboundFragment$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/FileShareClient/OutboundFragment$4;-><init>(Lcom/sec/android/app/FileShareClient/OutboundFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 457
    .local v0, mUiThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 458
    return-void
.end method
