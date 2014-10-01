.class public Lcom/android/OriginalSettings/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/OriginalSettings/ButtonBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/Settings$BackupAssistantPlusSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$TetherSettingsActivity2;,
        Lcom/android/OriginalSettings/Settings$ContextualPageHelpActivity;,
        Lcom/android/OriginalSettings/Settings$CustomizableKeySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$HomeSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$GlobalRoamingSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$NfcSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$PowerSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DormantmodeSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$EasyModeSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$PenHelpFragmentActivity;,
        Lcom/android/OriginalSettings/Settings$PenSettingsMenuActivity;,
        Lcom/android/OriginalSettings/Settings$SoftwareUpdateSettingActivity;,
        Lcom/android/OriginalSettings/Settings$AllShareCastSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DualClockSettingActivity;,
        Lcom/android/OriginalSettings/Settings$SBeamSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$NearbySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$MotionSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DataUsageSummaryActivity;,
        Lcom/android/OriginalSettings/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$CryptSDCardSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AccountSyncSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$PowerUsageSummaryActivity;,
        Lcom/android/OriginalSettings/Settings$RunningServicesActivity;,
        Lcom/android/OriginalSettings/Settings$DockSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$PrivacySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$LocationSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$SecuritySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AccessibilitySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DevelopmentSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$StorageUseActivity;,
        Lcom/android/OriginalSettings/Settings$ManageApplicationsActivity;,
        Lcom/android/OriginalSettings/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$PowerSavingModeSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$LockScreenSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$LockscreenMenuActivity;,
        Lcom/android/OriginalSettings/Settings$DisplaySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$SoundSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$UserDictionarySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$LocalePickerActivity;,
        Lcom/android/OriginalSettings/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$KeyboardLayoutPickerActivity;,
        Lcom/android/OriginalSettings/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WifiP2pSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WifiApSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WifiSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$StorageSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DateTimeSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$VpnSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$TetherSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WirelessSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$BluetoothSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$HeaderAdapter;
    }
.end annotation


# static fields
.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private final MHS_REQUEST:I

