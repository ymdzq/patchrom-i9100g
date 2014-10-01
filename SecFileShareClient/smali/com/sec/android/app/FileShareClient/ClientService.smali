.class public Lcom/sec/android/app/FileShareClient/ClientService;
.super Landroid/app/Service;
.source "ClientService.java"

# interfaces
.implements Lcom/sec/android/app/FileShareClient/Outbound$IOutboundForeground;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/FileShareClient/ClientService$ClinetServiceBinder;
    }
.end annotation


# static fields
.field private static ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[FileShare][Client]"

.field private static final TAGClass:Ljava/lang/String; = "ClientService : "

.field private static mForegroundId:I

.field private static mListOutbound:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileShareClient/Outbound;",
            ">;"
        }
    .end annotation
.end field

.field public static mNotiCnt:I


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mIdxOfOutbond:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mbForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    .line 22
    sput v1, Lcom/sec/android/app/FileShareClient/ClientService;->ID:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/FileShareClient/ClientService;->mListOutbound:Ljava/util/ArrayList;

    .line 26
    sput v1, Lcom/sec/android/app/FileShareClient/ClientService;->mForegroundId:I

    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/FileShareClient/ClientService;->mNotiCnt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    iput v0, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mIdxOfOutbond:I

    .line 30
    iput-boolean v0, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mbForeground:Z

    .line 264
    new-instance v0, Lcom/sec/android/app/FileShareClient/ClientService$ClinetServiceBinder;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileShareClient/ClientService$ClinetServiceBinder;-><init>(Lcom/sec/android/app/FileShareClient/ClientService;)V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private getOutboundId()I
    .locals 3

    .prologue
    .line 267
    sget v0, Lcom/sec/android/app/FileShareClient/ClientService;->ID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/android/app/FileShareClient/ClientService;->ID:I

    iput v0, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mIdxOfOutbond:I

    .line 269
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientService : ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mIdxOfOutbond:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v0, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mIdxOfOutbond:I

    return v0
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 6

    .prologue
    .line 276
    const/4 v2, 0x0

    .line 278
    .local v2, isCompCnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/sec/android/app/FileShareClient/ClientService;->mListOutbound:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 280
    sget-object v3, Lcom/sec/android/app/FileShareClient/ClientService;->mListOutbound:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v3}, Lcom/sec/android/app/FileShareClient/Outbound;->isComplete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 282
    add-int/lit8 v2, v2, 0x1

    .line 284
    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 286
    const-string v3, "[FileShare][Client]"

    const-string v4, "ClientService : AcquireWakeLock already Run!"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    :goto_1
    return-void

    .line 278
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_2
    :try_start_0
    const-string v3, "[FileShare][Client]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClientService : acquire Wake lock. CompCnt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_0

    .line 297
    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 299
    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 301
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 304
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "[FileShare][Client]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClientService : Exception on acquireWakeLock"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public createOutbound(Landroid/content/Intent;Ljava/util/ArrayList;)Lcom/sec/android/app/FileShareClient/Outbound;
    .locals 5
    .parameter "fileIntent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;",
            ">;)",
            "Lcom/sec/android/app/FileShareClient/Outbound;"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, p2pDeviceInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;>;"
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/ClientService;->getOutboundId()I

    move-result v0

    .line 115
    .local v0, id:I
    new-instance v1, Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/ClientService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/FileShareClient/Outbound;-><init>(Landroid/content/Context;I)V

    .line 116
    .local v1, outbound:Lcom/sec/android/app/FileShareClient/Outbound;
    invoke-virtual {v1, p0}, Lcom/sec/android/app/FileShareClient/Outbound;->setForegroundInterface(Lcom/sec/android/app/FileShareClient/Outbound$IOutboundForeground;)V

    .line 117
    invoke-virtual {v1, p1}, Lcom/sec/android/app/FileShareClient/Outbound;->setFileIntent(Landroid/content/Intent;)V

    .line 118
    invoke-virtual {v1, p2}, Lcom/sec/android/app/FileShareClient/Outbound;->setP2pDeviceInfoList(Ljava/util/ArrayList;)V

    .line 119
    sget-object v2, Lcom/sec/android/app/FileShareClient/ClientService;->mListOutbound:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v2, "[FileShare][Client]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientService : createOutbound >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-object v1
