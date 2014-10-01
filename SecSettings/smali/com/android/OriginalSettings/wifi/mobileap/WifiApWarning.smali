.class public Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private isAirplaneMode:Z

.field mApDisableDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDialogType:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mWifiApTurningOffDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    .line 58
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    return-void
.end method

.method private dismissProgressDialog(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 198
    const/16 v0, 0x1f44

    if-ne p1, v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->finish()V

    .line 205
    :cond_1
    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 208
    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 209
    const/16 v1, 0x1f44

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    .line 210
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 213
    .local v0, wm:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 215
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 218
    .end local v0           #wm:Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method private showProgressDialog(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 189
    const/16 v0, 0x1f44

    if-ne p1, v0, :cond_1

    .line 190
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    .line 191
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 195
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->finish()V

    .line 223
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 74
    const-string v4, "WifiApWarning"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 78
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    .line 79
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    .line 80
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.OriginalSettings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 82
    const-string v4, "WifiApWarning"

    const-string v5, "Error: this activity may be started only with intent"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->finish()V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v4, "wifiap_warning_dialog_type"

    const/16 v5, 0x1f40

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mDialogType:I

    .line 87
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 88
    .local v3, p:Lcom/android/internal/app/AlertController$AlertParams;
    iget v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mDialogType:I

    packed-switch v4, :pswitch_data_0

    .line 177
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 90
    :pswitch_1
    const-string v4, "WifiApWarning"

    const-string v5, "DIALOG_NAI_MISMATCH"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const v4, 0x7f0902b8

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 92
    const v4, 0x7f0902b9

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 93
    const v4, 0x7f0902db

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 94
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 95
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->setupAlert()V

    goto :goto_0

    .line 131
    :pswitch_2
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 132
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->setupAlert()V

    .line 133
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->setVisible(Z)V

    .line 134
    move-object v0, p0

    .line 135
    .local v0, av:Landroid/app/Activity;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1040014

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0902b4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 138
    .local v2, newDialog:Landroid/app/AlertDialog$Builder;
    const v4, 0x104000a

    new-instance v5, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning$4;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning$4;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    new-instance v4, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning$5;

    invoke-direct {v4, p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning$5;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    const/high16 v4, 0x104

    new-instance v5, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning$6;

    invoke-direct {v5, p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning$6;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;Landroid/app/Activity;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    .line 172
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 173
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1f41
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 229
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    iget v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/16 v1, 0x1f43

    if-ne v0, v1, :cond_0

    .line 233
    invoke-static {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, -0x2

    invoke-static {p0, v0, p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->onApDisableClick(Landroid/content/DialogInterface;ILandroid/app/Activity;)V

    .line 239
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 184
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 185
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    return-void
.end method