.field private SETTINGS_FOR_RESTRICTED:[I

.field private mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mEnableUserManagement:Z

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mListeningToAccountUpdates:Z

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mTetheredData:I

.field private mTopLevelHeaderId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 129
    iput v1, p0, Lcom/android/OriginalSettings/Settings;->MHS_REQUEST:I

    .line 142
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    .line 152
    iput-boolean v1, p0, Lcom/android/OriginalSettings/Settings;->mEnableUserManagement:Z

    .line 153
    iput v1, p0, Lcom/android/OriginalSettings/Settings;->mTetheredData:I

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 1494
    return-void

    .line 142
    :array_0
    .array-data 0x4
        0xect 0x3t 0xbt 0x7ft
        0xeft 0x3t 0xbt 0x7ft
        0xf8t 0x3t 0xbt 0x7ft
        0xf9t 0x3t 0xbt 0x7ft
        0x6t 0x4t 0xbt 0x7ft
        0xct 0x4t 0xbt 0x7ft
        0x1et 0x4t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/Settings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/Settings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/OriginalSettings/Settings;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method private getMetaData()V
    .locals 3

    .prologue
    .line 898
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 900
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.OriginalSettings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/Settings;->mTopLevelHeaderId:I

    .line 902
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.OriginalSettings.FRAGMENT_CLASS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 905
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.OriginalSettings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 906
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.OriginalSettings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    if-eqz v0, :cond_0

    .line 908
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v2, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 909
    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v0, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 910
    if-eqz v1, :cond_0

    .line 911
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 914
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private highlightHeader(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 405
    if-eqz p1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 407
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 409
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 412
    .end local v0           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const v12, 0x7f0907a2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 811
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v5

    .line 812
    new-instance v6, Ljava/util/ArrayList;

    array-length v0, v5

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 813
    array-length v7, v5

    move v4, v2

    :goto_0
    if-ge v4, v7, :cond_8

    aget-object v8, v5, v4

    .line 814
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v8}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 817
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v9, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v3, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 818
    const-string v3, "com.android.tmo_myphonebook"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 819
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 824
    :goto_1
    if-nez v3, :cond_1

    .line 813
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 828
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 829
    array-length v0, v9

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v8}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 833
    :goto_3
    array-length v10, v9

    if-lez v10, :cond_3

    const-string v10, "com.facebook.auth.login"

    aget-object v11, v9, v2

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 834
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v10, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v0, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 835
    if-eqz v0, :cond_2

    array-length v0, v0

    if-gtz v0, :cond_0

    :cond_2
    move v0, v2

    .line 843
    :cond_3
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 844
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 845
    iget-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v11, :cond_4

    .line 846
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 848
    :cond_4
    if-eqz v0, :cond_7

    .line 849
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 850
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 851
    const-class v0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 852
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 854
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v3, "account_type"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v3, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 856
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v3, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 871
    :cond_5
    :goto_4
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move v0, v2

    .line 829
    goto :goto_3

    .line 859
    :cond_7
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 860
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 861
    const-class v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 862
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 863
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_5

    .line 867
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v8, "account_label"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 875
    :cond_8
    new-instance v0, Lcom/android/OriginalSettings/Settings$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/Settings$2;-><init>(Lcom/android/OriginalSettings/Settings;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 882
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 883
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p2, v2

    goto :goto_5

    .line 885
    :cond_9
    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_a

    .line 886
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 887
    iput-boolean v1, p0, Lcom/android/OriginalSettings/Settings;->mListeningToAccountUpdates:Z

    .line 889
    :cond_a
    return p2

    :cond_b
    move-object v3, v0

    goto/16 :goto_1
.end method

.method private isOrangeCustomer()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1422
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ReplaceLabel4DeveloperOptionAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1428
    :cond_0
    :goto_0
    return v0

    .line 1425
    :cond_1
    const-string v1, "ORANGE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ReplaceLabel4DeveloperOptionAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1426
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 301
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .parameter "className"

    .prologue
    .line 352
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 354
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 355
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 357
    .local v5, parentInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 358
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.OriginalSettings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 360
    .local v2, fragmentTitle:Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 361
    .local v4, parentHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 362
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 363
    iput-object v4, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 365
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 366
    iget v7, p0, Lcom/android/OriginalSettings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/Settings;->highlightHeader(I)V

    .line 368
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 369
    iget-object v7, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.OriginalSettings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 371
    iget-object v7, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.OriginalSettings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v1           #fragmentClass:Ljava/lang/String;
    .end local v2           #fragmentTitle:Ljava/lang/CharSequence;
    .end local v4           #parentHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #parentInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v3

    .line 374
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 536
    move v1, v2

    .line 537
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 538
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 540
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v5, v5

    .line 541
    const v3, 0x7f0b0405

    if-ne v5, v3, :cond_3

    .line 785
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/android/OriginalSettings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_29

    .line 787
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 798
    :cond_1
    :goto_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2c

    .line 800
    iget-object v3, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 802
    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 804
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    .line 807
    goto :goto_0

    .line 543
    :cond_3
    const v3, 0x7f0b0415

    if-ne v5, v3, :cond_4

    .line 544
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->needsDockSettings()Z

    move-result v3

    if-nez v3, :cond_0

    .line 545
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 546
    :cond_4
    const v3, 0x7f0b03f2

    if-eq v5, v3, :cond_5

    const v3, 0x7f0b0401

    if-ne v5, v3, :cond_6

    .line 547
    :cond_5
    invoke-static {p0, p1, v0}, Lcom/android/OriginalSettings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto :goto_1

    .line 548
    :cond_6
    const v3, 0x7f0b03ec

    if-ne v5, v3, :cond_7

    .line 550
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "android.hardware.wifi"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 551
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 561
    :cond_7
    const v3, 0x7f0b03ed

    if-ne v5, v3, :cond_8

    .line 564
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 566
    :cond_8
    const v3, 0x7f0b03ee

    if-ne v5, v3, :cond_9

    .line 580
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 582
    :cond_9
    const v3, 0x7f0b03f1

    if-ne v5, v3, :cond_b

    .line 584
    const-string v3, "LGT"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {p0}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 586
    :cond_a
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 588
    :cond_b
    const v3, 0x7f0b03ef

    if-ne v5, v3, :cond_c

    .line 590
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "android.hardware.bluetooth"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 591
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 593
    :cond_c
    const v3, 0x7f0b03fa

    if-ne v5, v3, :cond_d

    .line 594
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 596
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 598
    :cond_d
    const v3, 0x7f0b03f0

    if-ne v5, v3, :cond_e

    .line 600
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    .line 603
    :try_start_0
    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 604
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 606
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 609
    :cond_e
    const v3, 0x7f0b040f

    if-eq v5, v3, :cond_0

    .line 613
    const v3, 0x7f0b0410

    if-ne v5, v3, :cond_f

    .line 615
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 617
    :cond_f
    const v3, 0x7f0b0411

    if-ne v5, v3, :cond_10

    .line 619
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 621
    :cond_10
    const v3, 0x7f0b03f5

    if-eq v5, v3, :cond_0

    .line 625
    const v3, 0x7f0b03fd

    if-eq v5, v3, :cond_0

    .line 629
    const v3, 0x7f0b040d

    if-ne v5, v3, :cond_11

    .line 636
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 652
    :cond_11
    const v3, 0x7f0b03fe

    if-ne v5, v3, :cond_12

    .line 654
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 656
    :cond_12
    const v3, 0x7f0b040c

    if-ne v5, v3, :cond_13

    .line 658
    add-int/lit8 v1, v1, 0x1

    .line 659
    invoke-direct {p0, p1, v1}, Lcom/android/OriginalSettings/Settings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v1

    goto/16 :goto_1

    .line 661
    :cond_13
    const v3, 0x7f0b0414

    if-ne v5, v3, :cond_14

    .line 663
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 665
    :cond_14
    const v3, 0x7f0b0408

    if-ne v5, v3, :cond_15

    .line 667
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 669
    :cond_15
    const v3, 0x7f0b0412

    if-ne v5, v3, :cond_16

    .line 672
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 674
    :cond_16
    const v3, 0x7f0b0413

    if-ne v5, v3, :cond_17

    .line 677
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 679
    :cond_17
    const v3, 0x7f0b0403

    if-ne v5, v3, :cond_19

    .line 680
    iget-boolean v3, p0, Lcom/android/OriginalSettings/Settings;->mEnableUserManagement:Z

    if-eqz v3, :cond_18

    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0c0007

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 684
    :cond_18
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 686
    :cond_19
    const v3, 0x7f0b040a

    if-ne v5, v3, :cond_1a

    .line 691
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 693
    :cond_1a
    const v3, 0x7f0b041d

    if-ne v5, v3, :cond_1b

    .line 694
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 696
    const-string v6, "SPR"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "BST"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 698
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 700
    :cond_1b
    const v3, 0x7f0b041c

    if-ne v5, v3, :cond_1c

    .line 703
    :try_start_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "com.sprint.dsa"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 709
    :goto_4
    if-nez v3, :cond_0

    .line 710
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 704
    :catch_1
    move-exception v3

    move v3, v2

    .line 705
    goto :goto_4

    .line 712
    :cond_1c
    const v3, 0x7f0b03fb

    if-ne v5, v3, :cond_1d

    .line 714
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 716
    :cond_1d
    const v3, 0x7f0b0402

    if-ne v5, v3, :cond_1f

    .line 717
    const-string v3, "DCM"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 718
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 722
    :cond_1e
    :try_start_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "com.nttdocomo.android.docomoset"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 723
    :catch_2
    move-exception v3

    .line 724
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 727
    :cond_1f
    const v3, 0x7f0b041a

    if-ne v5, v3, :cond_20

    .line 729
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->isOrangeCustomer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 730
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 732
    :cond_20
    const v3, 0x7f0b041b

    if-ne v5, v3, :cond_21

    .line 734
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->isOrangeCustomer()Z

    move-result v3

    if-nez v3, :cond_0

    .line 735
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 737
    :cond_21
    const v3, 0x7f0b03f7

    if-ne v5, v3, :cond_22

    .line 740
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 742
    :cond_22
    const v3, 0x7f0b0407

    if-ne v5, v3, :cond_24

    .line 743
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v4, :cond_23

    .line 744
    :cond_23
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 748
    :cond_24
    const v3, 0x7f0b03eb

    if-ne v5, v3, :cond_25

    .line 749
    const-string v3, "VZW"

    sget-object v6, Lcom/android/OriginalSettings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 750
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 753
    :cond_25
    const v3, 0x7f0b03ea

    if-ne v5, v3, :cond_26

    .line 756
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 758
    :cond_26
    const v3, 0x7f0b03e9

    if-ne v5, v3, :cond_27

    .line 761
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 763
    :cond_27
    const v3, 0x7f0b03ff

    if-eq v5, v3, :cond_0

    .line 767
    const v3, 0x7f0b03f4

    if-ne v5, v3, :cond_28

    .line 769
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 771
    :cond_28
    const v3, 0x7f0b0419

    if-eq v5, v3, :cond_0

    .line 775
    const v3, 0x7f0b03f3

    if-eq v5, v3, :cond_0

    .line 779
    const v3, 0x7f0b0416

    if-ne v5, v3, :cond_0

    .line 781
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 788
    :cond_29
    const v3, 0x7f0b0417

    if-ne v5, v3, :cond_2a

    .line 789
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 790
    :cond_2a
    const v3, 0x7f0b03f6

    if-ne v5, v3, :cond_1

    .line 791
    const-string v3, "VZW"

    sget-object v6, Lcom/android/OriginalSettings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 793
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 808
    :cond_2b
    return-void

    :cond_2c
    move v0, v1

    goto/16 :goto_3
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 1363
    invoke-static {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1366
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/guide/GuideFragmentCallback;

    .line 1369
    if-eqz v0, :cond_2

    .line 1371
    invoke-interface {v0, p1}, Lcom/android/OriginalSettings/guide/GuideFragmentCallback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1375
    :goto_0
    return v0

    .line 1371
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1375
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 416
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 417
    .local v4, superIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, startingFragment:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 421
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 422
    .local v2, modIntent:Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 424
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 425
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0           #args:Landroid/os/Bundle;
    .local v1, args:Landroid/os/Bundle;
    move-object v0, v1

    .line 429
    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 430
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 433
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 427
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v2       #modIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #args:Landroid/os/Bundle;
    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 433
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 926
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 453
    :cond_0
    :goto_0
    return-object v0

    .line 443
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 446
    :cond_2
    const-string v1, "com.android.OriginalSettings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.OriginalSettings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.OriginalSettings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    :cond_3
    const-class v0, Lcom/android/OriginalSettings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 921
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 1356
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->invalidateHeaders()V

    .line 1357
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 930
    const-string v0, "WifiAp_Settings"

    const-string v1, "Settings onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    if-nez p1, :cond_0

    .line 932
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 933
    instance-of v1, v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 934
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 935
    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->setSoftapEnabled(Z)V

    .line 941
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 1398
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 1401
    instance-of v0, p1, Lcom/android/OriginalSettings/guide/GuideFragment;

    if-eqz v0, :cond_0

    .line 1402
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->setEnablerForGuide()V

    .line 1405
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 530
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f070061

    invoke-virtual {p0, v0, p1}, Lcom/android/OriginalSettings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 532
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/Settings;->updateHeaderList(Ljava/util/List;)V

    .line 533
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 478
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v1

    .line 482
    const-class v0, Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/UserDictionarySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/deviceinfo/Memory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/WirelessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/SoundSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/PrivacySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    :cond_0
    const-string v0, "settings:remove_ui_options"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 496
    :cond_1
    invoke-static {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 498
    const-class v0, Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 499
    const-class v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 501
    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    .line 502
    :cond_2
    const-string v0, "settings:guide_is_on"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 505
    :cond_3
    const/4 v0, 0x0

    .line 507
    if-eqz v2, :cond_6

    .line 508
    const-string v0, "wifi"

    .line 516
    :cond_4
    :goto_0
    const-string v2, "settings:guide_mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    :cond_5
    const-class v0, Lcom/android/OriginalSettings/SubSettings;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 522
    return-object v1

    .line 510
    :cond_6
    if-nez v3, :cond_7

    const-class v2, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 512
    :cond_7
    const-string v0, "bt"

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings:remove_ui_options"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setUiOptions(I)V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multiuser_enabled"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 171
    iput-boolean v5, p0, Lcom/android/OriginalSettings/Settings;->mEnableUserManagement:Z

    .line 174
    :cond_1
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/Settings;->sSalesCode:Ljava/lang/String;

    .line 175
    new-instance v0, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    .line 176
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 177
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v4}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 189
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->getMetaData()V

    .line 190
    iput-boolean v5, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 191
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    iput-boolean v3, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 196
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget v0, p0, Lcom/android/OriginalSettings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/Settings;->highlightHeader(I)V

    .line 204
    const v0, 0x7f09012e

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/Settings;->setTitle(I)V

    .line 208
    :cond_2
    if-eqz p1, :cond_3

    .line 209
    const-string v0, "com.android.OriginalSettings.CURRENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 210
    const-string v0, "com.android.OriginalSettings.PARENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 214
    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v4}, Lcom/android/OriginalSettings/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_5

    .line 220
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/OriginalSettings/Settings$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/Settings$1;-><init>(Lcom/android/OriginalSettings/Settings;)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/OriginalSettings/Settings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 228
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 232
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 233
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 234
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 236
    :cond_6
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 292
    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 295
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 462
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 464
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 465
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 466
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 467
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 468
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 472
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 6
    .parameter "header"
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 1312
    const/4 v0, 0x0

    .line 1313
    .local v0, revert:Z
    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b040e

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1314
    const/4 v0, 0x1

    .line 1319
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 1321
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_2

    .line 1322
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v1, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/Settings;->highlightHeader(I)V

    .line 1326
    :goto_1
    return-void

    .line 1315
    :cond_1
    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b03eb

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {v5}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1316
    iput-object v5, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto :goto_0

    .line 1324
    :cond_2
    iput-object p1, p0, Lcom/android/OriginalSettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1381
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1384
    .local v0, retval:Z
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_0

    .line 1389
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->finish()V

    .line 1390
    const/4 v0, 0x1

    .line 1393
    :cond_0
    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 381
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 384
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    .line 390
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 395
    :cond_0
    invoke-static {p0, p1}, Lcom/android/OriginalSettings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 397
    invoke-static {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->setEnablerForGuide()V

    .line 402
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 283
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 284
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 285
    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->pause()V

    .line 287
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1331
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 1332
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/OriginalSettings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    const v3, 0x7f09044f

    .line 1335
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/OriginalSettings/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1337
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 263
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 264
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 265
    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->resume()V

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->invalidateHeaders()V

    .line 270
    invoke-static {}, Lcom/android/OriginalSettings/guide/GuideFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    :goto_0
    invoke-static {p0, v1}, Lcom/android/OriginalSettings/guide/GuideFragment;->setSelectedSection(Landroid/app/Activity;Landroid/preference/PreferenceActivity$Header;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->setEnablerForGuide()V

    .line 277
    :cond_1
    return-void

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 243
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "com.android.OriginalSettings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 247
    const-string v0, "com.android.OriginalSettings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 249
    :cond_1
    return-void
.end method

.method public setEnablerForGuide()V
    .locals 1

    .prologue
    .line 1413
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v0, :cond_0

    .line 1415
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->setEnablersForGuide(Lcom/android/OriginalSettings/Settings;)V

    .line 1417
    :cond_0
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 1346
    if-nez p1, :cond_0

    .line 1347
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1351
    :goto_0
    return-void

    .line 1349
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getHeaders()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    .line 1341
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/OriginalSettings/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2
    .parameter "header"

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_0

    .line 306
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 307
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 309
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 312
    invoke-static {}, Lcom/android/OriginalSettings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-static {p0, p1}, Lcom/android/OriginalSettings/guide/GuideFragment;->setSelectedSection(Landroid/app/Activity;Landroid/preference/PreferenceActivity$Header;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->setEnablerForGuide()V

    .line 319
    :cond_1
    return-void
.end method
