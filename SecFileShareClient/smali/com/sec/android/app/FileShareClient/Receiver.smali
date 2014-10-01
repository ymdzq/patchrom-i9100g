.class public Lcom/sec/android/app/FileShareClient/Receiver;
.super Ljava/lang/Object;
.source "Receiver.java"

# interfaces
.implements Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;
.implements Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/FileShareClient/Receiver$IReceiverListener;
    }
.end annotation


# static fields
.field public static final ERROR_CONNECT_FAIL:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_SVC_NOT_FOUND:I = 0x3

.field public static final ERROR_UNKNOWN:I = 0x1

.field public static final STATUS_CANCELLED:I = 0x3ed

.field public static final STATUS_COMPLETED:I = 0x3ee

.field public static final STATUS_CONNECTED:I = 0x3ea

.field public static final STATUS_CONNECTING:I = 0x3e9

.field public static final STATUS_ERROR:I = -0x1

.field public static final STATUS_FAILED:I = 0x3ef

.field public static final STATUS_PROGRESS:I = 0x3ec

.field public static final STATUS_SEARCHED:I = 0x3eb

.field private static final TAG:Ljava/lang/String; = "[FileShare][Client]"

.field private static final TAGClass:Ljava/lang/String; = "Receiver : "


# instance fields
.field private mCurrentCount:I

.field private mCurrentSize:J

.field private mErrorCause:I

.field private mFilelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private mListener:Lcom/sec/android/app/FileShareClient/Receiver$IReceiverListener;

.field private mMyName:Ljava/lang/String;

.field private mP2pDevice:Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;

.field private mSessionID:Ljava/lang/String;

.field private mStatus:I

.field private mTotalCount:I

.field private mTotalSize:J

.field private mUPnPDevice:Lcom/sec/android/allshare/media/FileReceiver;


