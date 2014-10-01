.class public Lcom/android/OriginalSettings/DataUsageSummary;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataRoamingFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmWarningFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/OriginalSettings/DataUsageSummary$AppItem;,
        Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;,
        Lcom/android/OriginalSettings/DataUsageSummary$CycleChangeItem;,
        Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field private static isSPR:Z

.field private static isVZW:Z

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private mAdapter:Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

.field private mAlertAtWarning:Landroid/widget/CheckBox;

.field private mAlertAtWarningListener:Landroid/view/View$OnClickListener;

.field private mAlertAtWarningView:Landroid/view/View;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

.field private mAppRestrict:Landroid/widget/CheckBox;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSettingsListener:Landroid/view/View$OnClickListener;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mBinding:Z

.field private mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/OriginalSettings/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/OriginalSettings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mConfirmAtBoot:Landroid/widget/CheckBox;

.field private mConfirmAtBootListener:Landroid/view/View$OnClickListener;

.field private mConfirmAtBootView:Landroid/view/View;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleView:Landroid/view/View;

.field private mDataEnabled:Landroid/widget/CheckBox;

.field private mDataEnabledListener:Landroid/view/View$OnClickListener;

.field private mDataEnabledView:Landroid/view/View;

.field private mDialog:Landroid/app/DialogFragment;

.field private mDisableAtLimit:Landroid/widget/CheckBox;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitView:Landroid/view/View;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentTab:Ljava/lang/String;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuAutoSync:Landroid/view/MenuItem;

.field private mMenuDataRoaming:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

.field private mUsageDisclaimer:Landroid/widget/TextView;

.field private mUsageSummary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 298
    sput-boolean v0, Lcom/android/OriginalSettings/DataUsageSummary;->isVZW:Z

    .line 301
    sput-boolean v0, Lcom/android/OriginalSettings/DataUsageSummary;->isSPR:Z

    .line 1617
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/OriginalSettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 1618
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/OriginalSettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/OriginalSettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 228
    iput v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    .line 266
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    .line 267
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    .line 272
    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    .line 278
    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 279
    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 291
    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 295
    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    .line 304
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/DataUsageSummary$1;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 839
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$4;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 854
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$5;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$5;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1246
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$6;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    .line 1285
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$7;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConfirmAtBootListener:Landroid/view/View$OnClickListener;

    .line 1299
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$8;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 1314
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$9;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarningListener:Landroid/view/View$OnClickListener;

    .line 1333
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$10;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 1349
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$11;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    .line 1359
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$12;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1373
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$13;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1467
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$14;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$14;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1498
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$15;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$15;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1551
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$16;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$16;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 2593
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/net/UidDetailProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/widget/ChartDataUsageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/net/ChartData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/OriginalSettings/DataUsageSummary;Lcom/android/OriginalSettings/net/ChartData;)Lcom/android/OriginalSettings/net/ChartData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAdapter:Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/OriginalSettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/OriginalSettings/DataUsageSummary;Lcom/android/OriginalSettings/DataUsageSummary$AppItem;)Lcom/android/OriginalSettings/DataUsageSummary$AppItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/net/NetworkPolicyEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$3200()Z
    .locals 1

    .prologue
    .line 169
    sget-boolean v0, Lcom/android/OriginalSettings/DataUsageSummary;->isSPR:Z

    return v0
.end method