.end method

.method public destroyOutbound(I)V
    .locals 5
    .parameter "nId"

    .prologue
    .line 127
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/sec/android/app/FileShareClient/ClientService;->mListOutbound:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 128
    sget-object v2, Lcom/sec/android/app/FileShareClient/ClientService;->mListOutbound:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileShareClient/Outbound;

    .line 129
    .local v1, outbound:Lcom/sec/android/app/FileShareClient/Outbound;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/FileShareClient/Outbound;->isId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/Outbound;->destroyOutbound()V

    .line 131
    sget-object v2, Lcom/sec/android/app/FileShareClient/ClientService;->mListOutbound:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    const-string v2, "[FileShare][Client]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientService : destroyOutbound >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v1           #outbound:Lcom/sec/android/app/FileShareClient/Outbound;
    :cond_1
    sget-object v2, Lcom/sec/android/app/FileShareClient/ClientService;->mListOutbound:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    sget v2, Lcom/sec/android/app/FileShareClient/ClientService;->mNotiCnt:I

    if-gtz v2, :cond_3

    .line 136
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/ClientService;->stopOutboundForeground()V

    .line 138
    :cond_3
    return-void
.end method

.method public getNotiCnt()I
    .locals 1

    .prologue
    .line 153
    sget v0, Lcom/sec/android/app/FileShareClient/ClientService;->mNotiCnt:I

    return v0
.end method

