.class public Lcom/samsung/inputmethod/comm/SimeFeature;
.super Ljava/lang/Object;
.source "SimeFeature.java"


# static fields
.field public static SIME_CANDIDATE_INDICATOR_SHOW:Z

.field public static SIME_CAND_HIGHTLIGHT_ALWAYS:Z

.field public static SIME_CONTACT_ACCESS_FEATURE:Z

.field public static SIME_DB_UPDATE_ONLINE:Z

.field public static SIME_DEL_UDB_FEATURE:Z

.field public static SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

.field public static SIME_FAST_DELETE_FEATURE:Z

.field public static SIME_FULL_SENTENCE:Z

.field public static SIME_HANDWRITING_BEAUTIFY_FEATURE:Z

.field public static SIME_HARDKEYPAD_SUPPORTED:Z

.field public static SIME_HKTW_DISTINGUISH_BY_CSC:Z

.field public static SIME_HW_BOX_FEATURE:Z

.field public static SIME_HW_FULLSCREEN_FEATURE:Z

.field public static SIME_INCLUDE_HKTW_LANGUAGE:Z

.field public static SIME_KEYBOARD_SOUND_LOCAL:Z

.field public static SIME_MINIPOPUP_CLOSE_BUTTON_HIDE:Z

.field public static SIME_MMKEY_CMKEY:Z

.field public static SIME_MMKEY_DEFAULT_HANDWRITING:Z

.field public static SIME_MMKEY_HOLDANDRELEASE:Z

.field public static SIME_MM_NO_CLIPBOARD_KEY:Z

.field public static SIME_NO_AUTOCORRECTION_FEATURE:Z

.field public static SIME_NO_HW_LED_CONTROL:Z

.field public static SIME_NO_VIBRATION_FEATURE:Z

.field public static SIME_NUM_QWERTY_FEATURE:Z

.field public static SIME_OCR_FEATURE:Z

.field public static SIME_ONE_HAND_FEATURE:Z

.field public static SIME_POINTING_KEYBOARD_FEATURE:Z

.field public static SIME_SHOW_TUTORIAL_BY_ACTIVITY:Z

.field public static SIME_SHOW_TUTORIAL_FEATURE:Z

.field public static SIME_SUPPORT_CTC_WEBSITE:Z

.field public static SIME_SUPPORT_MULTI_FLOAT:Z

.field public static SIME_SUPPORT_SW359DP:Z

.field public static SIME_TOOLBARMODE_SUPPORTED:Z

.field public static SIME_TWO_PAGE_QWERTY_SYMBOL:Z

