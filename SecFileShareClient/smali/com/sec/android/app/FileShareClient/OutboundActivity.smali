.class public Lcom/sec/android/app/FileShareClient/OutboundActivity;
.super Landroid/app/Activity;
.source "OutboundActivity.java"


# instance fields
.field public final DEVICE_PICKER_REQUEST:I

.field private final TAG:Ljava/lang/String;

.field private final TAGClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/FileShareClient/OutboundActivity;->DEVICE_PICKER_REQUEST:I

    .line 16
    const-string v0, "[FileShare][Client]"

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundActivity;->TAG:Ljava/lang/String;

    .line 17
    const-string v0, "OutboudActivity : "

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundActivity;->TAGClass:Ljava/lang/String;

    return-void
.end method

.method private setDeviceList(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 143
    .local p1, p2pDeviceInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f070022

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/FileShareClient/OutboundFragment;

    .line 144
    .local v0, outboundFragment:Lcom/sec/android/app/FileShareClient/OutboundFragment;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p1}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->setDeviceList(Ljava/util/ArrayList;)V

    .line 147
    :cond_0
    return-void
.end method

.method private startDevicePicker()V
    .locals 3

    .prologue
    .line 135
    const-string v1, "[FileShare][Client]"

    const-string v2, "OutboudActivity : startDevicePicker"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_DIRECT_DEVICE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/FileShareClient/OutboundActivity;->setDeviceList(Ljava/util/ArrayList;)V

    .line 139
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileShareClient/OutboundActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 140
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 109
    const-string v4, "[FileShare][Client]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OutboudActivity : onActivityResult :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    if-nez p2, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundActivity;->finish()V

    .line 128
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 129
    return-void

    .line 115
    :cond_0
    const-string v4, "com.android.OriginalSettings.wifi.p2p.WifiP2pDeviceList"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 116
    .local v0, deviceList:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v3, p2pDeviceInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;>;"
    const-string v4, "[FileShare][Client]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OutboudActivity : devicelist size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v4, "[FileShare][Client]"

    const-string v5, "+--------------------------------------------------------------------------+"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 121
    .local v2, p2p:Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v4, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;

    invoke-direct {v4, v2}, Lcom/sec/android/app/FileShareClient/P2pDeviceInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    .end local v2           #p2p:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    const-string v4, "[FileShare][Client]"

    const-string v5, "+--------------------------------------------------------------------------+"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0, v3}, Lcom/sec/android/app/FileShareClient/OutboundActivity;->setDeviceList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 60
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f070022

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/FileShareClient/OutboundFragment;

    .line 61
    .local v0, outboundFragment:Lcom/sec/android/app/FileShareClient/OutboundFragment;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->onBackPressed()V

    .line 64
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, action:Ljava/lang/String;
    const-string v2, "[FileShare][Client]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutboudActivity : onCreate :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/OutboundActivity;->startDevicePicker()V

    .line 32
    :cond_1
    const v2, 0x7f040006

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileShareClient/OutboundActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 34
    .local v1, titleBar:Landroid/app/ActionBar;
    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 35
    const/high16 v2, 0x7f05

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileShareClient/OutboundActivity;->setTitle(I)V

    .line 36
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 53
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboudActivity : onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, oldAct:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, newAct:Ljava/lang/String;
    const-string v3, "[FileShare][Client]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutboudActivity : onNewIntent : new : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "old : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/FileShareClient/OutboundActivity;->startDevicePicker()V

    .line 80
    :cond_1
    const-string v3, "onNewIntent"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    const-string v3, "com.sec.android.app.FileShareClient.SEND_RESULT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    const-string v3, "bOutboundClear"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    :cond_2
    const-string v3, "com.sec.android.app.FileShareClient.SEND_RESULT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    sget v3, Lcom/sec/android/app/FileShareClient/ClientService;->mNotiCnt:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/sec/android/app/FileShareClient/ClientService;->mNotiCnt:I

    .line 86
    const-string v3, "[FileShare][Client]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@@@@ OutboudActivity : onNewIntent : mNotiCnt ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/android/app/FileShareClient/ClientService;->mNotiCnt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget v3, Lcom/sec/android/app/FileShareClient/ClientService;->mNotiCnt:I

    if-nez v3, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f070022

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/FileShareClient/OutboundFragment;

    .line 89
    .local v2, outboundFragment:Lcom/sec/android/app/FileShareClient/OutboundFragment;
    if-eqz v2, :cond_3

    .line 90
    invoke-virtual {v2, v6}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->setStopForegroundService(Z)V

    .line 94
    .end local v2           #outboundFragment:Lcom/sec/android/app/FileShareClient/OutboundFragment;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/FileShareClient/OutboundActivity;->setIntent(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboudActivity : onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 42
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 48
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 100
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f070022

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/FileShareClient/OutboundFragment;

    .line 101
    .local v0, outboundFragment:Lcom/sec/android/app/FileShareClient/OutboundFragment;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->requestFinish()V

    .line 104
    :cond_0
    return-void
.end method