.method public getOutbound(I)Lcom/sec/android/app/FileShareClient/Outbound;
    .locals 5
    .parameter "nId"

    .prologue
    .line 141
    sget-object v2, Lcom/sec/android/app/FileShareClient/ClientService;->mListOutbound:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileShareClient/Outbound;

    .line 142
    .local v1, outbound:Lcom/sec/android/app/FileShareClient/Outbound;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/FileShareClient/Outbound;->isId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const-string v2, "[FileShare][Client]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientService : getOutbound >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v1, p0}, Lcom/sec/android/app/FileShareClient/Outbound;->setForegroundInterface(Lcom/sec/android/app/FileShareClient/Outbound$IOutboundForeground;)V

    .line 149
    .end local v1           #outbound:Lcom/sec/android/app/FileShareClient/Outbound;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 81
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientService : onBind >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 40
    const-string v0, "[FileShare][Client]"

    const-string v1, "ClientService : onCreate!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 103
    const-string v0, "[FileShare][Client]"

    const-string v1, "ClientService : onDestroy : "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 88
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientService : onRebind >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/FileShareClient/ClientService;->mListOutbound:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v7, 0x1

    .line 46
    if-eqz p1, :cond_5

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, action:Ljava/lang/String;
    const-string v4, "[FileShare][Client]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClientService : onStartCommand : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v4, "outboundId"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 51
    .local v3, outboundId:I
    const-string v4, "com.sec.android.app.FileShareClient.clearNotification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 52
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/sec/android/app/FileShareClient/ClientService;->mListOutbound:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 53
    sget-object v4, Lcom/sec/android/app/FileShareClient/ClientService;->mListOutbound:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/FileShareClient/Outbound;

    .line 54
    .local v2, outbound:Lcom/sec/android/app/FileShareClient/Outbound;
    invoke-virtual {v2, v3}, Lcom/sec/android/app/FileShareClient/Outbound;->isId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {v2}, Lcom/sec/android/app/FileShareClient/Outbound;->getUseStatus()I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 56
    invoke-virtual {v2}, Lcom/sec/android/app/FileShareClient/Outbound;->destroyOutbound()V

    .line 57
    sget-object v4, Lcom/sec/android/app/FileShareClient/ClientService;->mListOutbound:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    const-string v4, "[FileShare][Client]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClientService : onStartCommand : destory Outbound ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/FileShareClient/Outbound;->setUseStatus(I)V

    .line 62
    const-string v4, "[FileShare][Client]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClientService : onStartCommand : Need to remouve Outbound ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 66
    .end local v2           #outbound:Lcom/sec/android/app/FileShareClient/Outbound;
    :cond_2
    sget v4, Lcom/sec/android/app/FileShareClient/ClientService;->mNotiCnt:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/sec/android/app/FileShareClient/ClientService;->mNotiCnt:I

    .line 67
    const-string v4, "[FileShare][Client]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@@@@ ClientService : onStartCommand : mNotiCnt ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sec/android/app/FileShareClient/ClientService;->mNotiCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v4, Lcom/sec/android/app/FileShareClient/ClientService;->mListOutbound:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    sget v4, Lcom/sec/android/app/FileShareClient/ClientService;->mNotiCnt:I

    if-gtz v4, :cond_4

    .line 69
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/ClientService;->stopOutboundForeground()V

    .line 75
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #outboundId:I
    :cond_4
    :goto_2
    return v7

    .line 73
    :cond_5
    const-string v4, "[FileShare][Client]"

    const-string v5, "ClientService : onStartCommand"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 95
    const-string v0, "[FileShare][Client]"

    const-string v1, "ClientService : onUnbind : "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public releaseWakeLock()V
    .locals 5

    .prologue
    .line 314
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/sec/android/app/FileShareClient/ClientService;->mListOutbound:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 316
    sget-object v2, Lcom/sec/android/app/FileShareClient/ClientService;->mListOutbound:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v2}, Lcom/sec/android/app/FileShareClient/Outbound;->isComplete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 318
    const-string v3, "[FileShare][Client]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientService : ReleaseWakeLock :: There is ongoing Outbound.["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/sec/android/app/FileShareClient/ClientService;->mListOutbound:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-virtual {v2}, Lcom/sec/android/app/FileShareClient/Outbound;->isComplete()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    :goto_1
    return-void

    .line 314
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_2
    :try_start_0
    const-string v2, "[FileShare][Client]"

    const-string v3, "ClientService : release Wake lock"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 331
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[FileShare][Client]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientService : Exception on releaseWakeLock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setNotiCnt(I)V
    .locals 0
    .parameter "notiCnt"

    .prologue
    .line 157
    sput p1, Lcom/sec/android/app/FileShareClient/ClientService;->mNotiCnt:I

    .line 158
    return-void
.end method

.method public startOutboundForeground()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 167
    iget-boolean v1, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mbForeground:Z

    if-ne v1, v4, :cond_0

    .line 216
    :goto_0
    return-void

    .line 173
    :cond_0
    :try_start_0
    iput-object p0, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mContext:Landroid/content/Context;

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mPowerManager:Landroid/os/PowerManager;

    if-nez v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mPowerManager:Landroid/os/PowerManager;

    .line 178
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "ClientService Wake Lock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_1
    :goto_1
    const-string v1, "[FileShare][Client]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@@ClientService : startOutboundForeground(): start foreground, mNotiCnt["

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

    .line 187
    sget v1, Lcom/sec/android/app/FileShareClient/ClientService;->mForegroundId:I

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/FileShareClient/ClientService;->startForeground(ILandroid/app/Notification;)V

    .line 188
    iput-boolean v4, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mbForeground:Z

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FileShare][Client]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientService : Exception on startOutboundForeground "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopOutboundForeground()V
    .locals 3

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mbForeground:Z

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 225
    :cond_0
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@@ClientService : stopOutboundForeground(): stop foreground, mNotiCnt["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/FileShareClient/ClientService;->mNotiCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileShareClient/ClientService;->stopForeground(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/ClientService;->releaseWakeLock()V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/FileShareClient/ClientService;->mbForeground:Z

    goto :goto_0
.end method
