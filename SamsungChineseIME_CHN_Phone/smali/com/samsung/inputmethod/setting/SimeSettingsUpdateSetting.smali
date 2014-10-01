.class public Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;
.super Landroid/preference/PreferenceActivity;
.source "SimeSettingsUpdateSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final DIALOG_RESET_TO_DEFAULT:I = 0x1

.field private static final DIALOG_UPDATE_NO_SELECTION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SimeSettingsUpdateSettings"


# instance fields
.field private mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

.field private mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

.field private mDbType:[I

.field private mEnglishUpdate:Landroid/preference/CheckBoxPreference;

.field private mHKChineseUpdate:Landroid/preference/CheckBoxPreference;

.field private mPopularWordUpdate:Landroid/preference/CheckBoxPreference;

.field private mResetToDefault:Landroid/preference/Preference;

.field private mSChineseUpdate:Landroid/preference/CheckBoxPreference;

.field private mTWChineseUpdate:Landroid/preference/CheckBoxPreference;

.field prefrenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    .line 55
    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbType:[I

    .line 179
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->prefrenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mTWChineseUpdate:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbType:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mHKChineseUpdate:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mSChineseUpdate:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mEnglishUpdate:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mPopularWordUpdate:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->showAlertDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->setDbSummary()V

    return-void
.end method

.method private setDbSummary()V
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->imIsHKTWModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mTWChineseUpdate:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0127

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->setDbSummary(Landroid/preference/Preference;I)V

    .line 229
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mHKChineseUpdate:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0128

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->setDbSummary(Landroid/preference/Preference;I)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mSChineseUpdate:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0129

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->setDbSummary(Landroid/preference/Preference;I)V

    .line 232
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mEnglishUpdate:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b012a

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->setDbSummary(Landroid/preference/Preference;I)V

    .line 233
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mPopularWordUpdate:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b012b

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->setDbSummary(Landroid/preference/Preference;I)V

    .line 235
    return-void
.end method

.method private setDbSummary(Landroid/preference/Preference;I)V
    .locals 3
    .parameter "pref"
    .parameter "keyID"

    .prologue
    const v2, 0x7f0b007a

    .line 238
    const/4 v0, 0x7

    .line 240
    .local v0, dbType:I
    packed-switch p2, :pswitch_data_0

    .line 273
    :goto_0
    return-void

    .line 243
    :pswitch_0
    const/4 v0, 0x1

    .line 272
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->dbGetUpdateDate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 247
    :pswitch_1
    const/4 v0, 0x3

    .line 248
    goto :goto_1

    .line 251
    :pswitch_2
    const/4 v0, 0x2

    .line 252
    goto :goto_1

    .line 255
    :pswitch_3
    const/4 v0, 0x0

    .line 256
    goto :goto_1

    .line 259
    :pswitch_4
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->imIsHKTWModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->dbGetPopularDbUpdateDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :cond_0
    const/4 v0, 0x4

    .line 267
    goto :goto_1

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0127
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private showAlertDialog(I)V
    .locals 3
    .parameter "dialogType"

    .prologue
    const v2, 0x7f0b0043

    .line 275
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b006e

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 277
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 279
    packed-switch p1, :pswitch_data_0

    .line 310
    :goto_0
    return-void

    .line 281
    :pswitch_0
    const v1, 0x7f0b0086

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 309
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 285
    :pswitch_1
    const v1, 0x7f0b0088

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 286
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$2;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$2;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 298
    const v1, 0x7f0b0032

    new-instance v2, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$3;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$3;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v2, 0x7f040008

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->addPreferencesFromResource(I)V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 71
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 72
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 78
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const v2, 0x7f0b0127

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mTWChineseUpdate:Landroid/preference/CheckBoxPreference;

    .line 81
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mTWChineseUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    const v2, 0x7f0b0128

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mHKChineseUpdate:Landroid/preference/CheckBoxPreference;

    .line 85
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mHKChineseUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->imIsHKTWModel()Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mTWChineseUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mHKChineseUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    :cond_1
    const v2, 0x7f0b0129

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mSChineseUpdate:Landroid/preference/CheckBoxPreference;

    .line 95
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mSChineseUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    const v2, 0x7f0b012a

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mEnglishUpdate:Landroid/preference/CheckBoxPreference;

    .line 99
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mEnglishUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    const v2, 0x7f0b012b

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mPopularWordUpdate:Landroid/preference/CheckBoxPreference;

    .line 103
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mPopularWordUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    const v2, 0x7f0b012c

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mResetToDefault:Landroid/preference/Preference;

    .line 106
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mResetToDefault:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->prefrenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    .line 110
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getDbSettings()Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    .line 113
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 120
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 315
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 320
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 317
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->finish()V

    .line 318
    const/4 v0, 0x1

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 126
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, keys:Ljava/lang/String;
    const v1, 0x7f0b0129

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->setDbupdateLanuageChinese(Z)V

    .line 176
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 159
    .restart local p2
    :cond_1
    const v1, 0x7f0b0128

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->setDbupdateLanuageChineseHK(Z)V

    goto :goto_0

    .line 163
    .restart local p2
    :cond_2
    const v1, 0x7f0b0127

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->setDbupdateLanuageChineseTW(Z)V

    goto :goto_0

    .line 167
    .restart local p2
    :cond_3
    const v1, 0x7f0b012a

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 169
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->setDbupdateLanuageEng(Z)V

    goto :goto_0

    .line 171
    .restart local p2
    :cond_4
    const v1, 0x7f0b012b

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->setDbupdatePopularDB(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mSChineseUpdate:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdateLanguageChinese()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->imIsHKTWModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mTWChineseUpdate:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdateLanguageChineseTW()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 136
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mHKChineseUpdate:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdateLanguageChineseHK()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mEnglishUpdate:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdateLanguageEng()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 140
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mPopularWordUpdate:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdatePopularDB()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 142
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    if-eqz v0, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->setDbSummary()V

    .line 146
    :cond_1
    return-void
.end method
