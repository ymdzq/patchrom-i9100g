.class public Lcom/android/OriginalSettings/wifi/WifiSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;,
        Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final WIFI_CONNECT_THRESHOLD:I

.field private static final WIFI_ERRORCODE:Z

.field public static cancel_network:I

.field public static edit_network:I

.field public static forget_network:I

.field public static mInOffloadDialog:Z

.field public static mManageNetworkConnected:I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field public static mStartWith:I

.field public static manageNetwork:Z

.field public static vzwEditFlag:Z

.field public static vzwViewFlag:Z


# instance fields
.field private final ERROR_DIALOG_DURATION_TIME:I

.field private WIFISCAN_OUTDATED_TIME_THRESHOLD:I

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mActivity:Landroid/app/Activity;

.field private mAddNetworkItem:Landroid/preference/Preference;

.field mAddNetworkMenuItem:Landroid/view/MenuItem;

.field mAdvancedMenuItem:Landroid/view/MenuItem;

.field private mAutoFinishOnConnection:Z

.field private mCWConnectToNw:I

.field private mCWPendingOperation:I

.field private mChannel:Landroid/net/wifi/WifiManager$Channel;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

.field public mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mDurationDialogHandler:Landroid/os/Handler;

.field mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapMethod:Ljava/lang/String;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private mErrorApInfo:Landroid/net/wifi/WifiInfo;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

.field private mErrorDialogRunnable:Ljava/lang/Runnable;

.field private mErrorDialogStopScan:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mFirst5GScanFlag:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mIgnoreConnectedMsg:Z

.field private mInManageNetwork:Z

.field private mInPickerActivity:Z

.field private mInPickerDialog:Z

.field private mKeyStoreNetworkId:I

.field private mLastCWErrorReason:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field public mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

.field mP2pMenuItem:Landroid/view/MenuItem;

.field private mP2pSupported:Z

.field private mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryPopupFlag:Z

.field private mRetryPopupRequestId:I

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field mScanMenuItem:Landroid/view/MenuItem;

.field private final mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

.field private mSccDiffDialog:Landroid/app/AlertDialog;

.field private mScrollTimer:J

.field private mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

.field private mSetupWizardMode:Z

.field private mWatchdogDialog:Landroid/app/AlertDialog;

.field private mWifiDialogStyle:I

.field private mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field rememberedAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field wifiOffloadDialog:Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    .line 286
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 344
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableThresholdDuringConnection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->WIFI_CONNECT_THRESHOLD:I

    .line 345
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 360
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 220
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 222
    iput v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 227
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    .line 247
    const v0, 0x493e0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->WIFISCAN_OUTDATED_TIME_THRESHOLD:I

    .line 250
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mActivity:Landroid/app/Activity;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    .line 283
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    .line 287
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 293
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->ERROR_DIALOG_DURATION_TIME:I

    .line 302
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 328
    iput v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mCWPendingOperation:I

    .line 329
    iput v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mCWConnectToNw:I

    .line 340
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    .line 348
    iput v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupRequestId:I

    .line 2687
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiSettings$23;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$23;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 2725
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiSettings$24;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$24;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 361
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 362
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SHOW_EAP_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 401
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    .line 403
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    .line 410
    return-void
.end method

