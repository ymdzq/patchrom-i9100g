.class public Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;
.super Landroid/preference/PreferenceActivity;
.source "SimeSettingsUpdate.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final DIALOG_UPDATE_AUTOMATIC_UPDATING:I = 0x7

.field private static final DIALOG_UPDATE_CONNECT_ATTENTION:I = 0x9

.field private static final DIALOG_UPDATE_CONNECT_ERROR:I = 0x8

.field private static final DIALOG_UPDATE_FAILED:I = 0x2

.field private static final DIALOG_UPDATE_GOTO_SETTING:I = 0x0

.field private static final DIALOG_UPDATE_NETWORK_DOWN:I = 0x4

.field private static final DIALOG_UPDATE_NOTIFICATION_ATTENTION:I = 0xa

.field private static final DIALOG_UPDATE_NO_NETWORK:I = 0x3

.field private static final DIALOG_UPDATE_SAME_VERSION:I = 0x5

.field private static final DIALOG_UPDATE_SUCCESSFUL:I = 0x1

.field private static final DIALOG_UPDATE_TIMEOUT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SimeSettingsUpdate"


# instance fields
.field getNoticeclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mAutoUpdateListPref:Landroid/preference/ListPreference;

.field private mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

.field private mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

.field private mDbType:[I

.field private mDbUpdateActionPref:Landroid/preference/Preference;

.field private mDbUpdateHandler:Landroid/os/Handler;

.field private mDbUpdateSettingsPref:Landroid/preference/Preference;

.field private mGetNoticePref:Landroid/preference/CheckBoxPreference;

.field private mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field upgradeActionclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field upgradesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    .line 66
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbType:[I

    .line 68
    iput-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 81
    iput-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 82
    iput-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$2;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$2;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->upgradesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 149
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$3;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$3;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->upgradeActionclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 165
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$4;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$4;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getNoticeclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 240
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->bInDownloadingProcess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->dissmissProgrocessDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->setDbTypeArray()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbType:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->showAlertDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->dbUpdatePrepare()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mGetNoticePref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->showProgrocessDialog()V

    return-void
.end method

.method private bInDownloadingProcess()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dbUpdatePrepare()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->isWLANConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbType:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->dBUpdate([II)I

    .line 202
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->checkNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->showAlertDialog(I)V

    goto :goto_0

    .line 199
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->showAlertDialog(I)V

    goto :goto_0
.end method

.method private dissmissProgrocessDialog()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 308
    :cond_0
    return-void
.end method

.method private selectAutoUpdateFrequencyList(Landroid/preference/ListPreference;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 460
    const/high16 v0, 0x7f06

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 461
    const v0, 0x7f060001

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 462
    return-void
.end method

.method private selectAutoUpdateFrequencySummary(Landroid/preference/ListPreference;I)V
    .locals 2
    .parameter "listType"
    .parameter "itemId"

    .prologue
    .line 467
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 469
    .local v0, values:[Ljava/lang/CharSequence;
    if-ltz p2, :cond_0

    const/4 v1, 0x3

    if-gt p2, v1, :cond_0

    .line 470
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 472
    :cond_0
    return-void
.end method

.method private setDbTypeArray()V
    .locals 5

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 207
    .local v1, index:I
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->imIsHKTWModel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdateLanguageChineseTW()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbType:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    const/4 v4, 0x3

    aput v4, v3, v1

    move v1, v2

    .line 213
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdateLanguageChineseHK()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbType:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    const/4 v4, 0x2

    aput v4, v3, v1

    move v1, v2

    .line 218
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdateLanguageChinese()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbType:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    const/4 v4, 0x1

    aput v4, v3, v1

    move v1, v2

    .line 222
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdateLanguageEng()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 223
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbType:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    const/4 v4, 0x0

    aput v4, v3, v1

    move v1, v2

    .line 226
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdatePopularDB()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 228
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbType:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    const/4 v4, 0x4

    aput v4, v3, v1

    .line 230
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->imIsHKTWModel()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 231
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbType:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    const/4 v4, 0x5

    aput v4, v3, v2

    .line 232
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbType:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    const/4 v4, 0x6

    aput v4, v3, v1

    :cond_4
    move v1, v2

    .line 236
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_5
    move v0, v1

    .local v0, i:I
    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_6

    .line 237
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbType:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_6
    return-void
.end method

.method private setGetNoticeEnable(I)V
    .locals 2
    .parameter "nDbAutoUpdate"

    .prologue
    .line 476
    if-nez p1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mGetNoticePref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mGetNoticePref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showAlertDialog(I)V
    .locals 6
    .parameter "dialogType"

    .prologue
    const v5, 0x7f0b007b

    const v4, 0x7f0b0043

    const v3, 0x7f0b0032

    const v2, 0x1080027

    .line 346
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 347
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b006e

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 348
    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 350
    packed-switch p1, :pswitch_data_0

    .line 458
    :goto_0
    :pswitch_0
    return-void

    .line 353
    :pswitch_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 354
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 355
    const v1, 0x7f0b007d

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 356
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$8;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$8;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 363
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$9;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$9;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 457
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 372
    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 373
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 374
    const v1, 0x7f0b007c

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 375
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$10;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$10;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 381
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$11;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$11;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 390
    :pswitch_3
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 391
    const v1, 0x7f0b0086

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 392
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$12;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$12;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 401
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$13;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$13;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 411
    :pswitch_4
    const v1, 0x7f0b0080

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 415
    :pswitch_5
    const v1, 0x7f0b007f

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 419
    :pswitch_6
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 420
    const v1, 0x7f0b0084

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 421
    const v1, 0x7f0b0085

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 422
    const v1, 0x7f0b0089

    new-instance v2, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$14;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$14;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$15;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$15;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 439
    :pswitch_7
    const v1, 0x7f0b007e

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 443
    :pswitch_8
    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 447
    :pswitch_9
    const v1, 0x7f0b008b

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 451
    :pswitch_a
    const v1, 0x7f0b0081

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 350
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private showProgrocessDialog()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 312
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->dissmissProgrocessDialog()V

    .line 314
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 315
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b006e

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b0082

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 318
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 320
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 322
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 323
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f0b0032

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$6;

    invoke-direct {v3, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$6;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$7;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$7;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 342
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 343
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v2, 0x7f040007

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->addPreferencesFromResource(I)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 92
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 93
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 97
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const v2, 0x7f0b0125

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbUpdateSettingsPref:Landroid/preference/Preference;

    .line 98
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbUpdateSettingsPref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->upgradesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 100
    const v2, 0x7f0b0123

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbUpdateActionPref:Landroid/preference/Preference;

    .line 101
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbUpdateActionPref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->upgradeActionclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 103
    const v2, 0x7f0b0124

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mAutoUpdateListPref:Landroid/preference/ListPreference;

    .line 104
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mAutoUpdateListPref:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->selectAutoUpdateFrequencyList(Landroid/preference/ListPreference;)V

    .line 105
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mAutoUpdateListPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    const v2, 0x7f0b0126

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mGetNoticePref:Landroid/preference/CheckBoxPreference;

    .line 108
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mGetNoticePref:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getNoticeclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 109
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mGetNoticePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    .line 112
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getDbSettings()Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    .line 115
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 116
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    new-instance v2, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$1;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$1;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 486
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 487
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 533
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 538
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 535
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->finish()V

    .line 536
    const/4 v0, 0x1

    goto :goto_0

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 491
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 492
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->dissmissProgrocessDialog()V

    .line 493
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->setUIHandler(Landroid/os/Handler;)V

    .line 494
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 511
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, keys:Ljava/lang/String;
    const v2, 0x7f0b0124

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 516
    .local v0, itemId:I
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->setAutoUpdateFrequencyMode(I)V

    .line 517
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mAutoUpdateListPref:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->selectAutoUpdateFrequencySummary(Landroid/preference/ListPreference;I)V

    .line 518
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getAutoUpdateFrequencyMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->setGetNoticeEnable(I)V

    .line 527
    .end local v0           #itemId:I
    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 521
    .restart local p2
    :cond_1
    const v2, 0x7f0b0126

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 498
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 500
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mAutoUpdateListPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getAutoUpdateFrequencyMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mAutoUpdateListPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getAutoUpdateFrequencyMode()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->selectAutoUpdateFrequencySummary(Landroid/preference/ListPreference;I)V

    .line 503
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mGetNoticePref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getGetDbNotice()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 504
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getAutoUpdateFrequencyMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->setGetNoticeEnable(I)V

    .line 506
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->setUIHandler(Landroid/os/Handler;)V

    .line 507
    return-void
.end method