.field public static SIME_USE_LANG_MGR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 30
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    .line 33
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    .line 36
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_LANG_MGR:Z

    .line 39
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DEL_UDB_FEATURE:Z

    .line 42
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CONTACT_ACCESS_FEATURE:Z

    .line 45
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MINIPOPUP_CLOSE_BUTTON_HIDE:Z

    .line 48
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HANDWRITING_BEAUTIFY_FEATURE:Z

    .line 51
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FULL_SENTENCE:Z

    .line 54
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_KEYBOARD_SOUND_LOCAL:Z

    .line 57
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_CMKEY:Z

    .line 62
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    .line 64
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CANDIDATE_INDICATOR_SHOW:Z

    .line 67
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_POINTING_KEYBOARD_FEATURE:Z

    .line 70
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_OCR_FEATURE:Z

    .line 73
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    .line 76
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    .line 78
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DB_UPDATE_ONLINE:Z

    .line 80
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ONE_HAND_FEATURE:Z

    .line 83
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_INCLUDE_HKTW_LANGUAGE:Z

    .line 87
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CAND_HIGHTLIGHT_ALWAYS:Z

    .line 89
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    .line 91
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    .line 93
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    .line 96
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MM_NO_CLIPBOARD_KEY:Z

    .line 99
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HKTW_DISTINGUISH_BY_CSC:Z

    .line 102
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_AUTOCORRECTION_FEATURE:Z

    .line 105
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_HOLDANDRELEASE:Z

    .line 108
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_DEFAULT_HANDWRITING:Z

    .line 111
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    .line 114
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_SW359DP:Z

    .line 118
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SHOW_TUTORIAL_FEATURE:Z

    .line 121
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SHOW_TUTORIAL_BY_ACTIVITY:Z

    .line 124
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_CTC_WEBSITE:Z

    .line 127
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    .line 130
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_HW_LED_CONTROL:Z

    .line 133
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, model:Ljava/lang/String;
    const-string v2, "ro.build.description"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, description:Ljava/lang/String;
    const-string v2, "GT-I9228"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GT-I9220"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GT-N7000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GT-N7005"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SCH-I889"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    :cond_0
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    .line 142
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    .line 143
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ONE_HAND_FEATURE:Z

    .line 144
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    .line 145
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_DEFAULT_HANDWRITING:Z

    .line 265
    :cond_1
    :goto_0
    const-string v2, "SCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_CTC_WEBSITE:Z

    .line 270
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_INCLUDE_HKTW_LANGUAGE:Z

    .line 272
    :cond_2
    return-void

    .line 147
    :cond_3
    const-string v2, "SCH-I939"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 150
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    .line 151
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    .line 152
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    goto :goto_0

    .line 154
    :cond_4
    const-string v2, "GT-I9308C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "GT-I9308D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    const-string v2, "GT-I9300"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "GT-I9308"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "GT-I9305"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 161
    :cond_5
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    .line 162
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    goto :goto_0

    .line 164
    :cond_6
    const-string v2, "I959"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    const-string v2, "GT-I9100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "GT-I9108"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "GT-I9103"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "GT-I9050"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    const-string v2, "GT-N7103"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "GT-N7108"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "GT-N7100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "GT-N7102"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "SCH-N719"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "GT-N7105"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 175
    :cond_7
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_POINTING_KEYBOARD_FEATURE:Z

    .line 176
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_OCR_FEATURE:Z

    .line 177
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    .line 178
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    .line 181
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    .line 182
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ONE_HAND_FEATURE:Z

    .line 183
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    .line 184
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_DEFAULT_HANDWRITING:Z

    goto/16 :goto_0

    .line 186
    :cond_8
    const-string v2, "GT-S7562"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "GT-S7568"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "I8190"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 190
    :cond_9
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    goto/16 :goto_0

    .line 192
    :cond_a
    const-string v2, "GT-I8268"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 195
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    .line 197
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_HW_LED_CONTROL:Z

    goto/16 :goto_0

    .line 199
    :cond_b
    const-string v2, "GT-I8262"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "GT-S7572"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "GT-I8268"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 203
    :cond_c
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    .line 205
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    goto/16 :goto_0

    .line 207
    :cond_d
    const-string v2, "GT-I9128"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "GT-I9082"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "I879"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 210
    :cond_e
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    .line 212
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    .line 215
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    .line 216
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    .line 217
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ONE_HAND_FEATURE:Z

    .line 218
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    .line 219
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    goto/16 :goto_0

    .line 221
    :cond_f
    const-string v2, "I9268"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 224
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    goto/16 :goto_0

    .line 226
    :cond_10
    const-string v2, "I9250"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 229
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DEL_UDB_FEATURE:Z

    .line 230
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CONTACT_ACCESS_FEATURE:Z

    .line 231
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HANDWRITING_BEAUTIFY_FEATURE:Z

    .line 232
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    .line 234
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_AUTOCORRECTION_FEATURE:Z

    .line 235
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    .line 236
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MM_NO_CLIPBOARD_KEY:Z

    goto/16 :goto_0

    .line 238
    :cond_11
    const-string v2, "EK-GC100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 240
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    .line 241
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_SW359DP:Z

    goto/16 :goto_0

    .line 244
    :cond_12
    const-string v2, "SCH-I829"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 246
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DB_UPDATE_ONLINE:Z

    .line 247
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    goto/16 :goto_0

    .line 249
    :cond_13
    const-string v2, "GT-I9105P"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 251
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DB_UPDATE_ONLINE:Z

    goto/16 :goto_0

    .line 253
    :cond_14
    const-string v2, "B9388"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CAND_HIGHTLIGHT_ALWAYS:Z

    .line 257
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    .line 258
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
