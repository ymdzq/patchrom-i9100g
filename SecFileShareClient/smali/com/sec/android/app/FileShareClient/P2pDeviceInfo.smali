.class public Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;
.super Ljava/lang/Object;
.source "P2pDeviceInfo.java"


# static fields
.field public static final CONNECTED:I = 0x0

.field public static final CONNECTING:I = 0x2

.field public static final CONNECT_FAILED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[FileShare][Client]"

.field private static final TAGClass:Ljava/lang/String; = "P2pDeviceInfo : "

.field private static final sDeviceTypeImages:[I


# instance fields
.field private mConnectStatus:I

.field private mDeviceName:Ljava/lang/String;

.field private mInterfaceMacAddress:Ljava/lang/String;

.field private mIpAddress:Ljava/lang/String;

.field private mMacAddress:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mTypeIcon:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->sDeviceTypeImages:[I

    return-void

    :array_0
    .array-data 0x4
        0x6t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    const/4 v3, 0x2

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mType:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->setTypeIcon()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mTypeIcon:I

    .line 43
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mMacAddress:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mMacAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->convertInterfaceMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mInterfaceMacAddress:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 48
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P2pDeviceInfo : Name["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], Status["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], MAC["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mConnectStatus:I

    .line 57
    :goto_0
    return-void

    .line 52
    :cond_0
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v3, v0, :cond_1

    const/4 v0, 0x4

    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v0, v1, :cond_2

    .line 54
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mConnectStatus:I

    goto :goto_0

    .line 56
    :cond_2
    iput v3, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mConnectStatus:I

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "macAddress"
    .parameter "deviceName"
    .parameter "connectStatus"
    .parameter "ipAddress"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mType:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mMacAddress:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 63
    iput p4, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mConnectStatus:I

    .line 64
    iput-object p5, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mIpAddress:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private convertInterfaceMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "macAddress"

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xc

    const/4 v6, 0x0

    .line 124
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 125
    .local v1, partialMacAddr:Ljava/util/Formatter;
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, subString:Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 128
    .local v0, enable:I
    xor-int/lit16 v0, v0, 0x80

    .line 129
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private setTypeIcon()I
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    .line 105
    const/4 v1, 0x0

    .line 107
    .local v1, tokens:[Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mType:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mType:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mType:Ljava/lang/String;

    if-eqz v2, :cond_1

    array-length v2, v1

    if-ge v2, v4, :cond_2

    .line 111
    :cond_1
    const-string v2, "[FileShare][Client]"

    const-string v3, "P2pDeviceInfo : Malformed primaryDeviceType"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v2, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->sDeviceTypeImages:[I

    aget v2, v2, v5

    .line 119
    :goto_0
    return v2

    .line 115
    :cond_2
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, deviceType:I
    if-lt v0, v4, :cond_3

    const/16 v2, 0xc

    if-ge v0, v2, :cond_3

    .line 117
    sget-object v2, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->sDeviceTypeImages:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    goto :goto_0

    .line 119
    :cond_3
    sget-object v2, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->sDeviceTypeImages:[I

    aget v2, v2, v5

    goto :goto_0
.end method


# virtual methods
.method public getConnectStatus()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mConnectStatus:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mInterfaceMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeIcon()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mTypeIcon:I

    return v0
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "ipAddress"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;->mIpAddress:Ljava/lang/String;

    .line 93
    return-void
.end method
