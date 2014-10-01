.class public Lcom/samsung/inputmethod/setting/SimeSettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "SimeSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;
.implements Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;
.implements Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final DIALOG_CLEAN_USER_DATA:I = 0x1

.field private static final DIALOG_COLOR_PICK:I = 0x2

.field private static final DIALOG_DEFINE_OFF:I = 0x0

.field private static final DIALOG_INPUT_LANGUAGE_CHECK:I = 0x5

.field private static final DIALOG_LINE_GRADEENT_STYLE_PICK:I = 0x4

.field private static final DIALOG_LINE_STYLE_PICK:I = 0x3

.field private static final DIALOG_RESET_SETTING:I = 0x6

.field public static final PREFERENCE_KEY_FUZZY_SETTINGS:Ljava/lang/String; = "setting_fuzzy_pinyin_input_key"

.field public static final PREFERENCE_KEY_HANDWRITE_SETTINGS:Ljava/lang/String; = "setting_handwrite_summary_key"

.field public static final PREFERENCE_KEY_LANGUAGE_SETTINGS:Ljava/lang/String; = "setting_language_summary_key"

.field private static final TAG:Ljava/lang/String; = "SamsungIMESettingsActivity"

.field private static mInstance:Lcom/samsung/inputmethod/setting/SimeSettingActivity;


# instance fields
.field private final GET_CODE:I

.field dbUpdateclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field fuzzysettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field handwritesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field languagesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mAutoCapitalizationPref:Landroid/preference/CheckBoxPreference;

.field private mAutoFullStopPref:Landroid/preference/CheckBoxPreference;

.field private mCharPreviewPref:Landroid/preference/CheckBoxPreference;

.field private mErrorCorrectionPref:Landroid/preference/CheckBoxPreference;

