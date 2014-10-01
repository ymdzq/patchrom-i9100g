.class public Lcom/sec/android/app/FileShareClient/Outbound;
.super Ljava/lang/Object;
.source "Outbound.java"

# interfaces
.implements Lcom/sec/android/allshare/DeviceFinder$IDeviceFinderEventListener;
.implements Lcom/sec/android/app/FileShareClient/Receiver$IReceiverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/FileShareClient/Outbound$IOutboundForeground;,
        Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;
    }
.end annotation


# static fields
.field public static final NEED_TO_REMOVE:I = 0x2

.field public static final NOT_USED:I = 0x0

.field private static final REFRESH:I = 0x3ea

.field public static final SEND_PROGRESS:Ljava/lang/String; = "com.sec.android.app.FileShareClient.SEND_PROGRESS"

.field public static final SEND_RESULT:Ljava/lang/String; = "com.sec.android.app.FileShareClient.SEND_RESULT"

.field private static final TAG:Ljava/lang/String; = "[FileShare][Client]"

.field private static final TAGClass:Ljava/lang/String; = "Outbound : "

.field private static final TIME_OUT:I = 0x3e9

.field private static final TIME_OUT_FIND_SERVICE:I = 0x7530

.field private static final TIME_OUT_REFRESH:I = 0x1388

.field public static final USED:I = 0x1


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCntCompleteReceiver:I

.field private mContext:Landroid/content/Context;

.field private mFileArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mFileMakerHandler:Landroid/os/Handler;

.field private mFileManager:Lcom/sec/android/app/FileShareClient/FileManager;

.field private mId:I

.field private mIfg:Lcom/sec/android/app/FileShareClient/Outbound$IOutboundForeground;

.field private mIntent:Landroid/content/Intent;

.field private mListenDevList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;

.field private mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mReceiverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileShareClient/Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceProvider:Lcom/sec/android/allshare/ServiceProvider;

.field private mTimerHandler:Landroid/os/Handler;

.field private mTotalSize:J

.field private mUseStatus:I

.field private mbAddedOngoing:Z

.field private mbComplete:Z