.method static synthetic access$3300()Z
    .locals 1

    .prologue
    .line 169
    sget-boolean v0, Lcom/android/OriginalSettings/DataUsageSummary;->isVZW:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/OriginalSettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->setDataRoaming(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/OriginalSettings/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 786
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 790
    .local v0, transition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 791
    return-object v0
.end method

.method private buildLimitedNetworksList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2773
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2776
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2778
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 2779
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 2780
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2781
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2782
    const v2, 0x7f090823

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2784
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2785
    const v2, 0x7f090822

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2787
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2788
    const v0, 0x7f090821

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2792
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2793
    const v0, 0x7f09081e

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2795
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2796
    const v0, 0x7f09081f

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2799
    :cond_4
    return-object v1
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"
    .parameter "titleRes"

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/OriginalSettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2572
    const-string v0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 2573
    if-nez v0, :cond_0

    move-object v0, v1

    .line 2585
    :goto_0
    return-object v0

    .line 2575
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 2585
    goto :goto_0

    .line 2577
    :pswitch_0
    const-string v0, "3g"

    goto :goto_0

    .line 2579
    :pswitch_1
    const-string v0, "4g"

    goto :goto_0

    .line 2581
    :pswitch_2
    const-string v0, "mobile"

    goto :goto_0

    .line 2583
    :pswitch_3
    const-string v0, "wifi"

    goto :goto_0

    .line 2575
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 773
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 783
    :goto_0
    return-void

    .line 775
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/OriginalSettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 776
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/OriginalSettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 777
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/OriginalSettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 779
    invoke-static {}, Lcom/android/OriginalSettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 780
    .local v0, chartTransition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 781
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 782
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1622
    .line 1624
    sget-object v8, Lcom/android/OriginalSettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v8

    .line 1625
    :try_start_0
    sget-object v0, Lcom/android/OriginalSettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1626
    sget-object v1, Lcom/android/OriginalSettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 1628
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1546
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1547
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1548
    const-string v1, "test.subscriberid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 1103
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->appId:I

    .line 1104
    .local v0, appId:I
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getAppPolicy(I)I

    move-result v1

    .line 1105
    .local v1, uidPolicy:I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDataRoaming()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1079
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1080
    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hasLimitedNetworks()Z
    .locals 1

    .prologue
    .line 2748
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasReadyMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 2669
    const/4 v0, 0x0

    return v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2657
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2658
    .local v0, conn:Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2661
    .local v1, tele:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2692
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2693
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2738
    const v0, 0x7f04003e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2740
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2741
    return-object v0
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 2729
    const v0, 0x7f0400ab

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2730
    const v0, 0x1020018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2732
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2733
    return-object v1
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .parameter "view"
    .parameter "insetSide"

    .prologue
    .line 2807
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2808
    .local v1, selector:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2812
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2813
    .local v2, stub:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2814
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2816
    new-instance v3, Lcom/android/OriginalSettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/OriginalSettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2817
    new-instance v3, Lcom/android/OriginalSettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/OriginalSettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2818
    return-void
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1071
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1074
    :goto_0
    return v0

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1054
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobilePolicySplit()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1527
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1528
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1529
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1530
    .local v1, tele:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v2

    .line 1532
    .end local v1           #tele:Landroid/telephony/TelephonyManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .parameter "policy"

    .prologue
    .line 1066
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoamingArea()Z
    .locals 2

    .prologue
    .line 2844
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2845
    const-string v0, "oversea"

    const-string v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2847
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .parameter "restrictBackground"

    .prologue
    .line 1110
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->appId:I

    .line 1111
    .local v0, appId:I
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setAppPolicy(II)V

    .line 1113
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1114
    return-void

    .line 1111
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setDataRoaming(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1087
    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1088
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1089
    return-void

    .line 1087
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1061
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 1062
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1063
    return-void
.end method

.method private setMobilePolicySplit(Z)V
    .locals 4
    .parameter "split"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1538
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1539
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1540
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1541
    .local v1, tele:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->setMobilePolicySplit(Ljava/lang/String;Z)V

    .line 1543
    .end local v1           #tele:Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 2
    .parameter "limitBytes"

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 1040
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1041
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 2
    .parameter "warningBytes"

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 1034
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1035
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2834
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2835
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2836
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2837
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2825
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2826
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2827
    return-void
.end method

.method private updateAppDetail()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 965
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 966
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 967
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 969
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 970
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 971
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 982
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v2, v13}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 985
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    iget v6, v2, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->appId:I

    .line 986
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    invoke-virtual {v2, v6, v0}, Lcom/android/OriginalSettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/OriginalSettings/net/UidDetail;

    move-result-object v2

    .line 987
    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/android/OriginalSettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 989
    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 990
    iget-object v7, v2, Lcom/android/OriginalSettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    .line 991
    iget-object v7, v2, Lcom/android/OriginalSettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    array-length v8, v7

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_2

    aget-object v9, v7, v2

    .line 992
    iget-object v10, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-static {v5, v11, v9}, Lcom/android/OriginalSettings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 991
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 974
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 977
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1029
    :goto_1
    return-void

    .line 995
    :cond_1
    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v2, v2, Lcom/android/OriginalSettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v5, v8, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1000
    :cond_2
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 1001
    if-eqz v2, :cond_4

    array-length v5, v2

    if-lez v5, :cond_4

    .line 1002
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1003
    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    aget-object v2, v2, v1

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v4, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1007
    :goto_2
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1008
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1015
    :goto_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateDetailData()V

    .line 1017
    invoke-static {v6}, Landroid/os/UserId;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1019
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f090829

    invoke-static {v0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1020
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f09082a

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1023
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1006
    goto :goto_2

    .line 1011
    :cond_4
    iput-object v13, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1012
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 1027
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updateBody()V
    .locals 6

    .prologue
    const v5, 0x7f090819

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 868
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z

    .line 869
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 954
    :goto_0
    return-void

    .line 871
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 872
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 874
    if-nez v1, :cond_1

    .line 875
    const-string v0, "DataUsage"

    const-string v1, "no tab selected; hiding body"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 879
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 882
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 883
    :cond_2
    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 887
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 890
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 892
    const-string v2, "mobile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 893
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f090825

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 894
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-static {v1, v5}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 896
    sget-boolean v1, Lcom/android/OriginalSettings/DataUsageSummary;->isVZW:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/OriginalSettings/DataUsageSummary;->isSPR:Z

    if-eqz v1, :cond_4

    .line 897
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f090db4

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 901
    :goto_1
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const v2, 0x7f090db1

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 904
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 947
    :goto_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    invoke-static {v2, v3}, Lcom/android/OriginalSettings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/OriginalSettings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 951
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 953
    iput-boolean v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z

    goto/16 :goto_0

    .line 899
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f090812

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    goto :goto_1

    .line 906
    :cond_5
    const-string v2, "3g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 907
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f090826

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 908
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-static {v1, v5}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 909
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f090814

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 911
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_2

    .line 913
    :cond_6
    const-string v2, "4g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 914
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f090827

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 915
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-static {v1, v5}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 916
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f090813

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 918
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_2

    .line 920
    :cond_7
    const-string v0, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 922
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 923
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 924
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 928
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 930
    :cond_8
    const-string v0, "ethernet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 932
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 936
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 938
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 941
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown tab: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 14
    .parameter

    .prologue
    const-wide v9, 0x7fffffffffffffffL

    const-wide/high16 v4, -0x8000

    const/4 v11, 0x0

    .line 1180
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;

    .line 1181
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->clear()V

    .line 1183
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1187
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    if-eqz v0, :cond_8

    .line 1188
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v7

    .line 1189
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    .line 1192
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1193
    cmp-long v0, v7, v9

    if-nez v0, :cond_7

    move-wide v9, v12

    .line 1194
    :goto_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const-wide/16 v2, 0x1

    add-long v7, v12, v2

    .line 1197
    :goto_2
    if-eqz p1, :cond_5

    .line 1199
    invoke-static {v7, v8, p1}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    move v0, v11

    .line 1202
    :goto_3
    cmp-long v2, v4, v9

    if-lez v2, :cond_0

    .line 1203
    invoke-static {v4, v5, p1}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 1204
    const-string v0, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generating cs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to ce="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " waiting for hs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v12, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1208
    const/4 v0, 0x1

    move-wide v4, v2

    .line 1209
    goto :goto_3

    .line 1212
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1215
    :goto_4
    if-nez v0, :cond_2

    move-wide v4, v7

    .line 1218
    :goto_5
    cmp-long v0, v4, v9

    if-lez v0, :cond_1

    .line 1219
    const-wide v2, 0x90321000L

    sub-long v2, v4, v2

    .line 1220
    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v7, v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    move-wide v4, v2

    .line 1222
    goto :goto_5

    .line 1224
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v11}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1228
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1229
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v6}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;)I

    move-result v3

    .line 1230
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1234
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;

    .line 1235
    invoke-static {v0, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1236
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1244
    :goto_6
    return-void

    .line 1239
    :cond_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateDetailData()V

    goto :goto_6

    .line 1242
    :cond_4
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateDetailData()V

    goto :goto_6

    :cond_5
    move v0, v11

    goto :goto_4

    :cond_6
    move-wide v7, v2

    goto/16 :goto_2

    :cond_7
    move-wide v9, v7

    goto/16 :goto_1

    :cond_8
    move-wide v2, v4

    move-wide v7, v9

    goto/16 :goto_0
.end method

.method private updateDetailData()V
    .locals 15

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v1

    .line 1415
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v3

    .line 1416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1418
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 1420
    const/4 v7, 0x0

    .line 1421
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1424
    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v9, v11

    .line 1425
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 1426
    iget-wide v11, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v11, v13

    .line 1428
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    const/16 v7, 0xaf

    invoke-virtual {v0, v7}, Lcom/android/OriginalSettings/widget/PieChartView;->setOriginAngle(I)V

    .line 1430
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/PieChartView;->removeAllSlices()V

    .line 1431
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    const-string v7, "#d88d3a"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v11, v12, v7}, Lcom/android/OriginalSettings/widget/PieChartView;->addSlice(JI)V

    .line 1432
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    const-string v7, "#666666"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v9, v10, v7}, Lcom/android/OriginalSettings/widget/PieChartView;->addSlice(JI)V

    .line 1434
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/PieChartView;->generatePath()V

    .line 1436
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1437
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    invoke-static {v8, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1440
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1442
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1454
    :goto_0
    if-eqz v7, :cond_2

    iget-wide v5, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v5, v9

    .line 1455
    :goto_1
    invoke-static {v8, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1456
    invoke-static {v8, v1, v2, v3, v4}, Lcom/android/OriginalSettings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    .line 1459
    const v2, 0x7f090841

    .line 1461
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-virtual {p0, v2, v4}, Lcom/android/OriginalSettings/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1464
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->ensureLayoutTransitions()V

    .line 1465
    return-void

    .line 1445
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    if-eqz v0, :cond_1

    .line 1446
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1450
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v6, v1, v2, v3, v4}, Lcom/android/OriginalSettings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v6

    iget-object v9, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v5, v6, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1454
    :cond_2
    const-wide/16 v5, 0x0

    goto :goto_1
.end method

.method private updatePolicy(Z)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, -0x1

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1121
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1129
    :goto_0
    const-string v0, "mobile"

    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1130
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z

    .line 1131
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1132
    iput-boolean v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 1143
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1144
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    if-eqz v3, :cond_6

    iget-wide v5, v3, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1147
    sget-boolean v0, Lcom/android/OriginalSettings/DataUsageSummary;->isVZW:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/OriginalSettings/DataUsageSummary;->isSPR:Z

    if-eqz v0, :cond_7

    .line 1148
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    :goto_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    if-eqz v3, :cond_8

    iget-wide v4, v3, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1154
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1167
    :cond_3
    :goto_4
    if-eqz p1, :cond_4

    .line 1169
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 1171
    :cond_4
    return-void

    .line 1125
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 1145
    goto :goto_1

    .line 1150
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_8
    move v1, v2

    .line 1152
    goto :goto_3

    .line 1160
    :cond_9
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_4
.end method

.method private updateTabs()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 800
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 801
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 803
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v3

    .line 804
    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 805
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "3g"

    const v5, 0x7f090822

    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 806
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "4g"

    const v5, 0x7f090821

    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 810
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 811
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "wifi"

    const v5, 0x7f09081e

    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 813
    :cond_1
    iget-boolean v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "ethernet"

    const v4, 0x7f09081f

    invoke-direct {p0, v3, v4}, Lcom/android/OriginalSettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 817
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 818
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v3

    if-le v3, v1, :cond_6

    .line 819
    :goto_2
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v1, :cond_7

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 820
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 821
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 823
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateBody()V

    .line 827
    :goto_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 834
    :cond_3
    :goto_5
    return-void

    .line 807
    :cond_4
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 808
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "mobile"

    const v5, 0x7f090820

    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 817
    goto :goto_1

    :cond_6
    move v1, v2

    .line 818
    goto :goto_2

    .line 819
    :cond_7
    const/16 v2, 0x8

    goto :goto_3

    .line 825
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_4

    .line 828
    :cond_9
    if-eqz v0, :cond_3

    .line 830
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateBody()V

    goto :goto_5
.end method


# virtual methods
.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    .line 2704
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 2705
    .local v6, conn:Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 2708
    .local v10, hasEthernet:Z
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 2710
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 2721
    .local v8, ethernetBytes:J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2713
    .end local v8           #ethernetBytes:J
    :catch_0
    move-exception v7

    .line 2714
    .local v7, e:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2717
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8       #ethernetBytes:J
    goto :goto_0

    .line 2721
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 590
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 591
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateBody()V

    .line 592
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 311
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 315
    .local v0, context:Landroid/content/Context;
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, sSalesCode:Ljava/lang/String;
    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sput-boolean v6, Lcom/android/OriginalSettings/DataUsageSummary;->isVZW:Z

    .line 319
    :cond_0
    const-string v2, "SPR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput-boolean v6, Lcom/android/OriginalSettings/DataUsageSummary;->isSPR:Z

    .line 322
    :cond_1
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 324
    const-string v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 326
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 327
    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    .line 329
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "data_usage"

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 331
    new-instance v2, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v2, v3}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    .line 332
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->read()V

    .line 334
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "show_wifi"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    .line 335
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "show_ethernet"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    .line 338
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 339
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    .line 340
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    .line 344
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 345
    iput-boolean v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    .line 346
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "show_wifi"

    iget-boolean v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 350
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 353
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 355
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 597
    const/high16 v0, 0x7f12

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 598
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 361
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 362
    .local v0, context:Landroid/content/Context;
    const v6, 0x7f040046

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 364
    .local v5, view:Landroid/view/View;
    new-instance v6, Lcom/android/OriginalSettings/net/UidDetailProvider;

    invoke-direct {v6, v0}, Lcom/android/OriginalSettings/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    .line 367
    :try_start_0
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v6}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    const v6, 0x1020012

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabHost;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 373
    const v6, 0x7f0b00af

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 374
    const v6, 0x1020013

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabWidget;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 375
    const v6, 0x102000a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 379
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v6

    const/high16 v7, 0x200

    if-ne v6, v7, :cond_3

    const/4 v4, 0x1

    .line 381
    .local v4, shouldInset:Z
    :goto_0
    if-eqz v4, :cond_4

    .line 382
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0030

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    .line 389
    :goto_1
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v7, 0x1

    invoke-static {p2, v5, v6, v7}, Lcom/android/OriginalSettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 391
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->setup()V

    .line 392
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 394
    const v6, 0x7f040044

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 395
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 397
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 398
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 400
    iget v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    if-lez v6, :cond_0

    .line 402
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    invoke-static {v6, v7}, Lcom/android/OriginalSettings/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 403
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 408
    :cond_0
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b00aa

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 410
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b00ab

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 412
    new-instance v6, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    .line 413
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 414
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 415
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 416
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    invoke-static {p1, v6, v7}, Lcom/android/OriginalSettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 417
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setClickable(Z)V

    .line 418
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 419
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 422
    new-instance v6, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/CheckBox;

    .line 423
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 424
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 425
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/CheckBox;

    invoke-static {p1, v6, v7}, Lcom/android/OriginalSettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    .line 426
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setClickable(Z)V

    .line 427
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 428
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConfirmAtBootListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    new-instance v6, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    .line 434
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 435
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 436
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-static {p1, v6, v7}, Lcom/android/OriginalSettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 437
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setClickable(Z)V

    .line 438
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 439
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 443
    new-instance v6, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    .line 444
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 445
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 446
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 447
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    invoke-static {p1, v6, v7}, Lcom/android/OriginalSettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    .line 448
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setClickable(Z)V

    .line 449
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 450
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarningListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    sget-boolean v6, Lcom/android/OriginalSettings/DataUsageSummary;->isVZW:Z

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/android/OriginalSettings/DataUsageSummary;->isSPR:Z

    if-eqz v6, :cond_2

    .line 452
    :cond_1
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 458
    :cond_2
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b00a0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 459
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v7, 0x7f0b00a1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 460
    new-instance v6, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-direct {v6, v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    .line 461
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 462
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 464
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b0096

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    .line 465
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v6, v7}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->setListener(Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 466
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 468
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    const-wide v7, 0x18fff00000L

    const-wide v9, 0x1900000000L

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->setMaximumSetableValue(JJ)V

    .line 473
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b00a2

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 474
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b00a3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 475
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b00a4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 476
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b00a7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/OriginalSettings/widget/PieChartView;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    .line 477
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b00a5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 478
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b00a6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 479
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b00a9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 481
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b00a8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 482
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    new-instance v6, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    .line 485
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 486
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 487
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-static {p1, v6, v7}, Lcom/android/OriginalSettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 488
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setClickable(Z)V

    .line 489
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 490
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b00ac

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    .line 495
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b00ad

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUsageDisclaimer:Landroid/widget/TextView;

    .line 496
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 497
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUsageDisclaimer:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    :goto_2
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x1020004

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 504
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b00ae

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 505
    .local v2, mUpgBtn:Landroid/widget/Button;
    new-instance v6, Lcom/android/OriginalSettings/DataUsageSummary$2;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/DataUsageSummary$2;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 518
    .local v3, sSalesCode:Ljava/lang/String;
    const-string v6, "TMB"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 519
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b00ad

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090810

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    :goto_3
    new-instance v6, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    iget v8, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    invoke-direct {v6, v7, v8}, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;-><init>(Lcom/android/OriginalSettings/net/UidDetailProvider;I)V

    iput-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAdapter:Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

    .line 526
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 527
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAdapter:Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 529
    return-object v5

    .line 368
    .end local v2           #mUpgBtn:Landroid/widget/Button;
    .end local v3           #sSalesCode:Ljava/lang/String;
    .end local v4           #shouldInset:Z
    :catch_0
    move-exception v1

    .line 369
    .local v1, e:Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 379
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 385
    .restart local v4       #shouldInset:Z
    :cond_4
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    goto/16 :goto_1

    .line 500
    :cond_5
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUsageDisclaimer:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 521
    .restart local v2       #mUpgBtn:Landroid/widget/Button;
    .restart local v3       #sSalesCode:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v8, 0x7f0b00ae

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 748
    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 749
    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    .line 750
    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 752
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/net/UidDetailProvider;->clearCache()V

    .line 753
    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    .line 755
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 757
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "appDetails"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 764
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 765
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 686
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v7, v6

    .line 743
    :goto_0
    return v7

    .line 688
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    .line 689
    :goto_1
    if-eqz v0, :cond_1

    .line 690
    invoke-static {p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataRoamingFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    goto :goto_0

    :cond_0
    move v0, v6

    .line 688
    goto :goto_1

    .line 693
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/DataUsageSummary;->setDataRoaming(Z)V

    goto :goto_0

    .line 698
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    .line 699
    :goto_2
    if-eqz v0, :cond_4

    .line 700
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasLimitedNetworks()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 701
    invoke-static {p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    goto :goto_0

    :cond_2
    move v0, v6

    .line 698
    goto :goto_2

    .line 703
    :cond_3
    invoke-static {p0}, Lcom/android/OriginalSettings/DataUsageSummary$DeniedRestrictFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    goto :goto_0

    .line 707
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 712
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    move v6, v7

    .line 713
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/DataUsageSummary;->setMobilePolicySplit(Z)V

    .line 714
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 715
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 719
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    move v6, v7

    :cond_6
    iput-boolean v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    .line 720
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_wifi"

    iget-boolean v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 721
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 722
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 726
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    move v6, v7

    :cond_7
    iput-boolean v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    .line 727
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_ethernet"

    iget-boolean v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 728
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 729
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateTabs()V

    goto/16 :goto_0

    .line 733
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 734
    const-class v1, Lcom/android/OriginalSettings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090843

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 739
    :pswitch_6
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_8

    move v6, v7

    :cond_8
    invoke-static {p0, v6}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;Z)V

    goto/16 :goto_0

    .line 686
    :pswitch_data_0
    .packed-switch 0x7f0b041f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 602
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 603
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v4

    .line 605
    const v0, 0x7f0b041f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    .line 606
    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    move v0, v1

    :goto_0
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 607
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v5, "CscFeature_Common_UseChameleon"

    invoke-virtual {v0, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    const-string v0, "persist.sys.roaming_menu"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getDataRoaming()Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 616
    const v0, 0x7f0b0420

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 617
    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    move v0, v1

    :goto_1
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 618
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v5}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 620
    const v0, 0x7f0b0422

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    .line 621
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 624
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_1

    .line 625
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v5, "enterprise_policy"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_2

    .line 629
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 631
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 632
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 637
    :goto_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v0

    .line 638
    if-eqz v0, :cond_2

    .line 639
    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v0

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 644
    :cond_2
    const v0, 0x7f0b0421

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 645
    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v4, :cond_7

    move v0, v1

    :goto_3
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 646
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v0

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 648
    const v0, 0x7f0b0423

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 649
    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 650
    if-nez v4, :cond_8

    move v0, v1

    :goto_4
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 651
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 656
    :goto_5
    const v0, 0x7f0b0424

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 657
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 658
    if-nez v4, :cond_a

    move v0, v1

    :goto_6
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 659
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 664
    :goto_7
    const v0, 0x7f0b0425

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 665
    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 666
    :cond_3
    if-nez v4, :cond_c

    :goto_8
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 671
    :goto_9
    const v0, 0x7f0b0426

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 673
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0908fe

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 674
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 675
    const/high16 v1, 0x1080

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 677
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 678
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 682
    :goto_a
    return-void

    :cond_4
    move v0, v2

    .line 606
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 617
    goto/16 :goto_1

    .line 635
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_7
    move v0, v2

    .line 645
    goto/16 :goto_3

    :cond_8
    move v0, v2

    .line 650
    goto :goto_4

    .line 653
    :cond_9
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_a
    move v0, v2

    .line 658
    goto :goto_6

    .line 661
    :cond_b
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    :cond_c
    move v1, v2

    .line 666
    goto :goto_8

    .line 668
    :cond_d
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9

    .line 680
    :cond_e
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_a
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 534
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 537
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 538
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 542
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateTabs()V

    .line 545
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v2, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 549
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_1

    .line 550
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 551
    .local v1, rp:Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_1

    .line 552
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 553
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 554
    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 555
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 556
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 565
    .end local v1           #rp:Landroid/app/enterprise/RestrictionPolicy;
    :cond_1
    :goto_0
    new-instance v2, Lcom/android/OriginalSettings/DataUsageSummary$3;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/DataUsageSummary$3;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/android/OriginalSettings/DataUsageSummary$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 585
    return-void

    .line 558
    .restart local v1       #rp:Landroid/app/enterprise/RestrictionPolicy;
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .parameter "restrictBackground"

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1096
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1100
    :cond_0
    return-void
.end method
