.class public Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;
.super Landroid/preference/PreferenceActivity;
.source "SimeSettingsHandwrite.java"

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

.field private static final SUMMARY_COLOR_NUM:I = 0x2

.field private static final SUMMARY_CONVERT_NUM:I = 0x3

.field private static final SUMMARY_HANDWRITING_STYLE_NUM:I = 0x4

.field private static final SUMMARY_HWMODE_NUM:I = 0x5

.field private static final SUMMARY_LINE_NUM:I = 0x0

.field private static final SUMMARY_SPEED_NUM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SimeSettingsHandwrite"


# instance fields
.field private colorPickerPreference:Landroid/preference/Preference;

.field private mAutoCapitalizationPref:Landroid/preference/CheckBoxPreference;

.field private mColorEntries:[Ljava/lang/CharSequence;

.field private mColorsIndex:I

.field private mConvert:I

.field private mConvertEntries:[Ljava/lang/CharSequence;

.field private mConvertPref:Landroid/preference/ListPreference;

.field private mHWLineGradient:[I

.field private mHWLineProperty:[I

.field private mHWMode:I

.field private mHWModeEntries:[Ljava/lang/CharSequence;

.field private mHWModePref:Landroid/preference/ListPreference;

.field private mHWRecgType:I

.field private mHandwriteColor:Landroid/preference/Preference;

.field private mHandwriteLine:Landroid/preference/Preference;

.field private mHandwriteLineGradient:Landroid/preference/CheckBoxPreference;

.field private mHandwriteSpeed:Landroid/preference/ListPreference;

.field private mHandwriteTypePref:Landroid/preference/ListPreference;

.field private mHandwritingStyle:I

.field private mHandwritingStyleEntries:[Ljava/lang/CharSequence;

.field private mHandwritingStylePref:Landroid/preference/ListPreference;

.field private mIsLineGradient:Z

.field private mLineEntries:[Ljava/lang/CharSequence;

.field private mPredictionPref:Landroid/preference/CheckBoxPreference;

.field private mSpeed:I

.field private mSpeedEntries:[Ljava/lang/CharSequence;

.field private mWidthIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineProperty:[I

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    return-void
.end method

.method private summaryChanged(I)V
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    packed-switch p1, :pswitch_data_0

    .line 278
    :goto_0
    return-void

    .line 167
    :pswitch_0
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mWidthIndex:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteLine:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mLineEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteLine:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mLineEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 175
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteLine:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mLineEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteLine:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mLineEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 181
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteLine:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mLineEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 187
    :pswitch_6
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeed:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 189
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteSpeed:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeedEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 192
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteSpeed:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeedEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 195
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteSpeed:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeedEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 198
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteSpeed:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeedEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    :sswitch_4
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteSpeed:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeedEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 206
    :pswitch_7
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorsIndex:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 208
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteColor:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteColor:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 214
    :pswitch_a
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteColor:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 217
    :pswitch_b
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteColor:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 229
    :pswitch_c
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 231
    :pswitch_d
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 234
    :pswitch_e
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 237
    :pswitch_f
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 242
    :pswitch_10
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyle:I

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    .line 244
    :pswitch_11
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyleEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 247
    :pswitch_12
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyleEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 250
    :pswitch_13
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyleEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 253
    :pswitch_14
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyleEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 256
    :pswitch_15
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyleEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 259
    :pswitch_16
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyleEntries:[Ljava/lang/CharSequence;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 265
    :pswitch_17
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWMode:I

    packed-switch v0, :pswitch_data_5

    goto/16 :goto_0

    .line 267
    :pswitch_18
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWModePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWModeEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 270
    :pswitch_19
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWModePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWModeEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_10
        :pswitch_17
    .end packed-switch

    .line 167
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 187
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x12c -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x2bc -> :sswitch_3
        0x3e8 -> :sswitch_4
    .end sparse-switch

    .line 206
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 229
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 242
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch

    .line 265
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method private updateSettingsHandwriteWidget()V
    .locals 5

    .prologue
    .line 348
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    iget v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 349
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 350
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v3, :cond_0

    .line 351
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWModePref:Landroid/preference/ListPreference;

    iget v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWMode:I

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 352
    :cond_0
    const/4 v3, 0x3

    new-array v2, v3, [I

    .line 353
    .local v2, pt:[I
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteSpeed:Landroid/preference/ListPreference;

    iget v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeed:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 354
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    iget v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyle:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 359
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 362
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v3, 0x6

    if-ge v1, v3, :cond_2

    .line 363
    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-nez v3, :cond_4

    .line 367
    :cond_2
    return-void

    .line 361
    .end local v1           #i:I
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 365
    .restart local v1       #i:I
    :cond_4
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->summaryChanged(I)V

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineProperty:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 282
    return-void
.end method

.method public lineChanged(I)V
    .locals 2
    .parameter "line"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineProperty:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 286
    return-void
.end method

.method public lineGradientChanged(III)V
    .locals 2
    .parameter "scolor"
    .parameter "mcolor"
    .parameter "ecolor"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 290
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 291
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 292
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v3, 0x7f040005

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->addPreferencesFromResource(I)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 108
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 109
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 114
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const v3, 0x7f0b0121

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    .line 116
    const v3, 0x7f0b0142

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteLine:Landroid/preference/Preference;

    .line 117
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteLine:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    const v3, 0x7f0b0140

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteColor:Landroid/preference/Preference;

    .line 120
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteColor:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    const v3, 0x7f0b0146

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteSpeed:Landroid/preference/ListPreference;

    .line 123
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    const v3, 0x7f0b014b

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    .line 126
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HANDWRITING_BEAUTIFY_FEATURE:Z

    if-nez v3, :cond_1

    .line 129
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getConvert()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    .line 132
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 134
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 136
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    const v3, 0x7f0b014a

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWModePref:Landroid/preference/ListPreference;

    .line 138
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHWMode()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWMode:I

    .line 139
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWModePref:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-nez v3, :cond_3

    .line 142
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWModePref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 145
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertEntries:[Ljava/lang/CharSequence;

    .line 146
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWModeEntries:[Ljava/lang/CharSequence;

    .line 147
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mLineEntries:[Ljava/lang/CharSequence;

    .line 148
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorEntries:[Ljava/lang/CharSequence;

    .line 149
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeedEntries:[Ljava/lang/CharSequence;

    .line 150
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyleEntries:[Ljava/lang/CharSequence;

    .line 152
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineProperty:[I

    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLine([I)V

    .line 153
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLineWidthIndex()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mWidthIndex:I

    .line 154
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLineColorIndex()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorsIndex:I

    .line 155
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpeed()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeed:I

    .line 156
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLineGradient([I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mIsLineGradient:Z

    .line 157
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteRecgType()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWRecgType:I

    .line 158
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwritingStyle()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyle:I

    .line 159
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->summaryChanged(I)V

    .line 160
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const v1, 0x7f0b001b

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v2, 0x7f0b0037

    const/4 v9, 0x0

    .line 417
    packed-switch p1, :pswitch_data_0

    .line 468
    :goto_0
    :pswitch_0
    return-object v9

    .line 420
    :pswitch_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 421
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 422
    if-nez p1, :cond_1

    .line 423
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite$1;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite$1;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;)V

    invoke-virtual {v7, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    const v1, 0x7f0b005f

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 443
    :cond_0
    :goto_1
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 444
    .local v9, dialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 428
    .end local v9           #dialog:Landroid/app/AlertDialog;
    :cond_1
    if-ne v5, p1, :cond_0

    .line 429
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite$2;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite$2;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;)V

    invoke-virtual {v7, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 439
    const v1, 0x7f0b0032

    invoke-virtual {v7, v1, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 440
    const v1, 0x7f0b006b

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 454
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineProperty:[I

    aget v3, v1, v4

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    aget v4, v1, v4

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    aget v5, v1, v5

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    const/4 v2, 0x2

    aget v6, v1, v2

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;IIII)V

    .local v0, lineGradientStyleDialog:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;
    move-object v9, v0

    .line 456
    goto :goto_0

    .line 458
    .end local v0           #lineGradientStyleDialog:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;
    :pswitch_3
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 459
    .local v8, builderLanguage:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 461
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite$3;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite$3;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;)V

    invoke-virtual {v8, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 464
    const v1, 0x7f0b0041

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 465
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .local v10, dialogLanguage:Landroid/app/AlertDialog;
    move-object v9, v10

    .line 466
    goto :goto_0

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 303
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 304
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 474
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 479
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 476
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->finish()V

    .line 477
    const/4 v0, 0x1

    goto :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 308
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 311
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorsIndex:I

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwriteLineColorIndex(I)V

    .line 312
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mWidthIndex:I

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwriteLineWidthIndex(I)V

    .line 313
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeed:I

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setSpeed(I)V

    .line 314
    iget-boolean v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mIsLineGradient:Z

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwriteLineGradient(ZIII)V

    .line 315
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWRecgType:I

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwriteRecgType(I)V

    .line 317
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->writeBack()V

    .line 318
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 370
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, keys:Ljava/lang/String;
    const v1, 0x7f0b0121

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 372
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    .line 373
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setConvert(I)V

    .line 374
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    if-gez v1, :cond_2

    .line 375
    iput v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    .line 379
    :cond_0
    :goto_0
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->summaryChanged(I)V

    .line 380
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    int-to-short v1, v1

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeDecoderService;->hwEnableTraSimConversion(I)I

    .line 411
    :cond_1
    :goto_1
    return v4

    .line 376
    :cond_2
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    if-le v1, v2, :cond_0

    .line 377
    iput v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    goto :goto_0

    .line 381
    .restart local p2
    :cond_3
    const v1, 0x7f0b0146

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 382
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeed:I

    .line 383
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeed:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setSpeed(I)V

    .line 384
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->summaryChanged(I)V

    goto :goto_1

    .line 385
    .restart local p2
    :cond_4
    const v1, 0x7f0b0145

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 386
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mIsLineGradient:Z

    goto :goto_1

    .line 387
    .restart local p2
    :cond_5
    const v1, 0x7f0b0140

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 388
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorsIndex:I

    .line 391
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorsIndex:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwriteLineColorIndex(I)V

    .line 392
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->summaryChanged(I)V

    goto :goto_1

    .line 394
    .restart local p2
    :cond_6
    const v1, 0x7f0b0142

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 395
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mWidthIndex:I

    .line 398
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mWidthIndex:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwriteLineWidthIndex(I)V

    .line 399
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->summaryChanged(I)V

    goto :goto_1

    .line 400
    .restart local p2
    :cond_7
    const v1, 0x7f0b014a

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 401
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWModePref:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWMode:I

    .line 402
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWMode:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHWMode(I)V

    .line 403
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->summaryChanged(I)V

    goto/16 :goto_1

    .line 405
    .restart local p2
    :cond_8
    const v1, 0x7f0b014b

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyle:I

    .line 407
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyle:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwritingStyle(I)V

    .line 408
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->summaryChanged(I)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    .line 322
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 323
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, keys:Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 343
    :cond_0
    :goto_0
    return v1

    .line 327
    :cond_1
    const v2, 0x7f0b0140

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    const v2, 0x7f0b0142

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    const v2, 0x7f0b0143

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->removeDialog(I)V

    .line 336
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->showDialog(I)V

    goto :goto_0

    .line 338
    :cond_2
    const v2, 0x7f0b0120

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->showDialog(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 297
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->updateSettingsHandwriteWidget()V

    .line 298
    return-void
.end method
