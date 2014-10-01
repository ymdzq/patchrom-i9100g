.class public Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "ConnectivityLocationWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;,
        Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;,
        Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;,
        Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$GpsStateTracker;,
        Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;,
        Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;,
        Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static isAirplaneModeOn:I

.field private static isConnectivityModeOn:I

.field private static isSimStatusOff:I

.field private static mContext:Landroid/content/Context;

.field private static final sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static final sDataState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static final sGpsState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private static final sSyncState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;


# instance fields
.field private mDataObserver:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 70
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.OriginalSettings"

    const-string v2, "com.android.OriginalSettings.powersavingmode.ConnectivityLocationWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 73
    sput-object v3, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 103
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 105
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 107
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$GpsStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$GpsStateTracker;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 109
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 111
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 113
    sput v4, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    .line 115
    sput v4, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isConnectivityModeOn:I

    .line 117
    sput v4, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 121
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mDataObserver:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    .line 67
    return-void
.end method

.method static synthetic access$600()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-object p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$700(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getDataState(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900()Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    return-object v0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 630
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040028

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 632
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0b0050

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 634
    const v1, 0x7f0b0053

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 636
    const v1, 0x7f0b0057

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 638
    const v1, 0x7f0b005b

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 640
    const v1, 0x7f0b005f

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 642
    const v1, 0x7f0b0063

    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 645
    invoke-static {v0, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 646
    return-object v0
.end method

.method private static getDataState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1036
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1051
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1018
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1019
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 841
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 842
    const-class v1, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 843
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 845
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 846
    return-object v0
.end method

.method private static getOffState(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 1062
    sget-object v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v4

    .line 1063
    .local v4, wifiState:I
    sget-object v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    .line 1064
    .local v0, btState:I
    sget-object v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    .line 1065
    .local v1, dataState:I
    sget-object v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v3

    .line 1066
    .local v3, syncState:I
    sget-object v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v2

    .line 1071
    .local v2, gpsState:I
    if-eq v4, v5, :cond_1

    if-eq v4, v7, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v7, :cond_1

    if-ne v1, v5, :cond_0

    sget v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-nez v6, :cond_0

    sget v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    if-eqz v6, :cond_1

    :cond_0
    if-eq v3, v5, :cond_1

    if-ne v2, v5, :cond_2

    .line 1077
    :cond_1
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static getSync(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 971
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 972
    .local v0, sync:Z
    return v0
.end method

.method private mobileDataOffAlert(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 1114
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 1116
    .local v3, mMobileDataAlertLayout:Landroid/view/LayoutInflater;
    const v5, 0x7f040090

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1119
    .local v4, mMobileDataAlertView:Landroid/view/View;
    const v5, 0x7f0b018c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1121
    .local v2, mDisableAlertCheckBox:Landroid/widget/CheckBox;
    new-instance v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$1;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$1;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1135
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1136
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090825

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1137
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1138
    const v5, 0x104000a

    new-instance v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$2;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$2;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1144
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$3;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$3;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1149
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1151
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1152
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1153
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1154
    return-void
.end method

.method private toogleOffMode(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1081
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1083
    .local v1, connManager:Landroid/net/ConnectivityManager;
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1085
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    .line 1086
    .local v0, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    .line 1088
    .local v3, sync:Z
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getOffState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 1089
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-eq v5, v7, :cond_0

    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 1090
    :cond_0
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1092
    :cond_1
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-eq v5, v7, :cond_2

    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 1093
    :cond_2
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1095
    :cond_3
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 1096
    sget v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-nez v5, :cond_4

    sget v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    if-nez v5, :cond_4

    .line 1097
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1100
    :cond_4
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_5

    .line 1101
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1103
    :cond_5
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 1104
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1106
    new-instance v2, Landroid/content/Intent;

    const-string v5, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v2, intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1111
    .end local v2           #intent_widget:Landroid/content/Intent;
    :cond_6
    return-void
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 8
    .parameter "views"
    .parameter "context"

    .prologue
    const v7, 0x7f0202f3

    const v6, 0x7f0d001a

    const v5, 0x7f0202f2

    const/4 v4, 0x0

    const v3, 0x7f0d001b

    .line 670
    const v0, 0x7f0b0050

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 671
    const v0, 0x7f0b0053

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 672
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 673
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 674
    const v0, 0x7f0b0063

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 676
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 708
    :pswitch_0
    const-string v0, "ConnectivityLocationWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateButtons() : WiFi state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v2, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :goto_0
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getSync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 713
    const v0, 0x7f0b0064

    const v1, 0x7f0202fd

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 714
    const v0, 0x7f0b0065

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 715
    const v0, 0x7f0b0066

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 721
    :goto_1
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getGpsState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 722
    const v0, 0x7f0b0060

    const v1, 0x7f0202fb

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 723
    const v0, 0x7f0b0061

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 724
    const v0, 0x7f0b0062

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 730
    :goto_2
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getOffState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 731
    const v0, 0x7f0b0051

    const v1, 0x7f0202ff

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 732
    const v0, 0x7f0b0052

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 737
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    .line 739
    sput v4, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isConnectivityModeOn:I

    .line 769
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-nez v0, :cond_6

    .line 771
    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    .line 777
    :goto_4
    sget v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    sget v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 778
    :cond_1
    const v0, 0x7f0b005c

    const v1, 0x7f0202f8

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 779
    const v0, 0x7f0b005d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 780
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 793
    :goto_5
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 826
    :pswitch_1
    const-string v0, "ConnectivityLocationWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateButtons() : BT state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v2, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :goto_6
    return-void

    .line 678
    :pswitch_2
    const v0, 0x7f0b0054

    const v1, 0x7f020300

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 679
    const v0, 0x7f0b0055

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 681
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 684
    :pswitch_3
    const v0, 0x7f0b0054

    const v1, 0x7f020301

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 685
    const v0, 0x7f0b0055

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 687
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 695
    :pswitch_4
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 696
    const v0, 0x7f0b0054

    const v1, 0x7f020228

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 697
    const v0, 0x7f0b0055

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 699
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 701
    :cond_2
    const v0, 0x7f0b0054

    const v1, 0x7f020227

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 702
    const v0, 0x7f0b0055

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 704
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 717
    :cond_3
    const v0, 0x7f0b0064

    const v1, 0x7f0202fc

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 718
    const v0, 0x7f0b0065

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 719
    const v0, 0x7f0b0066

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    .line 726
    :cond_4
    const v0, 0x7f0b0060

    const v1, 0x7f0202fa

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 727
    const v0, 0x7f0b0061

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 728
    const v0, 0x7f0b0062

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 734
    :cond_5
    const v0, 0x7f0b0051

    const v1, 0x7f0202fe

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 735
    const v0, 0x7f0b0052

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_3

    .line 773
    :cond_6
    sput v4, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    goto/16 :goto_4

    .line 782
    :cond_7
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getDataState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 783
    const v0, 0x7f0b005c

    const v1, 0x7f0202f9

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 784
    const v0, 0x7f0b005d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 785
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 787
    :cond_8
    const v0, 0x7f0b005c

    const v1, 0x7f0202f8

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 788
    const v0, 0x7f0b005d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 789
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 795
    :pswitch_5
    const v0, 0x7f0b0058

    const v1, 0x7f0202f6

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 796
    const v0, 0x7f0b0059

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 798
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 801
    :pswitch_6
    const v0, 0x7f0b0058

    const v1, 0x7f0202f7

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 802
    const v0, 0x7f0b0059

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 804
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 812
    :pswitch_7
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 813
    const v0, 0x7f0b0058

    const v1, 0x7f0202f7

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 814
    const v0, 0x7f0b0059

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 816
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 818
    :cond_9
    const v0, 0x7f0b0058

    const v1, 0x7f0202f6

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 820
    const v0, 0x7f0b0059

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 822
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 676
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 793
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 655
    invoke-static {p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 658
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 659
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 660
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 622
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 623
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mDataObserver:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 624
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 610
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 611
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    .line 612
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mDataObserver:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 618
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const v10, 0x7f090eba

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 857
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 858
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, action:Ljava/lang/String;
    const-string v5, "ConnectivityLocationWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive : action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 861
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, p2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 949
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 950
    :cond_1
    return-void

    .line 862
    :cond_2
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 863
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, p2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 864
    :cond_3
    const-string v5, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 865
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, p2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 875
    :cond_4
    const-string v5, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 877
    :cond_5
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, p2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 879
    new-instance v3, Landroid/content/Intent;

    const-string v5, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 881
    .local v3, intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 882
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_6
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 883
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 884
    :cond_7
    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 885
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 886
    :cond_8
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 887
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 888
    :cond_9
    const-string v5, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 889
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 890
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 892
    .local v1, buttonId:I
    sget v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isConnectivityModeOn:I

    if-nez v5, :cond_0

    .line 893
    if-nez v1, :cond_a

    .line 894
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->toogleOffMode(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 895
    :cond_a
    if-ne v1, v9, :cond_c

    .line 896
    const-string v5, "CHM"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    sget v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-ne v5, v9, :cond_b

    .line 897
    invoke-static {p1, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 900
    :cond_b
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 902
    :cond_c
    const/4 v5, 0x2

    if-ne v1, v5, :cond_d

    .line 904
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 905
    :cond_d
    const/4 v5, 0x3

    if-ne v1, v5, :cond_11

    .line 906
    sget v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-eq v5, v9, :cond_e

    sget v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    if-ne v5, v9, :cond_f

    .line 907
    :cond_e
    sget v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-ne v5, v9, :cond_0

    .line 908
    invoke-static {p1, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 912
    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "quickpanel_mobiledata_checked"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 914
    .local v4, mChecked:I
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_10

    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getDataState(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v4, :cond_10

    .line 915
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mobileDataOffAlert(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 918
    :cond_10
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 921
    .end local v4           #mChecked:I
    :cond_11
    const/4 v5, 0x4

    if-ne v1, v5, :cond_12

    .line 922
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 924
    :cond_12
    const/4 v5, 0x5

    if-ne v1, v5, :cond_0

    .line 925
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 927
    new-instance v3, Landroid/content/Intent;

    const-string v5, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 929
    .restart local v3       #intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 938
    .end local v1           #buttonId:I
    .end local v2           #data:Landroid/net/Uri;
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED_FROM_WIDGET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 941
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 601
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 603
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 604
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_0
    return-void
.end method