.method private CWHandleCommand(II)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2943
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2944
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2945
    packed-switch p1, :pswitch_data_0

    .line 2967
    :cond_0
    :goto_0
    :pswitch_0
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2968
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2969
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 2971
    return v0

    .line 2947
    :pswitch_1
    const-string v2, "netId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2948
    const-string v2, "disableOthers"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2952
    :pswitch_2
    const-string v2, "bEnable"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2956
    :pswitch_3
    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 2957
    const-string v2, "nRetryMethod"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2958
    :cond_1
    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 2959
    const-string v2, "nRetryMethod"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2945
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/wifi/WifiSettings;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->removeDialogTimer(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/wifi/WifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/WifiNewDialog;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 153
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showNewDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showNewDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2006
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2016
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 2682
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2683
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2685
    :cond_0
    return-void
.end method

.method private connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3069
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectNetwork nid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    :cond_0
    sget v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->WIFI_CONNECT_THRESHOLD:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3072
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3073
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3074
    const/16 v2, 0x1d

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3075
    const-string v2, "netId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3076
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3077
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 3080
    :cond_1
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    if-eqz v0, :cond_4

    .line 3081
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 3082
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3083
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, p2, :cond_2

    .line 3084
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_4

    .line 3085
    :cond_3
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 3091
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScrollTimer:J

    .line 3092
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3093
    return-void
.end method

.method private connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3034
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "connectNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    :cond_0
    sget v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->WIFI_CONNECT_THRESHOLD:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3037
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3038
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3039
    const/16 v2, 0x1d

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3040
    const-string v2, "netId"

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3041
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3042
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 3045
    :cond_1
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    if-eqz v0, :cond_3

    .line 3046
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 3047
    :cond_2
    const/4 v0, 0x0

    iput v0, p2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 3050
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScrollTimer:J

    .line 3051
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3052
    return-void
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2020
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2023
    new-instance v4, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/WifiSettings$1;)V

    .line 2025
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 2026
    if-eqz v0, :cond_0

    .line 2030
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2031
    new-instance v2, Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 2044
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v0, v5}, Lcom/android/OriginalSettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 2046
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2047
    iget-object v0, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 2054
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 2055
    if-eqz v0, :cond_3

    .line 2056
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 2058
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[IBSS]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2063
    const/4 v1, 0x0

    .line 2064
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 2065
    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2066
    const/4 v1, 0x1

    :goto_3
    move v2, v1

    goto :goto_2

    .line 2068
    :cond_2
    if-nez v2, :cond_1

    .line 2069
    new-instance v1, Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 2070
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2071
    iget-object v0, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 2078
    :cond_3
    :try_start_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2082
    :goto_4
    return-object v3

    .line 2079
    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method private dismissDialog(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 1423
    packed-switch p1, :pswitch_data_0

    .line 1462
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1425
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->dismiss()V

    .line 1427
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->removeDialog(I)V

    .line 1428
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    goto :goto_0

    .line 1432
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1433
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->removeDialog(I)V

    .line 1434
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    goto :goto_0

    .line 1438
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1440
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1444
    :pswitch_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->dismiss()V

    .line 1446
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    goto :goto_0

    .line 1450
    :pswitch_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1452
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1456
    :pswitch_6
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1458
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private getErrorAnimationView(II)Landroid/view/View;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1719
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1721
    const v1, 0x7f040121

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1722
    const v0, 0x7f0b0029

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1723
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1724
    const v0, 0x7f0b0397

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1725
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1726
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 1727
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/OriginalSettings/wifi/WifiSettings$22;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$22;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    const-wide/16 v3, 0x5f

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1733
    return-object v1
.end method

.method private getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    .line 3109
    const/4 v1, 0x0

    .line 3110
    .local v1, found:Z
    const/4 v3, -0x1

    .line 3111
    .local v3, newNetId:I
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 3112
    .local v0, accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-virtual {v0, p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->checkIfSame(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3113
    const/4 v1, 0x1

    .line 3114
    iget v3, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    .line 3118
    .end local v0           #accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    :cond_1
    if-eqz v1, :cond_2

    move v4, v3

    .line 3121
    .end local v3           #newNetId:I
    .local v4, newNetId:I
    :goto_0
    return v4

    .end local v4           #newNetId:I
    .restart local v3       #newNetId:I
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    move v4, v3

    .end local v3           #newNetId:I
    .restart local v4       #newNetId:I
    goto :goto_0
.end method

.method private getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .parameter "networkId"

    .prologue
    .line 1519
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1520
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_1

    .line 1521
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1522
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 1527
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2107
    const-string v0, "android.net.wifi.supplicant.WAPI_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2108
    const-string v0, "wapi_string"

    .line 2110
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2111
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUPPLICANT_WAPI_EVENT received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    packed-switch v0, :pswitch_data_0

    .line 2248
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v2, "AKA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2249
    const-string v0, "android.net.wifi.SHOW_EAP_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2250
    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2253
    if-nez v0, :cond_14

    .line 2299
    :cond_1
    :goto_1
    return-void

    .line 2114
    :pswitch_1
    const v0, 0x7f09022f

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2118
    :pswitch_2
    const v0, 0x7f090230

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2122
    :cond_2
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2123
    const-string v0, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateWifiState(I)V

    goto :goto_0

    .line 2125
    :cond_3
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2126
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "WifiSettings"

    const-string v2, ">>> SCAN_RESULTS_AVAILABLE_ACTION RECEIVED"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :cond_4
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2135
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_0

    .line 2136
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    .line 2137
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->forceScan()V

    .line 2138
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v2, "Force scan for 5G APs"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2140
    :cond_5
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2141
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2143
    const-string v0, "wifiConfiguration"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2144
    if-eqz v0, :cond_6

    .line 2145
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupRequestId:I

    .line 2146
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> CONFIGURED_NETWORKS_CHANGED_ACTION nid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    :cond_6
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupRequestId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2149
    iput-boolean v6, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupFlag:Z

    .line 2150
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 2153
    :cond_7
    const-string v0, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2154
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    goto/16 :goto_0

    .line 2155
    :cond_8
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2162
    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    .line 2164
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v2, :cond_0

    .line 2165
    sget-boolean v2, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> SUPPLICANT_STATE_CHANGED_ACTION state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    :cond_9
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 2172
    :cond_a
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2173
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 2175
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 2176
    iget-boolean v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    .line 2177
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->finish()V

    .line 2179
    :cond_b
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2180
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 2181
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2182
    sget-boolean v3, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>> NETWORK_STATE_CHANGED_ACTION state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 2185
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->wifiOffloadDialog:Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->wifiOffloadDialog:Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;

    iget-boolean v3, v3, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->wifiOffloadDialog:Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->isSCamera()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2188
    if-eqz v2, :cond_e

    sget-boolean v2, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-eqz v2, :cond_e

    .line 2189
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->wifiOffloadDialog:Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;

    iget-boolean v2, v2, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v2, :cond_d

    .line 2191
    const-string v2, "WifiSettings"

    const-string v3, " Wifi Success Next Activity : "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->wifiOffloadDialog:Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;

    iget-object v3, v3, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mNextForwardIntentWIfi_In_SetupWizard:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2194
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->wifiOffloadDialog:Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 2195
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    .line 2196
    const-string v4, "setup_wizard_bundle"

    const-string v5, "setup_wizard_bundle"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2200
    :goto_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2202
    :cond_d
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 2206
    :cond_e
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2207
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 2198
    :cond_f
    const-string v3, "WifiSettings"

    const-string v4, "Bundle is Empty in Wifi Settings Screen"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2210
    :cond_10
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2211
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 2212
    :cond_11
    const-string v0, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2213
    const-string v0, "launch_with"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2214
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 2215
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto/16 :goto_0

    .line 2220
    :cond_12
    const-string v0, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2221
    const-string v0, "errorCode"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2222
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> ERROR_ACTION RECEIVED code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 2225
    :pswitch_3
    const-string v0, "wifiInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    .line 2226
    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2227
    const/16 v0, 0x7530

    invoke-direct {p0, v5, v0, v6}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto/16 :goto_0

    .line 2230
    :cond_13
    const-string v0, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2231
    const-string v0, "info_type"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2232
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> SHOW_INFO_MESSAGE RECEIVED code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 2264
    :cond_14
    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2112
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 2223
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch

    .line 2233
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private isUsimUseable()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3165
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3166
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    .line 3167
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "airplane_mode_on"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    .line 3169
    :goto_0
    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    if-nez v3, :cond_1

    .line 3170
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090292

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 3190
    :goto_1
    return v0

    :cond_0
    move v3, v1

    .line 3167
    goto :goto_0

    .line 3174
    :cond_1
    const-string v3, ""

    const-string v4, "SKT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3175
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 3177
    if-eqz v0, :cond_3

    const-string v3, "45005"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "45000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3178
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090294

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 3179
    goto :goto_1

    .line 3181
    :cond_2
    const-string v3, ""

    const-string v4, "KTT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3182
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 3184
    if-eqz v0, :cond_3

    const-string v3, "45008"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "45002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3185
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090293

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 3186
    goto :goto_1

    :cond_3
    move v0, v2

    .line 3190
    goto :goto_1
.end method

.method private onAdvancedMenuPressed()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1125
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerActivity:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v0, :cond_1

    .line 1126
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    .line 1130
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_2

    .line 1131
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090244

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1139
    :goto_1
    return-void

    .line 1128
    :cond_1
    sput-boolean v6, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    goto :goto_0

    .line 1137
    :cond_2
    const-class v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1
.end method

.method private removeDialogTimer(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1712
    :cond_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_1

    .line 1713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1714
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1716
    :cond_1
    return-void
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 1786
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 1788
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 1789
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 1790
    const/4 v0, 0x1

    .line 1792
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .parameter "config"

    .prologue
    .line 3102
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3103
    const/4 v0, 0x1

    return v0
.end method

.method private setupAddNetworkPreference()V
    .locals 2

    .prologue
    .line 1988
    const-string v0, "wifi_picker_dialog_add_network"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    .line 1989
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    const v1, 0x7f02046d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 1992
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1994
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1997
    :cond_0
    return-void
.end method

.method private showConfigUi(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    .locals 0
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 1376
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    .line 1378
    return-void
.end method

.method private showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2397
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    if-nez v0, :cond_1

    .line 2424
    :cond_0
    :goto_0
    return-void

    .line 2399
    :cond_1
    if-nez p1, :cond_2

    .line 2400
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2401
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgressText(ZI)V

    .line 2402
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    goto :goto_0

    .line 2404
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 2405
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    const v1, 0x7f0903b7

    invoke-virtual {v0, v3, v1}, Lcom/android/OriginalSettings/ProgressCategory;->setProgressText(ZI)V

    .line 2406
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 2407
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 2408
    :cond_3
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_4

    .line 2409
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    if-nez v0, :cond_0

    .line 2410
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgressText(ZI)V

    .line 2411
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 2412
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 2417
    :cond_4
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_5

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    .line 2418
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgressText(ZI)V

    .line 2419
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2420
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgressText(ZI)V

    .line 2421
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_0
.end method

.method private showConnectionFailDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2428
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2429
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v1, v2, :cond_0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2432
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2433
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AP Dialog is aleady showing. Ignore request id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupRequestId:I

    .line 2445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupFlag:Z

    .line 2446
    return-void

    .line 2435
    :cond_1
    const-string v0, "WifiSettings"

    const-string v1, "Show retry popup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    iget v0, p1, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_2

    .line 2438
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090750

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2441
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showRetryDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto :goto_0
.end method

.method private showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v1, 0x1

    .line 1396
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1398
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1399
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->removeDialog(I)V

    .line 1400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    .line 1404
    :cond_0
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1405
    iput-boolean p2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 1407
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    .line 1408
    return-void
.end method

.method private showDurationDialog(IIZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1531
    iput-boolean p3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1532
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 1535
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1707
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1594
    :pswitch_1
    const-string v0, ""

    const-string v1, "KTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1595
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090282

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1596
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1597
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1598
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0

    .line 1604
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1605
    const v1, 0x7f020483

    const v2, 0x7f090283

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getErrorAnimationView(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1606
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1607
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1609
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1610
    const v1, 0x7f09035b

    new-instance v2, Lcom/android/OriginalSettings/wifi/WifiSettings$13;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$13;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1620
    :cond_3
    const v1, 0x7f09059b

    new-instance v2, Lcom/android/OriginalSettings/wifi/WifiSettings$14;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$14;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1629
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/OriginalSettings/wifi/WifiSettings$15;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$15;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1633
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 1634
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiSettings$16;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$16;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1639
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiSettings$17;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$17;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    .line 1646
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1647
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1535
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showNewDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    .locals 7
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->dismiss()V

    .line 1742
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiDialogStyle:I

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    .line 1743
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1747
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_1

    .line 1753
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/OriginalSettings/guide/GuideFragmentCallback;

    move-result-object v6

    .line 1755
    .local v6, guide:Lcom/android/OriginalSettings/guide/GuideFragmentCallback;
    if-eqz v6, :cond_1

    .line 1756
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-interface {v6}, Lcom/android/OriginalSettings/guide/GuideFragmentCallback;->getOnShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1757
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-interface {v6}, Lcom/android/OriginalSettings/guide/GuideFragmentCallback;->getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1762
    .end local v6           #guide:Lcom/android/OriginalSettings/guide/GuideFragmentCallback;
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->show()V

    .line 1763
    return-void
.end method

.method private showNewDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V
    .locals 7
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "details"

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->dismiss()V

    .line 1769
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiDialogStyle:I

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    .line 1770
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1771
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->show()V

    .line 1773
    return-void
.end method

.method private showRetryDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v0, 0x5

    .line 1412
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1415
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1416
    iput-boolean p2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 1418
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    .line 1419
    return-void
.end method

.method private startWith(I)V
    .locals 7
    .parameter "id"

    .prologue
    const/16 v6, 0x7530

    const/4 v5, 0x0

    .line 884
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiSettings activity start with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    packed-switch p1, :pswitch_data_0

    .line 907
    :goto_0
    return-void

    .line 887
    :pswitch_0
    const/4 v2, 0x4

    invoke-direct {p0, v2, v6, v5}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto :goto_0

    .line 891
    :pswitch_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 892
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiSettings$7;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$7;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    .line 897
    .local v1, runnable:Ljava/lang/Runnable;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 901
    .end local v0           #handler:Landroid/os/Handler;
    .end local v1           #runnable:Ljava/lang/Runnable;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto :goto_0

    .line 904
    :pswitch_3
    const/16 v2, 0x8

    invoke-direct {p0, v2, v6, v5}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto :goto_0

    .line 885
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateAccessPoints()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1801
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1964
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1804
    const-string v1, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateAccessPoints] wifiState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    packed-switch v0, :pswitch_data_0

    .line 1955
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScrollTimer:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 1956
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScrollTimer:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v0, v4

    if-lez v0, :cond_c

    .line 1957
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiSettings"

    const-string v1, "scroll end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_3
    iput-wide v6, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScrollTimer:J

    goto :goto_0

    .line 1808
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1810
    :cond_5
    const-string v0, "WifiSettings"

    const-string v1, "Skip updateAccessPoints"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1814
    :cond_6
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v4

    .line 1815
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1825
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1826
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    if-eqz v1, :cond_e

    .line 1827
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 1828
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ProgressCategory;->removeAll()V

    .line 1834
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1835
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    move-object v1, v0

    .line 1837
    :goto_2
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v0, :cond_7

    .line 1899
    :cond_7
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 1901
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 1902
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 1903
    :goto_3
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1905
    const v0, 0x7f090249

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 1907
    :cond_8
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1920
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_9
    move v0, v3

    .line 1902
    goto :goto_3

    .line 1924
    :cond_a
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_2

    .line 1931
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 1932
    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1933
    :goto_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1935
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_b
    move v2, v3

    .line 1932
    goto :goto_5

    .line 1942
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/16 :goto_1

    .line 1946
    :pswitch_2
    const v0, 0x7f09022b

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 1951
    :pswitch_3
    const v0, 0x7f090248

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 1959
    :cond_c
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1960
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "WifiSettings"

    const-string v1, "force scroll up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    :cond_d
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    :cond_e
    move-object v1, v0

    goto/16 :goto_2

    .line 1806
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 2321
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2322
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 2394
    :cond_0
    return-void

    .line 2326
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 2327
    .local v2, prefScreen:Landroid/preference/PreferenceGroup;
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    if-eqz v4, :cond_2

    .line 2328
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    .line 2330
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V

    .line 2334
    :cond_2
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v4, :cond_3

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v4, :cond_6

    .line 2335
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 2340
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 2341
    if-eqz p1, :cond_4

    .line 2342
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 2345
    :cond_4
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 2347
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 2348
    .local v3, preference:Landroid/preference/Preference;
    instance-of v4, v3, Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v4, :cond_5

    move-object v0, v3

    .line 2349
    check-cast v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 2350
    .local v0, accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v4, v5}, Lcom/android/OriginalSettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 2352
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupFlag:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupRequestId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupRequestId:I

    iget v5, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-ne v4, v5, :cond_5

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2357
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showConnectionFailDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;)V

    .line 2345
    .end local v0           #accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2337
    .end local v1           #i:I
    .end local v3           #preference:Landroid/preference/Preference;
    :cond_6
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 1021
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1022
    if-eqz p1, :cond_2

    .line 1023
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0200a3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1024
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1030
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v0, :cond_4

    .line 1031
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1032
    if-eqz p1, :cond_3

    .line 1033
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0200a7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1034
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1051
    :cond_1
    :goto_1
    return-void

    .line 1026
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1027
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 1036
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1037
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 1041
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1042
    if-eqz p1, :cond_5

    .line 1043
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f02009b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1044
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 1046
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1047
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateWifiState(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2449
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2451
    packed-switch p1, :pswitch_data_0

    .line 2501
    :goto_0
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 2502
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 2503
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 2504
    :goto_1
    return-void

    .line 2453
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 2458
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    .line 2468
    const v0, 0x7f09022a

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 2472
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    .line 2473
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 2474
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->dismissKeypad()V

    .line 2476
    :cond_0
    const v0, 0x7f090248

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 2485
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v0, :cond_1

    .line 2486
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->finish()V

    .line 2488
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2490
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->dismissDialog(I)V

    goto :goto_0

    .line 2451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method forget()V
    .locals 4

    .prologue
    .line 3137
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3139
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    :goto_0
    return-void

    .line 3147
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3154
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3155
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 3157
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 3160
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.wifi.direct"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pSupported:Z

    .line 485
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 486
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    .line 488
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiSettings$2;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$2;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 500
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiSettings$3;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$3;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 512
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiSettings$4;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$4;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 524
    if-eqz p1, :cond_0

    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 526
    const-string v7, "edit_mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 527
    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 531
    :cond_0
    const-string v7, "motion_recognition"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v7, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 532
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiSettings$5;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$5;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 546
    const-string v7, "enterprise_policy"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 549
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 550
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 553
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "wifi_auto_finish_on_connect"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    .line 555
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v7, :cond_2

    .line 557
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 558
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 561
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 563
    .local v2, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 565
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 712
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 572
    :cond_2
    const-string v7, "wifi_enable_next_on_connect"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 577
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v7, :cond_3

    .line 578
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 579
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 581
    .restart local v2       #connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_3

    .line 582
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 584
    .local v3, info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 590
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_3
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v7, :cond_c

    .line 591
    const-string v7, "WifiSettings"

    const-string v8, "onCreate:only_access_points"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v7, 0x1

    sput v7, Lcom/android/OriginalSettings/wifi/WifiSettings;->mManageNetworkConnected:I

    .line 593
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/OriginalSettings/wifi/WifiSettings;->manageNetwork:Z

    .line 594
    const v7, 0x7f07007e

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 595
    const-string v7, "access_points"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/OriginalSettings/ProgressCategory;

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    .line 596
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    if-eqz v7, :cond_4

    .line 597
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/OriginalSettings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 612
    :cond_4
    :goto_1
    const-string v7, "wifi_progress_category"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/OriginalSettings/ProgressCategory;

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    .line 613
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    if-eqz v7, :cond_5

    .line 614
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/OriginalSettings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 615
    :cond_5
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v7, :cond_6

    .line 616
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->setupAddNetworkPreference()V

    .line 619
    :cond_6
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v7, :cond_7

    .line 620
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const/high16 v8, 0x1e4

    invoke-virtual {v7, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 652
    :cond_7
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 654
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v7, v1, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_a

    move-object v6, v1

    .line 655
    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 656
    .local v6, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v7

    if-nez v7, :cond_a

    .line 657
    :cond_8
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 659
    .local v5, padding:I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v8, v5, v9}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 661
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 662
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_9

    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerActivity:Z

    if-eqz v7, :cond_e

    .line 663
    :cond_9
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v8, 0x10

    const/16 v9, 0x14

    invoke-virtual {v7, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 665
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 671
    :goto_2
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x15

    invoke-direct {v8, v9, v10, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 676
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f090227

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 677
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/high16 v8, 0x7f03

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setIcon(I)V

    .line 682
    .end local v5           #padding:I
    .end local v6           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_a
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-direct {v7, v1, v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    .line 687
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 689
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const/high16 v8, 0x4190

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 690
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 691
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 693
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 696
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_b

    invoke-static {}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode()Z

    move-result v7

    if-nez v7, :cond_b

    .line 698
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 708
    :cond_b
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 711
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 598
    .end local v0           #actionBarSwitch:Landroid/widget/Switch;
    :cond_c
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v7, :cond_d

    .line 599
    const v7, 0x7f070088

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 605
    :cond_d
    const v7, 0x7f070089

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 667
    .restart local v0       #actionBarSwitch:Landroid/widget/Switch;
    .restart local v5       #padding:I
    .restart local v6       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_e
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-virtual {v7, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto/16 :goto_2
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3225
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 3229
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 3230
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showConfigUi(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    .line 3231
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 440
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 458
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2915
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 2916
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->forget()V

    .line 2939
    :cond_0
    :goto_0
    return-void

    .line 2922
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 2932
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-nez v0, :cond_2

    .line 2933
    const-string v0, "WifiSettings"

    const-string v1, "onClick SUBMIT button but, mDialog is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2935
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->submit(Lcom/android/OriginalSettings/wifi/WifiConfigController;)V

    goto :goto_0

    .line 2936
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 2937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1015
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1016
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateOptionsMenuIcon(Z)V

    .line 1017
    :cond_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1018
    return-void

    .line 1016
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1201
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 1202
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1252
    :cond_0
    :goto_0
    return v0

    .line 1205
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1252
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1207
    :pswitch_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 1208
    const-string v1, "T wifi zone_secure"

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1209
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1226
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1227
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1212
    :cond_3
    const-string v1, "ollehWiFi"

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1213
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1229
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_5

    .line 1231
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 1232
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1234
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showConfigUi(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1239
    :pswitch_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1248
    :pswitch_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showConfigUi(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 1205
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 416
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/OriginalSettings/wifi/WifiPickerDialog;

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    .line 417
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/OriginalSettings/wifi/WifiPickerActivity;

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerActivity:Z

    .line 419
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 431
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 1143
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 1144
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 1147
    instance-of v2, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 1148
    check-cast v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1167
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v0

    .line 1168
    if-nez v0, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1171
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1174
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    const/4 v0, 0x1

    .line 1180
    :goto_2
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v2

    .line 1181
    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    .line 1184
    const/16 v0, 0x8

    const v3, 0x7f090246

    invoke-interface {p1, v1, v0, v1, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1188
    :cond_4
    if-nez v2, :cond_0

    .line 1191
    const/16 v0, 0x9

    const v2, 0x7f090247

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1172
    :cond_5
    const/4 v0, 0x7

    const v2, 0x7f090245

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    move v0, v1

    .line 1177
    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "dialogId"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1466
    packed-switch p1, :pswitch_data_0

    .line 1515
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1469
    :pswitch_1
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1470
    .local v3, ap:Lcom/android/OriginalSettings/wifi/AccessPoint;
    if-nez v3, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1472
    new-instance v3, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .end local v3           #ap:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1474
    .restart local v3       #ap:Lcom/android/OriginalSettings/wifi/AccessPoint;
    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1478
    :cond_0
    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1482
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 1486
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    .line 1494
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    iget v0, v3, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_1

    .line 1500
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/OriginalSettings/guide/GuideFragmentCallback;

    move-result-object v6

    .line 1502
    .local v6, guide:Lcom/android/OriginalSettings/guide/GuideFragmentCallback;
    if-eqz v6, :cond_1

    .line 1503
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-interface {v6}, Lcom/android/OriginalSettings/guide/GuideFragmentCallback;->getOnShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1504
    invoke-interface {v6}, Lcom/android/OriginalSettings/guide/GuideFragmentCallback;->getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1505
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-interface {v6}, Lcom/android/OriginalSettings/guide/GuideFragmentCallback;->getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1509
    .end local v6           #guide:Lcom/android/OriginalSettings/guide/GuideFragmentCallback;
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    goto :goto_0

    .line 1489
    :cond_2
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    goto :goto_1

    .line 1511
    .end local v3           #ap:Lcom/android/OriginalSettings/wifi/AccessPoint;
    :pswitch_2
    new-instance v0, Lcom/android/OriginalSettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/android/OriginalSettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 1513
    :pswitch_3
    new-instance v0, Lcom/android/OriginalSettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/OriginalSettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1466
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 911
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-nez v0, :cond_3

    .line 912
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    .line 913
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    .line 917
    const/4 v0, 0x6

    const v6, 0x7f090243

    invoke-interface {p1, v3, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    .line 918
    if-eqz v5, :cond_4

    .line 919
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const v6, 0x7f0200a3

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 920
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 924
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 926
    const v0, 0x7f090244

    invoke-interface {p1, v3, v1, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    .line 928
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v0, :cond_6

    .line 929
    const/4 v0, 0x3

    const v6, 0x7f090242

    invoke-interface {p1, v3, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    .line 930
    if-eqz v5, :cond_5

    .line 931
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    const v6, 0x7f0200a7

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v1

    .line 937
    :goto_1
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 938
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move v0, v3

    .line 945
    :goto_2
    if-eqz v5, :cond_0

    .line 946
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    const v7, 0x7f02009b

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 948
    :cond_0
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 949
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 972
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v6

    if-ne v6, v2, :cond_8

    .line 974
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v4, :cond_1

    .line 975
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 979
    :cond_1
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v4, :cond_7

    .line 980
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 982
    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 983
    invoke-interface {p1, v9}, Landroid/view/Menu;->removeItem(I)V

    .line 1005
    :cond_2
    :goto_3
    if-nez v5, :cond_3

    .line 1006
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v8, :cond_9

    :goto_4
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateOptionsMenuIcon(Z)V

    .line 1010
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1011
    return-void

    .line 922
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    .line 935
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    const v6, 0x7f02009b

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v2

    goto :goto_1

    .line 941
    :cond_6
    if-nez v5, :cond_a

    move v0, v2

    .line 942
    goto :goto_2

    .line 986
    :cond_7
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 987
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 988
    invoke-interface {p1, v9}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_3

    .line 994
    :cond_8
    const v0, 0x7f090240

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200a8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 998
    const v0, 0x7f090241

    invoke-interface {p1, v3, v8, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200a9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    :cond_9
    move v2, v3

    .line 1006
    goto :goto_4

    :cond_a
    move v0, v3

    goto/16 :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 436
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1073
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1121
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    :cond_0
    :goto_0
    return v7

    .line 1075
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 1078
    :pswitch_2
    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1079
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    .line 1080
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090372

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1086
    :cond_1
    const-class v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1090
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 1093
    :pswitch_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1094
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->forceScan()V

    .line 1100
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    move v6, v7

    :cond_2
    move v7, v6

    goto :goto_0

    .line 1096
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09035e

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1105
    :pswitch_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->onAddNetworkPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    const-string v1, "WifiSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1114
    :pswitch_6
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto :goto_0

    .line 1117
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_MANAGE_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1073
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 842
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 847
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->pause()V

    .line 850
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 851
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 853
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 854
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 857
    :cond_1
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_2

    .line 859
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 861
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 862
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 863
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    .line 866
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 867
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 868
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 871
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 872
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 873
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    .line 875
    :cond_5
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1264
    instance-of v1, p2, Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v1, :cond_5

    .line 1265
    check-cast p2, Lcom/android/OriginalSettings/wifi/AccessPoint;

    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1270
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1271
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 1273
    const-string v1, "T wifi zone_secure"

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1274
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1316
    :cond_0
    :goto_0
    return v0

    .line 1277
    :cond_1
    const-string v1, "ollehWiFi"

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1278
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1285
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v1

    .line 1286
    if-eqz v1, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 1298
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 1300
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1303
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1304
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09035f

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1307
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1310
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1311
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1312
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    .line 1314
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 721
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 723
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 724
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 725
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0x1a

    iput v3, v2, Landroid/os/Message;->what:I

    .line 727
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 728
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "enable"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 729
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 731
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    if-nez v3, :cond_0

    .line 732
    const-string v3, "WifiSettings"

    const-string v4, "Start scan, start assoc !!!!!!!!!!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    const-string v3, "sys.edm.keystore_netid"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 739
    .local v1, auxNetId:I
    if-eq v1, v7, :cond_1

    .line 740
    iput v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 741
    const-string v3, "sys.edm.keystore_netid"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 779
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 780
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->finish()V

    .line 785
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    if-eqz v3, :cond_3

    .line 786
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->resume()V

    .line 789
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 790
    iget v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    if-eq v3, v7, :cond_4

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v3

    sget-object v4, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v3, v4, :cond_4

    .line 792
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 794
    :cond_4
    iput v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 796
    iget-boolean v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v3, :cond_5

    .line 797
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 804
    :cond_5
    sget-object v3, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v3, :cond_6

    .line 806
    sget-object v3, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    .line 819
    :cond_6
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 821
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/WifiDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 822
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/WifiDialog;->dismissSpinnerPopup()V

    .line 825
    :cond_7
    sget v3, Lcom/android/OriginalSettings/wifi/WifiSettings;->mStartWith:I

    if-eqz v3, :cond_8

    .line 826
    sget v3, Lcom/android/OriginalSettings/wifi/WifiSettings;->mStartWith:I

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->startWith(I)V

    .line 827
    sput v8, Lcom/android/OriginalSettings/wifi/WifiSettings;->mStartWith:I

    .line 829
    :cond_8
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1055
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1058
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1059
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1060
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 1061
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 1062
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 1063
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    const v1, 0x7f0b0304

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    const v1, 0x7f0b033e

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1066
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setSoftKeyboardVisible(Z)V

    .line 1069
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 879
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 880
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 881
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 3213
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3214
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 3217
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 3218
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 3259
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3260
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 3262
    :cond_0
    return-void
.end method

.method submit(Lcom/android/OriginalSettings/wifi/WifiConfigController;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2977
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2979
    if-nez v0, :cond_4

    .line 2981
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->checkCTCSsid(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2984
    const/16 v0, 0xa

    invoke-direct {p0, v0, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->CWHandleCommand(II)I

    .line 2987
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_2

    .line 2990
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3026
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3027
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 3029
    :cond_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 3030
    return-void

    .line 2992
    :cond_4
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_7

    .line 2993
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->isRetryDialog()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2994
    sget-boolean v1, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-connect ap id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 2996
    :cond_6
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 2997
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 2998
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 3001
    :cond_7
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3016
    :cond_8
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3018
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3019
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 3022
    :cond_9
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0
.end method