# direct methods
.method constructor <init>(ILcom/sec/android/app/FileShareClient/P2pDeviceInfo;Ljava/lang/String;)V
    .locals 5
    .parameter "nId"
    .parameter "devInfo"
    .parameter "deviceName"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mId:I

    .line 34
    iput v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mStatus:I

    .line 35
    iput v1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mErrorCause:I

    .line 37
    iput v1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mTotalCount:I

    .line 38
    iput v1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mCurrentCount:I

    .line 39
    iput-wide v3, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mTotalSize:J

    .line 40
    iput-wide v3, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mCurrentSize:J

    .line 41
    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mSessionID:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mP2pDevice:Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;

    .line 44
    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mUPnPDevice:Lcom/sec/android/allshare/media/FileReceiver;

    .line 45
    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mFilelist:Ljava/util/ArrayList;

    .line 46
    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mListener:Lcom/sec/android/app/FileShareClient/Receiver$IReceiverListener;

    .line 47
    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mMyName:Ljava/lang/String;

    .line 60
    iput p1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mId:I

    .line 61
    iput-object p2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mP2pDevice:Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;

    .line 62
    iput-object p3, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mMyName:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mP2pDevice:Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->getConnectStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    const/16 v3, 0x3ed

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mUPnPDevice:Lcom/sec/android/allshare/media/FileReceiver;

    if-eqz v0, :cond_1

    .line 196
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : cancel : UPnP Device["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mUPnPDevice:Lcom/sec/android/allshare/media/FileReceiver;

    invoke-virtual {v2}, Lcom/sec/android/allshare/media/FileReceiver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mSession ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mSessionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0, v3}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mSessionID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mUPnPDevice:Lcom/sec/android/allshare/media/FileReceiver;

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/media/FileReceiver;->cancel(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->updateStatus()V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mP2pDevice:Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : cancel : P2P Device["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mP2pDevice:Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0, v3}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->updateStatus()V

    goto :goto_0
.end method

.method public getCurrentCount()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mCurrentCount:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mP2pDevice:Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;

    if-nez v0, :cond_0

    .line 126
    const-string v0, "Unknown"

    .line 128
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mP2pDevice:Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceTypeIcon()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mP2pDevice:Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->getTypeIcon()I

    move-result v0

    return v0
.end method

.method public getErrorCause()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mErrorCause:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mId:I

    return v0
.end method

.method public getProgress()I
    .locals 5

    .prologue
    .line 155
    iget-wide v1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mCurrentSize:J

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mTotalSize:J

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 157
    .local v0, nPercent:I
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 158
    const/16 v0, 0x64

    .line 159
    const-string v1, "[FileShare][Client]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver : getProgress : exceed ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mCurrentSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mTotalSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mStatus:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mTotalCount:I

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mTotalCount:I

    goto :goto_0
.end method

.method public getTranferFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, tranferFile:Ljava/io/File;
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mFilelist:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mFilelist:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->getCurrentCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #tranferFile:Ljava/io/File;
    check-cast v0, Ljava/io/File;

    .line 135
    .restart local v0       #tranferFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUPnPDevice()Lcom/sec/android/allshare/media/FileReceiver;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mUPnPDevice:Lcom/sec/android/allshare/media/FileReceiver;

    return-object v0
.end method

.method public isMyMacAddress(Ljava/lang/String;)Z
    .locals 4
    .parameter "macAddress"

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mP2pDevice:Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;

    if-nez v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    const-string v1, "[FileShare][Client]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver : isMyMacAddress : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], UPNP["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], WiFi["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mP2pDevice:Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mP2pDevice:Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mP2pDevice:Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->getInterfaceMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCancelResponseReceived(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V
    .locals 4
    .parameter "receiver"
    .parameter "sessionID"
    .parameter "err"

    .prologue
    const/16 v3, 0x3ed

    .line 289
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : (ASF)onCancelResponseReceived : sessionID["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], getDeviceName["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    if-eq p3, v0, :cond_0

    .line 292
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : (ASF)onCancelResponseReceived: ERROR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mSessionID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mStatus:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mStatus:I

    const/16 v1, 0x3ef

    if-eq v0, v1, :cond_1

    .line 296
    const-string v0, "[FileShare][Client]"

    const-string v1, "Receiver : (ASF)onCancelResponseReceived : "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0, v3}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    .line 298
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->updateStatus()V

    .line 300
    :cond_1
    return-void
.end method

.method public onCompleted(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Ljava/io/File;Lcom/sec/android/allshare/ERROR;)V
    .locals 3
    .parameter "receiver"
    .parameter "sessionID"
    .parameter "file"
    .parameter "err"

    .prologue
    .line 348
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : (ASF)onCompleted : sessionID["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "File ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    if-eq p4, v0, :cond_0

    .line 352
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : (ASF)onCompleted: ERROR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    iget v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mCurrentCount:I

    .line 355
    iget v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mCurrentCount:I

    iget v1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mTotalCount:I

    if-ne v0, v1, :cond_1

    .line 356
    const-string v0, "[FileShare][Client]"

    const-string v1, "Receiver : (ASF)onCompleted : All file completed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/16 v0, 0x3ee

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    .line 358
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->updateStatus()V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mSessionID:Ljava/lang/String;

    .line 361
    :cond_1
    return-void
.end method

.method public onFailed(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Ljava/io/File;Lcom/sec/android/allshare/ERROR;)V
    .locals 4
    .parameter "receiver"
    .parameter "sessionID"
    .parameter "file"
    .parameter "err"

    .prologue
    const/16 v3, 0x3ef

    .line 330
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : (ASF)onFailed : sessionID["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "File ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], Err ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/sec/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    if-eq p4, v0, :cond_0

    .line 332
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : (ASF)onFailed: ERROR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mSessionID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : (ASF)onFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mStatus:I

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mStatus:I

    if-eq v0, v3, :cond_1

    .line 337
    invoke-virtual {p0, v3}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    .line 338
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->updateStatus()V

    .line 341
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mSessionID:Ljava/lang/String;

    .line 343
    :cond_2
    return-void
.end method

.method public onProgressUpdated(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;JJLjava/io/File;Lcom/sec/android/allshare/ERROR;)V
    .locals 3
    .parameter "receiver"
    .parameter "sessionID"
    .parameter "receivedSize"
    .parameter "totalSize"
    .parameter "file"
    .parameter "err"

    .prologue
    .line 309
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    if-eq p8, v0, :cond_1

    .line 311
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : (ASF)onProgressUpdated: SESSION = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ERROR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/16 v0, 0x3ef

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    .line 313
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->updateStatus()V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mSessionID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mStatus:I

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_0

    .line 321
    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    .line 322
    iput-wide p3, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mCurrentSize:J

    .line 323
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->updateStatus()V

    goto :goto_0
.end method

.method public onReceiveResponseReceived(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V
    .locals 3
    .parameter "receiver"
    .parameter "sessionID"
    .parameter
    .parameter "name"
    .parameter "err"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/allshare/media/FileReceiver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/ERROR;",
            ")V"
        }
    .end annotation

    .prologue
    .line 260
    .local p3, filelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : (ASF)onReceiveResponseReceived = sessionID["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], Sender name["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], getDeviceName["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->getStatus()I

    move-result v0

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_0

    .line 263
    const-string v0, "[FileShare][Client]"

    const-string v1, "Receiver : (ASF)onReceiveResponseReceived: This session is already cancelled by user"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iput-object p2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mSessionID:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mUPnPDevice:Lcom/sec/android/allshare/media/FileReceiver;

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/media/FileReceiver;->cancel(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->updateStatus()V

    .line 283
    :goto_0
    return-void

    .line 270
    :cond_0
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    if-eq p5, v0, :cond_1

    .line 272
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : (ASF)onReceiveResponseReceived: ERROR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/16 v0, 0x3ef

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->updateStatus()V

    goto :goto_0

    .line 278
    :cond_1
    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    .line 279
    iput-object p2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mSessionID:Ljava/lang/String;

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mCurrentCount:I

    .line 281
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mCurrentSize:J

    .line 282
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->updateStatus()V

    goto :goto_0
.end method

.method public removedDevice(Lcom/sec/android/allshare/media/FileReceiver;)Z
    .locals 3
    .parameter "receiver"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mUPnPDevice:Lcom/sec/android/allshare/media/FileReceiver;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/FileReceiver;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/allshare/media/FileReceiver;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 223
    :goto_0
    return v0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->getStatus()I

    move-result v0

    const/16 v1, 0x3ec

    if-ne v0, v1, :cond_1

    .line 217
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : removedDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/allshare/media/FileReceiver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is removed in progressing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/16 v0, 0x3ef

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mUPnPDevice:Lcom/sec/android/allshare/media/FileReceiver;

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/media/FileReceiver;->cancel(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->updateStatus()V

    .line 223
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setErrorCause(I)V
    .locals 0
    .parameter "errorCause"

    .prologue
    .line 231
    iput p1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mErrorCause:I

    .line 232
    return-void
.end method

.method public setFileList(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, filelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mFilelist:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mTotalCount:I

    .line 74
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mTotalSize:J

    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 76
    .local v0, file:Ljava/io/File;
    iget-wide v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mTotalSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mTotalSize:J

    goto :goto_0

    .line 78
    .end local v0           #file:Ljava/io/File;
    :cond_0
    const-string v2, "[FileShare][Client]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receiver : Total count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mTotalCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Total Size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mTotalSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 3
    .parameter "ipAddress"

    .prologue
    .line 97
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : setIpAddress : IP["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mP2pDevice:Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->setIpAddress(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public setListener(Lcom/sec/android/app/FileShareClient/Receiver$IReceiverListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mListener:Lcom/sec/android/app/FileShareClient/Receiver$IReceiverListener;

    .line 228
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 117
    iput p1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mStatus:I

    .line 118
    return-void
.end method

.method public setUPnPDevice(Lcom/sec/android/allshare/media/FileReceiver;)V
    .locals 3
    .parameter "uPnPDevice"

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    const-string v0, "[FileShare][Client]"

    const-string v1, "Receiver : setUPnPDevice : UPnPDevice is null!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mUPnPDevice:Lcom/sec/android/allshare/media/FileReceiver;

    .line 109
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : setUPnPDevice : Name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mUPnPDevice:Lcom/sec/android/allshare/media/FileReceiver;

    invoke-virtual {v2}, Lcom/sec/android/allshare/media/FileReceiver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ID["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mUPnPDevice:Lcom/sec/android/allshare/media/FileReceiver;

    invoke-virtual {v2}, Lcom/sec/android/allshare/media/FileReceiver;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startReceive()V
    .locals 5

    .prologue
    .line 167
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mUPnPDevice:Lcom/sec/android/allshare/media/FileReceiver;

    if-eqz v2, :cond_1

    .line 168
    const-string v2, "[FileShare][Client]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receiver : startReceive : SenderName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mFilelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 170
    .local v0, file:Ljava/io/File;
    const-string v2, "[FileShare][Client]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receiver : startReceive : File["

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

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    .end local v0           #file:Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mUPnPDevice:Lcom/sec/android/allshare/media/FileReceiver;

    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mFilelist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mMyName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, p0, p0}, Lcom/sec/android/allshare/media/FileReceiver;->receive(Ljava/util/ArrayList;Ljava/lang/String;Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;)V

    .line 178
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 175
    :cond_1
    const-string v2, "[FileShare][Client]"

    const-string v3, "Receiver : startReceive : mUPnPDeivce is null!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startReceiveByCondition()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mFilelist:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 182
    const-string v0, "[FileShare][Client]"

    const-string v1, "Receiver : startReceiveByCondition : Filelist is not ready!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-void

    .line 186
    :cond_0
    iget v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mStatus:I

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_1

    .line 187
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : startReceiveByCondition : Receiver can\'t be searched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Receiver;->startReceive()V

    goto :goto_0
.end method

.method updateStatus()V
    .locals 4

    .prologue
    .line 246
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : updateStatus : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mListener:Lcom/sec/android/app/FileShareClient/Receiver$IReceiverListener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mListener:Lcom/sec/android/app/FileShareClient/Receiver$IReceiverListener;

    iget v1, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mId:I

    iget v2, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mStatus:I

    iget v3, p0, Lcom/sec/android/app/FileShareClient/Receiver;->mErrorCause:I

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/FileShareClient/Receiver$IReceiverListener;->updateStatus(III)V

    .line 251
    :cond_0
    return-void
.end method