.field private mbCompleteReceiverList:[Z

.field private mbRegBroadcastReceiver:Z

.field private mbReqFinish:Z

.field private mbReqSvcProvider:Z

.field private mbShowWait:Z


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    .line 52
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileManager:Lcom/sec/android/app/FileShareClient/FileManager;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    .line 56
    iput v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mCntCompleteReceiver:I

    .line 57
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mListener:Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;

    .line 58
    iput-boolean v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbRegBroadcastReceiver:Z

    .line 59
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mServiceProvider:Lcom/sec/android/allshare/ServiceProvider;

    .line 60
    iput-boolean v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbReqSvcProvider:Z

    .line 61
    iput-boolean v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbAddedOngoing:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbShowWait:Z

    .line 64
    iput-boolean v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbComplete:Z

    .line 65
    iput v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mUseStatus:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mTotalSize:J

    .line 67
    iput-boolean v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbReqFinish:Z

    .line 68
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mIntent:Landroid/content/Intent;

    .line 70
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 71
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 79
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mIfg:Lcom/sec/android/app/FileShareClient/Outbound$IOutboundForeground;

    .line 454
    new-instance v0, Lcom/sec/android/app/FileShareClient/Outbound$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileShareClient/Outbound$3;-><init>(Lcom/sec/android/app/FileShareClient/Outbound;)V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mListenDevList:Ljava/util/ArrayList;

    .line 649
    new-instance v0, Lcom/sec/android/app/FileShareClient/Outbound$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileShareClient/Outbound$5;-><init>(Lcom/sec/android/app/FileShareClient/Outbound;)V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileMakerHandler:Landroid/os/Handler;

    .line 712
    new-instance v0, Lcom/sec/android/app/FileShareClient/Outbound$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileShareClient/Outbound$6;-><init>(Lcom/sec/android/app/FileShareClient/Outbound;)V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mTimerHandler:Landroid/os/Handler;

    .line 106
    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "nId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    .line 52
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileManager:Lcom/sec/android/app/FileShareClient/FileManager;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    .line 56
    iput v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mCntCompleteReceiver:I

    .line 57
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mListener:Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;

    .line 58
    iput-boolean v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbRegBroadcastReceiver:Z

    .line 59
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mServiceProvider:Lcom/sec/android/allshare/ServiceProvider;

    .line 60
    iput-boolean v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbReqSvcProvider:Z

    .line 61
    iput-boolean v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbAddedOngoing:Z

    .line 63
    iput-boolean v4, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbShowWait:Z

    .line 64
    iput-boolean v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbComplete:Z

    .line 65
    iput v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mUseStatus:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mTotalSize:J

    .line 67
    iput-boolean v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbReqFinish:Z

    .line 68
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mIntent:Landroid/content/Intent;

    .line 70
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 71
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 79
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mIfg:Lcom/sec/android/app/FileShareClient/Outbound$IOutboundForeground;

    .line 454
    new-instance v0, Lcom/sec/android/app/FileShareClient/Outbound$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileShareClient/Outbound$3;-><init>(Lcom/sec/android/app/FileShareClient/Outbound;)V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mListenDevList:Ljava/util/ArrayList;

    .line 649
    new-instance v0, Lcom/sec/android/app/FileShareClient/Outbound$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileShareClient/Outbound$5;-><init>(Lcom/sec/android/app/FileShareClient/Outbound;)V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileMakerHandler:Landroid/os/Handler;

    .line 712
    new-instance v0, Lcom/sec/android/app/FileShareClient/Outbound$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileShareClient/Outbound$6;-><init>(Lcom/sec/android/app/FileShareClient/Outbound;)V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mTimerHandler:Landroid/os/Handler;

    .line 109
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    .line 110
    iput p2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    .line 112
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/Outbound;->isP2pConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/Outbound;->requestServiceProvider()V

    .line 116
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    .line 117
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/Outbound;->regBroadcastReceiver()V

    .line 118
    invoke-direct {p0, v4}, Lcom/sec/android/app/FileShareClient/Outbound;->addOngoing(Z)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/FileShareClient/Outbound;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/FileShareClient/Outbound;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileMakerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/FileShareClient/Outbound;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/FileShareClient/Outbound;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileArrayList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/FileShareClient/Outbound;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbShowWait:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/FileShareClient/Outbound;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbShowWait:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/FileShareClient/Outbound;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/FileShareClient/Outbound;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/Outbound;->destroyServiceProvider()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/FileShareClient/Outbound;)Lcom/sec/android/app/FileShareClient/Outbound$IOutboundForeground;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mIfg:Lcom/sec/android/app/FileShareClient/Outbound$IOutboundForeground;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/FileShareClient/Outbound;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileShareClient/Outbound;->changedPeer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/FileShareClient/Outbound;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mListenDevList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1714(Lcom/sec/android/app/FileShareClient/Outbound;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mTotalSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/FileShareClient/Outbound;)Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mListener:Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/FileShareClient/Outbound;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileShareClient/Outbound;->addOngoing(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/FileShareClient/Outbound;)Lcom/sec/android/app/FileShareClient/FileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileManager:Lcom/sec/android/app/FileShareClient/FileManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/FileShareClient/Outbound;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbReqSvcProvider:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/FileShareClient/Outbound;)Lcom/sec/android/allshare/ServiceProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mServiceProvider:Lcom/sec/android/allshare/ServiceProvider;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/FileShareClient/Outbound;Lcom/sec/android/allshare/ServiceProvider;)Lcom/sec/android/allshare/ServiceProvider;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mServiceProvider:Lcom/sec/android/allshare/ServiceProvider;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/FileShareClient/Outbound;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/Outbound;->refreshAndFindDev()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/FileShareClient/Outbound;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/Outbound;->isConnectedDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/FileShareClient/Outbound;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/Outbound;->sendRefreshTimeout()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/FileShareClient/Outbound;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/FileShareClient/Outbound;->setConnectionStatus(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/FileShareClient/Outbound;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/Outbound;->requestServiceProvider()V

    return-void
.end method

.method private addNotification()V
    .locals 15

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Outbound;->getCurrentStateString()Ljava/lang/String;

    move-result-object v4

    .line 375
    .local v4, contentTitle:Ljava/lang/String;
    const-string v3, ""

    .line 376
    .local v3, contentText:Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileArrayList:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    .line 377
    iget-object v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileArrayList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 378
    iget-object v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 379
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const v11, 0x7f050006

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileArrayList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 383
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 385
    iget-object v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 386
    .local v6, notiMgr:Landroid/app/NotificationManager;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 388
    .local v0, builder:Landroid/app/Notification$Builder;
    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const-class v10, Lcom/sec/android/app/FileShareClient/OutboundActivity;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    .local v8, notificationIntent:Landroid/content/Intent;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "com.sec.android.app.FileShareClient.SEND_RESULT"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v9, "outboundId"

    iget v10, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    const/high16 v9, 0x1080

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 392
    const-string v9, "[FileShare][Client]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Outbound : addNotification id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/high16 v11, 0x4000

    invoke-static {v9, v10, v8, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 395
    .local v2, contentIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    iget-object v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const-class v10, Lcom/sec/android/app/FileShareClient/ClientService;

    invoke-direct {v1, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    .local v1, clearNotiIntent:Landroid/content/Intent;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "com.sec.android.app.FileShareClient.clearNotification"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string v9, "outboundId"

    iget v10, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    iget-object v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v1, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 400
    .local v5, deleteIntent:Landroid/app/PendingIntent;
    const v9, 0x1080089

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 402
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 403
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 404
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 405
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 406
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 407
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    .line 408
    .local v7, notification:Landroid/app/Notification;
    const-string v9, "FileShareClient"

    iget v10, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    mul-int/lit8 v10, v10, 0x2

    invoke-virtual {v6, v9, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 409
    const-string v9, "FileShareClient"

    iget v10, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6, v9, v10, v7}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 410
    return-void

    .line 381
    .end local v0           #builder:Landroid/app/Notification$Builder;
    .end local v1           #clearNotiIntent:Landroid/content/Intent;
    .end local v2           #contentIntent:Landroid/app/PendingIntent;
    .end local v5           #deleteIntent:Landroid/app/PendingIntent;
    .end local v6           #notiMgr:Landroid/app/NotificationManager;
    .end local v7           #notification:Landroid/app/Notification;
    .end local v8           #notificationIntent:Landroid/content/Intent;
    :cond_1
    iget-object v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const v10, 0x7f050020

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private addOngoing(Z)V
    .locals 14
    .parameter "bWait"

    .prologue
    .line 314
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 315
    .local v5, notiMgr:Landroid/app/NotificationManager;
    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const-class v9, Lcom/sec/android/app/FileShareClient/OutboundActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    .local v7, notificationIntent:Landroid/content/Intent;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com.sec.android.app.FileShareClient.SEND_PROGRESS"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v8, "outboundId"

    iget v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    const/high16 v8, 0x1080

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 319
    const-string v8, "[FileShare][Client]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Outbound : addOngoing id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v10, 0x800

    invoke-static {v8, v9, v7, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 322
    .local v1, contentIntent:Landroid/app/PendingIntent;
    if-eqz p1, :cond_2

    .line 323
    const-string v2, ""

    .line 324
    .local v2, contentText:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbShowWait:Z

    if-eqz v8, :cond_1

    .line 325
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const v10, 0x7f050011

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 326
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const v9, 0x7f050017

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 335
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, builder:Landroid/app/Notification$Builder;
    const v8, 0x1080089

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 338
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const v9, 0x7f050011

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 341
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 342
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 343
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 344
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 345
    .local v6, notification:Landroid/app/Notification;
    const-string v8, "FileShareClient"

    iget v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    mul-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v8, v9, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 371
    .end local v0           #builder:Landroid/app/Notification$Builder;
    :goto_1
    return-void

    .line 328
    .end local v6           #notification:Landroid/app/Notification;
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileArrayList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 329
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileArrayList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 330
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const v10, 0x7f050006

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileArrayList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 348
    .end local v2           #contentText:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const v10, 0x7f050015

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 350
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    .line 351
    .restart local v6       #notification:Landroid/app/Notification;
    const v8, 0x1080088

    iput v8, v6, Landroid/app/Notification;->icon:I

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Landroid/app/Notification;->when:J

    .line 353
    iget v8, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroid/app/Notification;->flags:I

    .line 355
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x7f04

    invoke-direct {v3, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 356
    .local v3, contentView:Landroid/widget/RemoteViews;
    iget-object v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const v10, 0x7f050010

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/FileShareClient/Receiver;

    invoke-virtual {v8}, Lcom/sec/android/app/FileShareClient/Receiver;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, deviceName:Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileArrayList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 359
    .restart local v2       #contentText:Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileArrayList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 360
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const v10, 0x7f050006

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileArrayList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 363
    :cond_3
    const v8, 0x7f070005

    invoke-virtual {v3, v8, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 364
    const v8, 0x7f070003

    invoke-virtual {v3, v8, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 365
    const v8, 0x7f070001

    const v9, 0x1080089

    invoke-virtual {v3, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 366
    iput-object v3, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 367
    iput-object v1, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 368
    const-string v8, "FileShareClient"

    iget v9, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    mul-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v8, v9, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_1
.end method

.method private changedPeer(Ljava/lang/String;)V
    .locals 4
    .parameter "devAddr"

    .prologue
    .line 579
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 580
    const-string v2, "[FileShare][Client]"

    const-string v3, "Outbound : changedPeer: mReceiverList is null."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileShareClient/Receiver;

    .line 584
    .local v1, recv:Lcom/sec/android/app/FileShareClient/Receiver;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/FileShareClient/Receiver;->isMyMacAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileShareClient/Outbound;->requestPeers(Ljava/lang/String;)V

    goto :goto_0

    .line 590
    .end local v1           #recv:Lcom/sec/android/app/FileShareClient/Receiver;
    :cond_2
    const-string v2, "[FileShare][Client]"

    const-string v3, "Outbound : changedPeer: there is no item to listen"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private destroyServiceProvider()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mServiceProvider:Lcom/sec/android/allshare/ServiceProvider;

    invoke-static {v0}, Lcom/sec/android/allshare/ServiceConnector;->deleteServiceProvider(Lcom/sec/android/allshare/ServiceProvider;)V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mServiceProvider:Lcom/sec/android/allshare/ServiceProvider;

    .line 306
    const-string v0, "[FileShare][Client]"

    const-string v1, "Outbound : destroyServiceProvider"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method private findReceiverWithUPnpDev(Lcom/sec/android/allshare/Device;)Lcom/sec/android/app/FileShareClient/Receiver;
    .locals 7
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 558
    invoke-virtual {p1}, Lcom/sec/android/allshare/Device;->getIPAdress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/allshare/extension/DeviceChecker;->getMacAddrFromArpTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, macAddr:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 560
    const-string v4, "[FileShare][Client]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Outbound : findReceiverWithUPnpDev: [NOT FOUND TABLE]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/allshare/Device;->getIPAdress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 575
    :goto_0
    return-object v2

    .line 563
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 564
    const-string v4, "[FileShare][Client]"

    const-string v5, "Outbound : findReceiverWithUPnpDev: mReceiverList is null."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 565
    goto :goto_0

    .line 567
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/FileShareClient/Receiver;

    .line 568
    .local v2, recv:Lcom/sec/android/app/FileShareClient/Receiver;
    const/16 v4, 0x3ea

    invoke-virtual {v2}, Lcom/sec/android/app/FileShareClient/Receiver;->getStatus()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/FileShareClient/Receiver;->isMyMacAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 569
    const-string v3, "[FileShare][Client]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Outbound : findReceiverWithUPnpDev: [FOUND]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/android/app/FileShareClient/Receiver;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 574
    .end local v2           #recv:Lcom/sec/android/app/FileShareClient/Receiver;
    :cond_3
    const-string v4, "[FileShare][Client]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Outbound : findReceiverWithUPnpDev: [NOT HAVE] ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/allshare/Device;->getIPAdress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 575
    goto/16 :goto_0
.end method

.method private isConnectedDevice()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 799
    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 800
    const-string v3, "[FileShare][Client]"

    const-string v4, "Outbound : isConnectedDevice : mReceiverList is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_0
    :goto_0
    return v2

    .line 804
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileShareClient/Receiver;

    .line 805
    .local v1, recv:Lcom/sec/android/app/FileShareClient/Receiver;
    const/16 v3, 0x3ea

    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/Receiver;->getStatus()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 806
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isP2pConnection()Z
    .locals 4

    .prologue
    .line 522
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 523
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 525
    .local v1, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    const-string v2, "[FileShare][Client]"

    const-string v3, "Outbound : isP2pConnection"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v2, 0x1

    .line 530
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private refreshAndFindDev()V
    .locals 7

    .prologue
    .line 749
    iget-object v4, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mServiceProvider:Lcom/sec/android/allshare/ServiceProvider;

    if-nez v4, :cond_0

    .line 750
    const-string v4, "[FileShare][Client]"

    const-string v5, "Outbound : refreshAndFindDev : mServiceProvider is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :goto_0
    return-void

    .line 754
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mServiceProvider:Lcom/sec/android/allshare/ServiceProvider;

    invoke-virtual {v4}, Lcom/sec/android/allshare/ServiceProvider;->getDeviceFinder()Lcom/sec/android/allshare/DeviceFinder;

    move-result-object v0

    .line 755
    .local v0, deviceFinder:Lcom/sec/android/allshare/DeviceFinder;
    if-nez v0, :cond_1

    .line 756
    const-string v4, "[FileShare][Client]"

    const-string v5, "Outbound : refreshAndFindDev : deviceFinder is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    :cond_1
    const-string v4, "[FileShare][Client]"

    const-string v5, "Outbound : refreshAndFindDev"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    sget-object v4, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_FILERECEIVER:Lcom/sec/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v4, p0}, Lcom/sec/android/allshare/DeviceFinder;->setDeviceFinderEventListener(Lcom/sec/android/allshare/Device$DeviceType;Lcom/sec/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 762
    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceFinder;->refresh()V

    .line 764
    sget-object v4, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_FILERECEIVER:Lcom/sec/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v4}, Lcom/sec/android/allshare/DeviceFinder;->getDevices(Lcom/sec/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v1

    .line 765
    .local v1, deviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Device;>;"
    if-nez v1, :cond_2

    .line 766
    const-string v4, "[FileShare][Client]"

    const-string v5, "Outbound : refreshAndFindDev: Searched device size [0]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 770
    :cond_2
    const-string v4, "[FileShare][Client]"

    const-string v5, "+---------------------------------------------------------------------+"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const-string v4, "[FileShare][Client]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Outbound : Searched device size ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 773
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/allshare/Device;

    invoke-direct {p0, v4}, Lcom/sec/android/app/FileShareClient/Outbound;->findReceiverWithUPnpDev(Lcom/sec/android/allshare/Device;)Lcom/sec/android/app/FileShareClient/Receiver;

    move-result-object v3

    .line 774
    .local v3, receiver:Lcom/sec/android/app/FileShareClient/Receiver;
    if-eqz v3, :cond_3

    .line 775
    const/16 v4, 0x3eb

    invoke-virtual {v3, v4}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    .line 776
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/allshare/media/FileReceiver;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/FileShareClient/Receiver;->setUPnPDevice(Lcom/sec/android/allshare/media/FileReceiver;)V

    .line 777
    invoke-virtual {v3}, Lcom/sec/android/app/FileShareClient/Receiver;->startReceiveByCondition()V

    .line 772
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 780
    .end local v3           #receiver:Lcom/sec/android/app/FileShareClient/Receiver;
    :cond_4
    const-string v4, "[FileShare][Client]"

    const-string v5, "+---------------------------------------------------------------------+"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private regBroadcastReceiver()V
    .locals 6

    .prologue
    .line 417
    iget-boolean v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbRegBroadcastReceiver:Z

    if-eqz v2, :cond_0

    .line 438
    :goto_0
    return-void

    .line 423
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 424
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 427
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 428
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbRegBroadcastReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[FileShare][Client]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Outbound : regBroadcastReceiver Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestPeers(Ljava/lang/String;)V
    .locals 4
    .parameter "devAddr"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mListenDevList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outbound : requestPeers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/sec/android/app/FileShareClient/Outbound$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/FileShareClient/Outbound$4;-><init>(Lcom/sec/android/app/FileShareClient/Outbound;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 647
    return-void
.end method

.method private requestServiceProvider()V
    .locals 3

    .prologue
    .line 269
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outbound : requestServiceProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbReqSvcProvider:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mServiceProvider:Lcom/sec/android/allshare/ServiceProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mServiceProvider:Lcom/sec/android/allshare/ServiceProvider;

    if-eqz v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbReqSvcProvider:Z

    if-nez v0, :cond_0

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbReqSvcProvider:Z

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/android/app/FileShareClient/Outbound$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/FileShareClient/Outbound$2;-><init>(Lcom/sec/android/app/FileShareClient/Outbound;)V

    invoke-static {v0, v1}, Lcom/sec/android/allshare/ServiceConnector;->createServiceProvider(Landroid/content/Context;Lcom/sec/android/allshare/ServiceConnector$IServiceConnectEventListener;)V

    goto :goto_0
.end method

.method private sendFindTimeout(I)V
    .locals 4
    .parameter "nId"

    .prologue
    .line 792
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 793
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 794
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 795
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mTimerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 796
    return-void
.end method

.method private sendRefreshTimeout()V
    .locals 4

    .prologue
    .line 784
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 785
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    .line 786
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mTimerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 787
    return-void
.end method

.method private setConnectionStatus(ZLjava/lang/String;)V
    .locals 5
    .parameter "isConnected"
    .parameter "macAddr"

    .prologue
    const/16 v4, 0x3ef

    .line 534
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 535
    const-string v2, "[FileShare][Client]"

    const-string v3, "Outbound : setConnectionStatus : mReceiverList is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileShareClient/Receiver;

    .line 539
    .local v1, recv:Lcom/sec/android/app/FileShareClient/Receiver;
    invoke-virtual {v1, p2}, Lcom/sec/android/app/FileShareClient/Receiver;->isMyMacAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 540
    if-eqz p1, :cond_3

    .line 541
    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    .line 542
    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/Receiver;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/FileShareClient/Outbound;->sendFindTimeout(I)V

    .line 543
    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/Receiver;->updateStatus()V

    goto :goto_0

    .line 545
    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/Receiver;->getStatus()I

    move-result v2

    const/16 v3, 0x3ed

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/Receiver;->getStatus()I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/Receiver;->getStatus()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 548
    invoke-virtual {v1, v4}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    .line 549
    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/Receiver;->updateStatus()V

    goto :goto_0
.end method

.method private unregBroadcastReceiver()V
    .locals 4

    .prologue
    .line 442
    iget-boolean v1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbRegBroadcastReceiver:Z

    if-nez v1, :cond_0

    .line 451
    :goto_0
    return-void

    .line 446
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 447
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbRegBroadcastReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FileShare][Client]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Outbound : unregBroadcastReceiver Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelAll()V
    .locals 4

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/Outbound;->unregBroadcastReceiver()V

    .line 229
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 231
    const-string v2, "[FileShare][Client]"

    const-string v3, "Outbound : cancelAll(): mReceiverList is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    return-void

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileShareClient/Receiver;

    .line 236
    .local v1, receiver:Lcom/sec/android/app/FileShareClient/Receiver;
    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/Receiver;->getStatus()I

    move-result v2

    const/16 v3, 0x3e9

    if-lt v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/Receiver;->getStatus()I

    move-result v2

    const/16 v3, 0x3ec

    if-gt v2, v3, :cond_2

    .line 238
    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/Receiver;->cancel()V

    goto :goto_0
.end method

.method public destroyOutbound()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 201
    const-string v2, "[FileShare][Client]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Outbound : destroyOutbound: ID["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileShareClient/Receiver;

    .line 204
    .local v1, recv:Lcom/sec/android/app/FileShareClient/Receiver;
    invoke-virtual {v1, v5}, Lcom/sec/android/app/FileShareClient/Receiver;->setListener(Lcom/sec/android/app/FileShareClient/Receiver$IReceiverListener;)V

    .line 205
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    .line 206
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/FileShareClient/Receiver;->setErrorCause(I)V

    goto :goto_0

    .line 208
    .end local v1           #recv:Lcom/sec/android/app/FileShareClient/Receiver;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 209
    iput-object v5, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    .line 210
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mServiceProvider:Lcom/sec/android/allshare/ServiceProvider;

    if-eqz v2, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/Outbound;->destroyServiceProvider()V

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/Outbound;->unregBroadcastReceiver()V

    .line 214
    return-void
.end method

.method public getCurrentStateString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 248
    const-string v1, ""

    .line 249
    .local v1, currentState:Ljava/lang/String;
    const/4 v0, 0x0

    .line 251
    .local v0, currentCount:I
    iget-object v4, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/FileShareClient/Receiver;

    .line 252
    .local v3, r:Lcom/sec/android/app/FileShareClient/Receiver;
    invoke-virtual {v3}, Lcom/sec/android/app/FileShareClient/Receiver;->getCurrentCount()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 254
    .end local v3           #r:Lcom/sec/android/app/FileShareClient/Receiver;
    :cond_0
    if-nez v0, :cond_1

    .line 255
    iget-object v4, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const v5, 0x7f05001c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    :goto_1
    return-object v1

    .line 256
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/2addr v4, v5

    if-ne v0, v4, :cond_2

    .line 257
    iget-object v4, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const v5, 0x7f050019

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 259
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    const v5, 0x7f05001b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getFileArrayList()Ljava/util/ArrayList;
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
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    return v0
.end method

.method public getReceiverList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileShareClient/Receiver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReqFinish()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbReqFinish:Z

    return v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mTotalSize:J

    return-wide v0
.end method

.method public getUseStatus()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mUseStatus:I

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbComplete:Z

    return v0
.end method

.method public isId(I)Z
    .locals 1
    .parameter "nId"

    .prologue
    .line 126
    iget v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mId:I

    if-ne v0, p1, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/sec/android/allshare/Device$DeviceType;Lcom/sec/android/allshare/Device;Lcom/sec/android/allshare/ERROR;)V
    .locals 4
    .parameter "deviceType"
    .parameter "device"
    .parameter "err"

    .prologue
    .line 818
    sget-object v1, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_FILERECEIVER:Lcom/sec/android/allshare/Device$DeviceType;

    if-eq v1, p1, :cond_0

    .line 819
    const-string v1, "[FileShare][Client]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Outbound : (ASF)onDeviceAdded: invalid devicetype >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    .end local p2
    :goto_0
    return-void

    .line 823
    .restart local p2
    :cond_0
    const-string v1, "[FileShare][Client]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Outbound : (ASF)onDeviceAdded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    sget-object v1, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    if-eq p3, v1, :cond_1

    .line 827
    const-string v1, "[FileShare][Client]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Outbound : (ASF)onDeviceAdded: ERROR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/allshare/Device;->getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;

    move-result-object v1

    sget-object v2, Lcom/sec/android/allshare/Device$DeviceDomain;->MY_DEVICE:Lcom/sec/android/allshare/Device$DeviceDomain;

    if-ne v1, v2, :cond_2

    .line 830
    const-string v1, "[FileShare][Client]"

    const-string v2, "Outbound : My Device. Ignore."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 834
    :cond_2
    const-string v1, "[FileShare][Client]"

    const-string v2, "+---------------------------------------------------------------------+"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-direct {p0, p2}, Lcom/sec/android/app/FileShareClient/Outbound;->findReceiverWithUPnpDev(Lcom/sec/android/allshare/Device;)Lcom/sec/android/app/FileShareClient/Receiver;

    move-result-object v0

    .line 836
    .local v0, receiver:Lcom/sec/android/app/FileShareClient/Receiver;
    const-string v1, "[FileShare][Client]"

    const-string v2, "+---------------------------------------------------------------------+"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    if-nez v0, :cond_3

    .line 839
    const-string v1, "[FileShare][Client]"

    const-string v2, "Outbound : (ASF)onDeviceAdded : device does not be found!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 842
    :cond_3
    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    .line 843
    check-cast p2, Lcom/sec/android/allshare/media/FileReceiver;

    .end local p2
    invoke-virtual {v0, p2}, Lcom/sec/android/app/FileShareClient/Receiver;->setUPnPDevice(Lcom/sec/android/allshare/media/FileReceiver;)V

    .line 844
    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/Receiver;->startReceiveByCondition()V

    goto :goto_0
.end method

.method public onDeviceRemoved(Lcom/sec/android/allshare/Device$DeviceType;Lcom/sec/android/allshare/Device;Lcom/sec/android/allshare/ERROR;)V
    .locals 5
    .parameter "deviceType"
    .parameter "device"
    .parameter "err"

    .prologue
    .line 852
    const-string v2, "[FileShare][Client]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Outbound : (ASF)onDeviceRemoved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    sget-object v2, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    if-eq p3, v2, :cond_1

    .line 856
    const-string v2, "[FileShare][Client]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Outbound : (ASF)onDeviceRemoved: ERROR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 859
    const-string v2, "[FileShare][Client]"

    const-string v3, "Outbound : onDeviceRemoved : mReceiverList is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 862
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileShareClient/Receiver;

    .local v1, receiver:Lcom/sec/android/app/FileShareClient/Receiver;
    move-object v2, p2

    .line 863
    check-cast v2, Lcom/sec/android/allshare/media/FileReceiver;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/FileShareClient/Receiver;->removedDevice(Lcom/sec/android/allshare/media/FileReceiver;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public setFileIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 161
    new-instance v1, Lcom/sec/android/app/FileShareClient/FileManager;

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/app/FileShareClient/FileManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileManager:Lcom/sec/android/app/FileShareClient/FileManager;

    .line 162
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mIntent:Landroid/content/Intent;

    .line 163
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/FileShareClient/Outbound$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/FileShareClient/Outbound$1;-><init>(Lcom/sec/android/app/FileShareClient/Outbound;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 170
    .local v0, filelistMaker:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 172
    return-void
.end method

.method public setForegroundInterface(Lcom/sec/android/app/FileShareClient/Outbound$IOutboundForeground;)V
    .locals 0
    .parameter "iFg"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mIfg:Lcom/sec/android/app/FileShareClient/Outbound$IOutboundForeground;

    .line 245
    return-void
.end method

.method public setListener(Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mListener:Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;

    .line 224
    return-void
.end method

.method public setP2pDeviceInfoList(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 175
    .local p1, p2pDevices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbCompleteReceiverList:[Z

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, deviceName:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_p2p_device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    if-nez v0, :cond_0

    .line 180
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 183
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 184
    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/FileShareClient/Receiver;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;

    invoke-direct {v4, v1, v2, v0}, Lcom/sec/android/app/FileShareClient/Receiver;-><init>(ILcom/sec/android/app/FileShareClient/P2pDeviceInfo;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/FileShareClient/Receiver;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/FileShareClient/Receiver;->setListener(Lcom/sec/android/app/FileShareClient/Receiver$IReceiverListener;)V

    .line 186
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/FileShareClient/Receiver;

    invoke-virtual {v2}, Lcom/sec/android/app/FileShareClient/Receiver;->getStatus()I

    move-result v2

    const/16 v3, 0x3ea

    if-ne v2, v3, :cond_1

    .line 187
    invoke-direct {p0, v1}, Lcom/sec/android/app/FileShareClient/Outbound;->sendFindTimeout(I)V

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbCompleteReceiverList:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_2
    const-string v2, "[FileShare][Client]"

    const-string v3, "Outbound : setP2pDeviceInfoList"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/Outbound;->refreshAndFindDev()V

    .line 194
    return-void
.end method

.method public setReqFinish(Z)V
    .locals 0
    .parameter "reqFinish"

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbReqFinish:Z

    .line 154
    return-void
.end method

.method public setUseStatus(I)V
    .locals 0
    .parameter "useStatus"

    .prologue
    .line 145
    iput p1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mUseStatus:I

    .line 146
    return-void
.end method

.method public updateStatus(III)V
    .locals 4
    .parameter "nIndex"
    .parameter "nStatus"
    .parameter "nErrorCause"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 876
    const/16 v0, 0x3ec

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbAddedOngoing:Z

    if-nez v0, :cond_0

    .line 877
    invoke-direct {p0, v3}, Lcom/sec/android/app/FileShareClient/Outbound;->addOngoing(Z)V

    .line 878
    iput-boolean v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbAddedOngoing:Z

    .line 881
    :cond_0
    const/16 v0, 0x3ee

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const/16 v0, 0x3ed

    if-eq p2, v0, :cond_1

    const/16 v0, 0x3ef

    if-ne p2, v0, :cond_2

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbCompleteReceiverList:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_2

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbCompleteReceiverList:[Z

    aput-boolean v2, v0, p1

    .line 887
    iget v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mCntCompleteReceiver:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mCntCompleteReceiver:I

    .line 891
    :cond_2
    iget v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mCntCompleteReceiver:I

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 893
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/Outbound;->addNotification()V

    .line 894
    iput-boolean v2, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbComplete:Z

    .line 895
    iput-boolean v3, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbAddedOngoing:Z

    .line 896
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/Outbound;->destroyServiceProvider()V

    .line 897
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mIfg:Lcom/sec/android/app/FileShareClient/Outbound$IOutboundForeground;

    invoke-interface {v0}, Lcom/sec/android/app/FileShareClient/Outbound$IOutboundForeground;->releaseWakeLock()V

    .line 898
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/Outbound;->unregBroadcastReceiver()V

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileManager:Lcom/sec/android/app/FileShareClient/FileManager;

    if-eqz v0, :cond_3

    .line 900
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mFileManager:Lcom/sec/android/app/FileShareClient/FileManager;

    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/FileManager;->destroy()V

    .line 903
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mListener:Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;

    if-nez v0, :cond_4

    .line 904
    const-string v0, "[FileShare][Client]"

    const-string v1, "Outbound : listener is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :goto_0
    return-void

    .line 908
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mbComplete:Z

    if-eqz v0, :cond_5

    .line 909
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mListener:Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;

    invoke-interface {v0}, Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;->updateReciver()V

    .line 910
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mListener:Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;

    invoke-interface {v0}, Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;->completed()V

    goto :goto_0

    .line 912
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound;->mListener:Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;

    invoke-interface {v0}, Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;->updateReciver()V

    goto :goto_0
.end method
