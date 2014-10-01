.class public Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;
.super Landroid/app/Activity;
.source "DeviceSelectActivity.java"


# instance fields
.field public final DEVICE_PICKER_REQUEST:I

.field private final TAG:Ljava/lang/String;

.field private final TAGClass:Ljava/lang/String;

.field private mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

.field private mConnection:Landroid/content/ServiceConnection;

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

.field private mbBindReq:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    iput v1, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->DEVICE_PICKER_REQUEST:I

    .line 23
    const-string v0, "[FileShare][Client]"

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->TAG:Ljava/lang/String;

    .line 24
    const-string v0, "DeviceSelectActivity : "

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->TAGClass:Ljava/lang/String;

    .line 25
    iput-boolean v1, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mbBindReq:Z

    .line 26
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mP2pDeviceInfoList:Ljava/util/ArrayList;

    .line 90
    iput-object v2, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    .line 91
    new-instance v0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity$1;-><init>(Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;Lcom/sec/android/app/FileShareClient/ClientService;)Lcom/sec/android/app/FileShareClient/ClientService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mP2pDeviceInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->startSending()V

    return-void
.end method

.method private bindClientService()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 115
    const-string v1, "[FileShare][Client]"

    const-string v2, "DeviceSelectActivity : bindClientService()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    if-nez v1, :cond_0

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.FileShareClient.SERVICE_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 119
    iput-boolean v3, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mbBindReq:Z

    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->startSending()V

    .line 122
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private startDevicePicker()V
    .locals 3

    .prologue
    .line 145
    const-string v1, "[FileShare][Client]"

    const-string v2, "DeviceSelectActivity : startDevicePicker"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_DIRECT_DEVICE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 149
    return-void
.end method

.method private startSending()V
    .locals 4

    .prologue
    .line 153
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    if-nez v1, :cond_0

    .line 154
    const-string v1, "[FileShare][Client]"

    const-string v2, "DeviceSelectActivity : startSending : not bind service"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mP2pDeviceInfoList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 159
    const-string v1, "[FileShare][Client]"

    const-string v2, "DeviceSelectActivity : startSending : not ready device list"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    :cond_1
    const-string v1, "[FileShare][Client]"

    const-string v2, "DeviceSelectActivity : startSending"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mP2pDeviceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/FileShareClient/ClientService;->createOutbound(Landroid/content/Intent;Ljava/util/ArrayList;)Lcom/sec/android/app/FileShareClient/Outbound;

    move-result-object v0

    .line 166
    .local v0, outbound:Lcom/sec/android/app/FileShareClient/Outbound;
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->finish()V

    goto :goto_0
.end method

.method private startService()V
    .locals 3

    .prologue
    .line 136
    const-string v1, "[FileShare][Client]"

    const-string v2, "DeviceSelectActivity : startService!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.FileShareClient.SERVICE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 139
    return-void
.end method

.method private unbindClientService()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "[FileShare][Client]"

    const-string v1, "DeviceSelectActivity : unbindClientService()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 131
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mbBindReq:Z

    .line 133
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 64
    const-string v3, "[FileShare][Client]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceSelectActivity : onActivityResult :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-nez p2, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->finish()V

    .line 82
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 84
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->startSending()V

    .line 85
    return-void

    .line 70
    :cond_0
    const-string v3, "com.android.OriginalSettings.wifi.p2p.WifiP2pDeviceList"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 71
    .local v0, deviceList:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mP2pDeviceInfoList:Ljava/util/ArrayList;

    .line 73
    const-string v3, "[FileShare][Client]"

    const-string v4, "+--------------------------------------------------------------------------+"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v3, "[FileShare][Client]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceSelectActivity : devicelist size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 77
    .local v2, p2p:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mP2pDeviceInfoList:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;

    invoke-direct {v4, v2}, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    .end local v2           #p2p:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    const-string v3, "[FileShare][Client]"

    const-string v4, "+--------------------------------------------------------------------------+"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, action:Ljava/lang/String;
    const-string v1, "[FileShare][Client]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceSelectActivity : onCreate :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->startDevicePicker()V

    .line 39
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->startService()V

    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->bindClientService()V

    .line 41
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "[FileShare][Client]"

    const-string v1, "DeviceSelectActivity : onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->unbindClientService()V

    .line 48
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "[FileShare][Client]"

    const-string v1, "DeviceSelectActivity : onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "[FileShare][Client]"

    const-string v1, "DeviceSelectActivity : onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 60
    return-void
.end method