.field private mHWLineGradient:[I

.field private mHWLineProperty:[I

.field private mHWRecgType:I

.field private mInputLanguage:Landroid/preference/PreferenceScreen;

.field private mInputModePrefSet:Landroid/preference/PreferenceCategory;

.field private mInputModeType:I

.field private mIsLineGradient:Z

.field private mKeySoundPref:Landroid/preference/CheckBoxPreference;

.field private mLanguageChineseHkPref:Landroid/preference/CheckBoxPreference;

.field private mLanguageChinesePref:Landroid/preference/CheckBoxPreference;

.field private mLanguageChineseTwPref:Landroid/preference/CheckBoxPreference;

.field private mLanguageEnglishPref:Landroid/preference/CheckBoxPreference;

.field private mLanguageKoreanPref:Landroid/preference/CheckBoxPreference;

.field private mLanguageSummary:Ljava/lang/CharSequence;

.field private mLanguageText:[Ljava/lang/CharSequence;

.field private mLinkToContactsPref:Landroid/preference/CheckBoxPreference;

.field private mOneHandModePref:Landroid/preference/CheckBoxPreference;

.field private mPointingKeyboardPref:Landroid/preference/CheckBoxPreference;

.field private mPortraitChineseInput:Landroid/preference/ListPreference;

.field private mPortraitEnglishInput:Landroid/preference/ListPreference;

.field private mPortraitHongkongInput:Landroid/preference/ListPreference;

.field private mPortraitKoreanInput:Landroid/preference/ListPreference;

.field private mPortraitTaiwanInput:Landroid/preference/ListPreference;

.field private mPredictionPref:Landroid/preference/CheckBoxPreference;

.field private mPreference:Landroid/preference/Preference;

.field private mResetSetting:Landroid/preference/Preference;

.field private mSpaceInputPref:Landroid/preference/CheckBoxPreference;

.field private mSwipePointkeyboard:Landroid/preference/Preference;

.field private mSwipePointkeyboardIndex:I

.field private mVersionContent:Landroid/preference/PreferenceCategory;

.field private mVibratePref:Landroid/preference/CheckBoxPreference;

.field private mVoiceInputPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineProperty:[I

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->GET_CODE:I

    .line 385
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity$1;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->languagesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 394
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity$2;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->fuzzysettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 403
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity$3;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->handwritesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 413
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity$4;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->dbUpdateclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private SetSwipeOnKeyboardSummary(Landroid/preference/Preference;I)V
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 1024
    packed-switch p2, :pswitch_data_0

    .line 1035
    :goto_0
    return-void

    .line 1026
    :pswitch_0
    const v0, 0x7f0b0160

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 1029
    :pswitch_1
    const v0, 0x7f0b0161

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 1032
    :pswitch_2
    const v0, 0x7f0b0162

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 1024
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/setting/SimeSettingActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->setOneHandMode(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateWidgets()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/setting/SimeSettingActivity;Landroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->SetSwipeOnKeyboardSummary(Landroid/preference/Preference;I)V

    return-void
.end method

.method public static getInstance()Lcom/samsung/inputmethod/setting/SimeSettingActivity;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInstance:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    invoke-direct {v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInstance:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    .line 131
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInstance:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    return-object v0
.end method

.method private getOneHandMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1015
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_samsungkeypad_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1016
    .local v0, iOneHandMode:I
    if-ne v0, v1, :cond_0

    .line 1019
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private selectInputModeList(Landroid/preference/ListPreference;)V
    .locals 6
    .parameter "list"

    .prologue
    const v5, 0x7f06000f

    const v4, 0x7f06000e

    const v3, 0x7f06000b

    const v2, 0x7f06000a

    .line 447
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHWMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 450
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 451
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 467
    :goto_0
    return-void

    .line 452
    :cond_0
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHWMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 455
    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 456
    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 457
    :cond_1
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v0, :cond_2

    .line 458
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 459
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 460
    :cond_2
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_3

    .line 461
    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 462
    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 464
    :cond_3
    const v0, 0x7f060010

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 465
    const v0, 0x7f060011

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0
.end method

.method private selectInputModeType(Landroid/preference/ListPreference;I)V
    .locals 1
    .parameter "listType"
    .parameter "layoutId"

    .prologue
    .line 470
    packed-switch p2, :pswitch_data_0

    .line 484
    :goto_0
    return-void

    .line 472
    :pswitch_0
    const v0, 0x7f0b0049

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 475
    :pswitch_1
    const v0, 0x7f0b004a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 478
    :pswitch_2
    const v0, 0x7f0b004b

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 481
    :pswitch_3
    const v0, 0x7f0b004c

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private selectInputModeType(Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;I)V
    .locals 1
    .parameter "listType"
    .parameter "layoutId"

    .prologue
    .line 486
    packed-switch p2, :pswitch_data_0

    .line 500
    :goto_0
    return-void

    .line 488
    :pswitch_0
    const v0, 0x7f0b0049

    invoke-virtual {p1, v0}, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->setSummary(I)V

    goto :goto_0

    .line 491
    :pswitch_1
    const v0, 0x7f0b004a

    invoke-virtual {p1, v0}, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->setSummary(I)V

    goto :goto_0

    .line 494
    :pswitch_2
    const v0, 0x7f0b004b

    invoke-virtual {p1, v0}, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->setSummary(I)V

    goto :goto_0

    .line 497
    :pswitch_3
    const v0, 0x7f0b004c

    invoke-virtual {p1, v0}, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->setSummary(I)V

    goto :goto_0

    .line 486
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setLanguageSummary()V
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageText:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    .line 425
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageText:[Ljava/lang/CharSequence;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    .line 428
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageText:[Ljava/lang/CharSequence;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    .line 432
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->imIsHKTWModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 433
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageText:[Ljava/lang/CharSequence;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    .line 436
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageText:[Ljava/lang/CharSequence;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputLanguage:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method

.method private setOneHandMode(Z)V
    .locals 3
    .parameter "bUseOneHand"

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "onehand_samsungkeypad_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1012
    return-void

    .line 1010
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateHWModeSummary(I)I
    .locals 4
    .parameter "layoutID"

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 690
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHWMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-ne p1, v1, :cond_1

    move p1, v0

    .line 696
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 692
    .restart local p1
    :cond_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHWMode()I

    move-result v2

    if-nez v2, :cond_0

    if-ne p1, v0, :cond_0

    move p1, v1

    .line 693
    goto :goto_0
.end method

.method private updateWidgets()V
    .locals 3

    .prologue
    .line 876
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mKeySoundPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getKeySound()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 877
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getVibrate()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 878
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPredictionPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPrediction()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 879
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSpaceInputPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpaceKeyInputAssociate()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 880
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mVoiceInputPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getVoiceInput()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 882
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mAutoFullStopPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getAutoFullStop()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 883
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLinkToContactsPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLinkToContacts()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 884
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPointingKeyboardPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPointingKeyboard()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 885
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->GetSwipeOnKeyboard()I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    .line 886
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetSwipeOnKeyboard(I)V

    .line 887
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mOneHandModePref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getOneHandMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 888
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mErrorCorrectionPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getErrorCorrect()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 889
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mCharPreviewPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getCharPreview()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 892
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLayoutId(I)I

    move-result v0

    .line 893
    .local v0, layoutId:I
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateHWModeSummary(I)I

    move-result v0

    .line 895
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    .line 896
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 897
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 901
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mAutoCapitalizationPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getAutoCapitalization()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 911
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateInputModeList()V

    .line 912
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->setLanguageSummary()V

    .line 913
    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineProperty:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 652
    return-void
.end method

.method public displayInputModeList()V
    .locals 7

    .prologue
    const v6, 0x7f0b00bd

    const v5, 0x7f0b00bb

    const v4, 0x7f0b00ba

    const/4 v3, 0x0

    const v2, 0x7f03000f

    .line 504
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->imIsHKTWModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 505
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 507
    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    .line 509
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    if-nez v0, :cond_1

    .line 511
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModeType:I

    .line 514
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    .line 515
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    const v1, 0x7f0b0153

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 518
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 520
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 521
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 522
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 523
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 529
    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    .line 531
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    if-nez v0, :cond_3

    .line 533
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModeType:I

    .line 536
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    .line 537
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    const v1, 0x7f0b0151

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 540
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 542
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 543
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 544
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 545
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 552
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 553
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 554
    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    .line 556
    :cond_4
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 557
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    if-nez v0, :cond_5

    .line 558
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModeType:I

    .line 561
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    .line 562
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    const v1, 0x7f0b014f

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 565
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->imIsHKTWModel()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 566
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 567
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 573
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 574
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 575
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 580
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    if-eqz v0, :cond_6

    .line 581
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 582
    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    .line 584
    :cond_6
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 585
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    if-nez v0, :cond_7

    .line 586
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    .line 587
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    const v1, 0x7f0b0152

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 590
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    const v1, 0x7f0b00be

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 591
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    const v1, 0x7f0b00be

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 592
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 593
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 594
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 597
    :cond_7
    return-void

    .line 570
    :cond_8
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 571
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    goto :goto_0
.end method

.method public lineChanged(I)V
    .locals 2
    .parameter "line"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineProperty:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 656
    return-void
.end method

.method public lineGradientChanged(III)V
    .locals 2
    .parameter "scolor"
    .parameter "mcolor"
    .parameter "ecolor"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 660
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 661
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 662
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const v5, 0x7f040003

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->addPreferencesFromResource(I)V

    .line 139
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 140
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 141
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 144
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFilesDir()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->setFilesDir(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->setLibraryDir(Ljava/lang/String;)V

    .line 148
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->isHandwriteInit()Z

    move-result v5

    if-nez v5, :cond_2

    .line 153
    sget-object v5, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    const/16 v6, 0x6ff

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getConvert()I

    move-result v7

    int-to-short v7, v7

    invoke-static {v5, v6, v8, v7}, Lcom/samsung/inputmethod/SimeDecoderService;->hwInitEngine(Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;CCI)V

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 188
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const-string v5, "setting_language_summary_key"

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    .line 189
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->languagesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 190
    const-string v5, "setting_fuzzy_pinyin_input_key"

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    .line 191
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->fuzzysettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 192
    const-string v5, "setting_handwrite_summary_key"

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    .line 193
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->handwritesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 195
    const v5, 0x7f0b015d

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mVoiceInputPref:Landroid/preference/CheckBoxPreference;

    .line 198
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isVoiceInstalled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 199
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mVoiceInputPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    :cond_3
    const v5, 0x7f0b015e

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    .line 204
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->GetSwipeOnKeyboard()I

    move-result v5

    iput v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    .line 206
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    if-eqz v5, :cond_4

    .line 207
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    iget v6, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    invoke-direct {p0, v5, v6}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->SetSwipeOnKeyboardSummary(Landroid/preference/Preference;I)V

    .line 209
    :cond_4
    const v5, 0x7f0b014d

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    .line 212
    const v5, 0x7f0b013f

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputLanguage:Landroid/preference/PreferenceScreen;

    .line 277
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageText:[Ljava/lang/CharSequence;

    .line 281
    const v5, 0x7f0b0156

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mResetSetting:Landroid/preference/Preference;

    .line 282
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mResetSetting:Landroid/preference/Preference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 285
    const v5, 0x7f0b0158

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mKeySoundPref:Landroid/preference/CheckBoxPreference;

    .line 287
    const v5, 0x7f0b015c

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mVibratePref:Landroid/preference/CheckBoxPreference;

    .line 289
    const v5, 0x7f0b0154

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPredictionPref:Landroid/preference/CheckBoxPreference;

    .line 291
    const v5, 0x7f0b0159

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSpaceInputPref:Landroid/preference/CheckBoxPreference;

    .line 293
    const v5, 0x7f0b011c

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mAutoFullStopPref:Landroid/preference/CheckBoxPreference;

    .line 295
    const v5, 0x7f0b0144

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLinkToContactsPref:Landroid/preference/CheckBoxPreference;

    .line 297
    const v5, 0x7f0b014e

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPointingKeyboardPref:Landroid/preference/CheckBoxPreference;

    .line 300
    const v5, 0x7f0b00b5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mOneHandModePref:Landroid/preference/CheckBoxPreference;

    .line 302
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mOneHandModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 304
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ONE_HAND_FEATURE:Z

    if-nez v5, :cond_5

    .line 305
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mOneHandModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 308
    :cond_5
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CONTACT_ACCESS_FEATURE:Z

    if-nez v5, :cond_6

    .line 309
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLinkToContactsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 313
    :cond_6
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPointingKeyboardPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 314
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_POINTING_KEYBOARD_FEATURE:Z

    if-nez v5, :cond_7

    .line 316
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 319
    :cond_7
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    if-eqz v5, :cond_8

    .line 320
    const v5, 0x7f0b0130

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 321
    .local v2, othersCategory:Landroid/preference/PreferenceCategory;
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 324
    .end local v2           #othersCategory:Landroid/preference/PreferenceCategory;
    :cond_8
    const v5, 0x7f0b0155

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mErrorCorrectionPref:Landroid/preference/CheckBoxPreference;

    .line 326
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mErrorCorrectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 328
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_AUTOCORRECTION_FEATURE:Z

    if-eqz v5, :cond_9

    .line 329
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mErrorCorrectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 332
    :cond_9
    const v5, 0x7f0b011b

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mAutoCapitalizationPref:Landroid/preference/CheckBoxPreference;

    .line 334
    const v5, 0x7f0b011d

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mCharPreviewPref:Landroid/preference/CheckBoxPreference;

    .line 337
    const v5, 0x7f0b0150

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    .line 338
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 340
    invoke-virtual {v3, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 343
    const v5, 0x7f0b0122

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    .line 344
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->dbUpdateclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 346
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DB_UPDATE_ONLINE:Z

    if-nez v5, :cond_a

    .line 347
    const v5, 0x7f0b0149

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 348
    .restart local v2       #othersCategory:Landroid/preference/PreferenceCategory;
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 351
    .end local v2           #othersCategory:Landroid/preference/PreferenceCategory;
    :cond_a
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6, p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    .line 353
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->getInstance(Landroid/content/SharedPreferences;)Lcom/samsung/inputmethod/setting/SimeSetting;

    .line 355
    const v5, 0x7f0b011a

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updatePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V

    .line 357
    invoke-static {v8}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLayoutId(I)I

    move-result v1

    .line 358
    .local v1, layoutId:I
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    .line 359
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 361
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->displayInputModeList()V

    .line 366
    new-instance v4, Lcom/samsung/inputmethod/setting/SimeVersionInfo;

    invoke-direct {v4, p0}, Lcom/samsung/inputmethod/setting/SimeVersionInfo;-><init>(Landroid/content/Context;)V

    .line 367
    .local v4, versionInfo:Lcom/samsung/inputmethod/setting/SimeVersionInfo;
    const v5, 0x7f0b0117

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->getSimeVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 369
    const v5, 0x7f0b0116

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mVersionContent:Landroid/preference/PreferenceCategory;

    .line 374
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineProperty:[I

    invoke-static {v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLine([I)V

    .line 375
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    invoke-static {v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLineGradient([I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mIsLineGradient:Z

    .line 378
    sput-object p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInstance:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    .line 381
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "id"

    .prologue
    const v1, 0x7f0b001b

    const/4 v10, 0x0

    const/4 v4, 0x0

    const v2, 0x7f0b0037

    const/4 v5, 0x1

    .line 917
    packed-switch p1, :pswitch_data_0

    .line 989
    :goto_0
    return-object v10

    .line 924
    :pswitch_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 925
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 926
    if-nez p1, :cond_1

    .line 927
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity$5;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V

    invoke-virtual {v7, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 931
    const v1, 0x7f0b005f

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 966
    :cond_0
    :goto_1
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 967
    .local v10, dialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 932
    .end local v10           #dialog:Landroid/app/AlertDialog;
    :cond_1
    if-ne v5, p1, :cond_2

    .line 933
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity$6;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V

    invoke-virtual {v7, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 941
    const v1, 0x7f0b0032

    invoke-virtual {v7, v1, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 942
    const v1, 0x7f0b006b

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 947
    :cond_2
    const/4 v1, 0x6

    if-ne v1, p1, :cond_0

    .line 948
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity$7;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V

    invoke-virtual {v7, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 961
    const v1, 0x7f0b0032

    invoke-virtual {v7, v1, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 962
    const v1, 0x7f0b00c3

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 969
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v9, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineProperty:[I

    aget v1, v1, v5

    invoke-direct {v9, p0, p0, v1}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;I)V

    .local v9, colorDialog:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
    move-object v10, v9

    .line 970
    goto :goto_0

    .line 972
    .end local v9           #colorDialog:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
    :pswitch_2
    new-instance v12, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineProperty:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineProperty:[I

    aget v2, v2, v5

    invoke-direct {v12, p0, p0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;II)V

    .local v12, lineStyleDialog:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;
    move-object v10, v12

    .line 973
    goto :goto_0

    .line 975
    .end local v12           #lineStyleDialog:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;
    :pswitch_3
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineProperty:[I

    aget v3, v1, v4

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    aget v4, v1, v4

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    aget v5, v1, v5

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    const/4 v2, 0x2

    aget v6, v1, v2

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;IIII)V

    .local v0, lineGradientStyleDialog:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;
    move-object v10, v0

    .line 977
    goto :goto_0

    .line 979
    .end local v0           #lineGradientStyleDialog:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;
    :pswitch_4
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 980
    .local v8, builderLanguage:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 982
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity$8;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V

    invoke-virtual {v8, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 985
    const v1, 0x7f0b0041

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 986
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    .local v11, dialogLanguage:Landroid/app/AlertDialog;
    move-object v10, v11

    .line 987
    goto/16 :goto_0

    .line 917
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 723
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->releaseInstance()V

    .line 724
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 725
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1039
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1044
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1041
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->finish()V

    .line 1042
    const/4 v0, 0x1

    goto :goto_0

    .line 1039
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 730
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 731
    const/4 v0, 0x0

    .line 733
    .local v0, layoutId:I
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mKeySoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setKeySound(Z)V

    .line 734
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setVibrate(Z)V

    .line 735
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPredictionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPrediction(Z)V

    .line 736
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSpaceInputPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetSpaceKeyInputAssociate(Z)V

    .line 737
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mAutoFullStopPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetAutoFullStop(Z)V

    .line 738
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mVoiceInputPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetVoiceInput(Z)V

    .line 739
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLinkToContactsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLinkToContacts(Z)V

    .line 740
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mCharPreviewPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setCharPreview(Z)V

    .line 741
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPointingKeyboardPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetPointingKeyboard(Z)V

    .line 742
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->GetSwipeOnKeyboard()I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    .line 743
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetSwipeOnKeyboard(I)V

    .line 744
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mOneHandModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->setOneHandMode(Z)V

    .line 745
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 746
    invoke-static {v0, v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 748
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 749
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 750
    invoke-static {v0, v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 753
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 754
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 755
    invoke-static {v0, v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 758
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->imIsHKTWModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 759
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    .line 760
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 761
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 764
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    .line 765
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 766
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 769
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mIsLineGradient:Z

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    aget v4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwriteLineGradient(ZIII)V

    .line 770
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWRecgType:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwriteRecgType(I)V

    .line 775
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mAutoCapitalizationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setAutoCapitalization(Z)V

    .line 787
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->writeBack()V

    .line 788
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 793
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    .line 794
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 795
    .local v0, layoutId:I
    invoke-static {v0, v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 796
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    .line 868
    .end local v0           #layoutId:I
    :cond_0
    :goto_0
    return v1

    .line 798
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_2

    .line 799
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 800
    .restart local v0       #layoutId:I
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 801
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    goto :goto_0

    .line 803
    .end local v0           #layoutId:I
    .restart local p2
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_3

    .line 804
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 805
    .restart local v0       #layoutId:I
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 806
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    goto :goto_0

    .line 808
    .end local v0           #layoutId:I
    .restart local p2
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_4

    .line 809
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 810
    .restart local v0       #layoutId:I
    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 811
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    goto :goto_0

    .line 813
    .end local v0           #layoutId:I
    .restart local p2
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_5

    .line 814
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 815
    .restart local v0       #layoutId:I
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 816
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    goto :goto_0

    .line 818
    .end local v0           #layoutId:I
    .restart local p2
    :cond_5
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mErrorCorrectionPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_6

    .line 819
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetErrorCorrect(Z)V

    goto :goto_0

    .line 821
    .restart local p2
    :cond_6
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mVibratePref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_7

    .line 822
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setVibrate(Z)V

    goto :goto_0

    .line 824
    .restart local p2
    :cond_7
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mKeySoundPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_8

    .line 825
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setKeySound(Z)V

    goto :goto_0

    .line 827
    .restart local p2
    :cond_8
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPredictionPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_9

    .line 828
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPrediction(Z)V

    goto/16 :goto_0

    .line 830
    .restart local p2
    :cond_9
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSpaceInputPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_a

    .line 831
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetSpaceKeyInputAssociate(Z)V

    goto/16 :goto_0

    .line 833
    .restart local p2
    :cond_a
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    if-ne p1, v3, :cond_b

    .line 834
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    .line 835
    iget v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetSwipeOnKeyboard(I)V

    .line 836
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 837
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    iget v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->SetSwipeOnKeyboardSummary(Landroid/preference/Preference;I)V

    goto/16 :goto_0

    .line 839
    .restart local p2
    :cond_b
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mOneHandModePref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_c

    .line 840
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->setOneHandMode(Z)V

    goto/16 :goto_0

    .line 842
    .restart local p2
    :cond_c
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageChinesePref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_d

    .line 843
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageChinese(Z)V

    .line 844
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->displayInputModeList()V

    .line 845
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateInputModeList()V

    .line 846
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->setLanguageSummary()V

    goto/16 :goto_0

    .line 848
    .restart local p2
    :cond_d
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageKoreanPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_e

    .line 849
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageKorean(Z)V

    .line 850
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->displayInputModeList()V

    .line 851
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateInputModeList()V

    .line 852
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->setLanguageSummary()V

    goto/16 :goto_0

    .line 854
    .restart local p2
    :cond_e
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageChineseHkPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_f

    .line 855
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageChineseHk(Z)V

    .line 856
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->displayInputModeList()V

    .line 857
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateInputModeList()V

    .line 858
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->setLanguageSummary()V

    goto/16 :goto_0

    .line 860
    .restart local p2
    :cond_f
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageChineseTwPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_10

    .line 861
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageChineseTw(Z)V

    .line 862
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->displayInputModeList()V

    .line 863
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateInputModeList()V

    .line 864
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->setLanguageSummary()V

    goto/16 :goto_0

    .restart local p2
    :cond_10
    move v1, v2

    .line 868
    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x6

    const/4 v1, 0x1

    .line 665
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 666
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, keys:Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 686
    :cond_0
    :goto_0
    return v1

    .line 672
    :cond_1
    const v2, 0x7f0b011b

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 673
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mAutoCapitalizationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setAutoCapitalization(Z)V

    .line 675
    :cond_2
    const v2, 0x7f0b0156

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 676
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->removeDialog(I)V

    .line 677
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->showDialog(I)V

    goto :goto_0

    .line 682
    :cond_3
    const v2, 0x7f0b0120

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 683
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 702
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 703
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteRecgType()I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWRecgType:I

    .line 704
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateWidgets()V

    .line 706
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateInputModeList()V

    .line 707
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->setLanguageSummary()V

    .line 708
    return-void
.end method

.method public updateInputModeList()V
    .locals 4

    .prologue
    .line 603
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->imIsHKTWModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 604
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 606
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLayoutId(I)I

    move-result v0

    .line 607
    .local v0, layoutId:I
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateHWModeSummary(I)I

    move-result v1

    .line 608
    .local v1, layoutNum:I
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    .line 609
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 610
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 615
    .end local v0           #layoutId:I
    .end local v1           #layoutNum:I
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 616
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    .line 617
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLayoutId(I)I

    move-result v0

    .line 618
    .restart local v0       #layoutId:I
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateHWModeSummary(I)I

    move-result v1

    .line 619
    .restart local v1       #layoutNum:I
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    .line 620
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 621
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 629
    .end local v0           #layoutId:I
    .end local v1           #layoutNum:I
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 630
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    if-eqz v2, :cond_2

    .line 631
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLayoutId(I)I

    move-result v0

    .line 632
    .restart local v0       #layoutId:I
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateHWModeSummary(I)I

    move-result v1

    .line 633
    .restart local v1       #layoutNum:I
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    .line 634
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 639
    .end local v0           #layoutId:I
    .end local v1           #layoutNum:I
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 640
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    if-eqz v2, :cond_3

    .line 641
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLayoutId(I)I

    move-result v0

    .line 642
    .restart local v0       #layoutId:I
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateHWModeSummary(I)I

    move-result v1

    .line 643
    .restart local v1       #layoutNum:I
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    .line 644
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 645
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 649
    .end local v0           #layoutId:I
    .end local v1           #layoutNum:I
    :cond_3
    return-void
.end method

.method public updatePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V
    .locals 6
    .parameter "parentPref"
    .parameter "prefKey"

    .prologue
    .line 994
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 995
    .local v4, preference:Landroid/preference/Preference;
    if-nez v4, :cond_1

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    invoke-virtual {v4}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 999
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1001
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1002
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1003
    .local v2, listSize:I
    if-nez v2, :cond_0

    .line 1004
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
