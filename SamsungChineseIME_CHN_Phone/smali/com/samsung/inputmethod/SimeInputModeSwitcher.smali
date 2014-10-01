.class public Lcom/samsung/inputmethod/SimeInputModeSwitcher;
.super Ljava/lang/Object;
.source "SimeInputModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/SimeInputModeSwitcher$1;,
        Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;,
        Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeInputModeSwitcher"

.field private static mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

.field private static mMainInputMode:I


# instance fields
.field mEditorChoose:Z

.field private mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mEnterKeyNormal:Z

.field private mImeService:Lcom/samsung/inputmethod/SamsungIME;

.field mInputIcon:I

.field private mInputMode:I

.field private mRecentHandwritingInputMode:I

.field private mRecentKeyPadModeMgr:Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;

.field private mRecentLauageInputMode:I

.field mRestarting:Z

.field private mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

.field private mSymbolLock:Z

.field private mT9On:Z

.field private mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

.field private mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

.field private mUrlSuffixShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-direct {v0}, Lcom/samsung/inputmethod/SimeLanguageMgr;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    .line 71
    const/4 v0, 0x0

    sput v0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 5
    .parameter "imeService"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    .line 75
    iput v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    .line 80
    iput v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentHandwritingInputMode:I

    .line 95
    new-instance v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;-><init>(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentKeyPadModeMgr:Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;

    .line 102
    iput-boolean v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRestarting:Z

    .line 103
    iput-boolean v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    .line 110
    new-instance v2, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-direct {v2}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    .line 114
    iput-boolean v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mUrlSuffixShow:Z

    .line 115
    iput-boolean v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSymbolLock:Z

    .line 119
    iput-boolean v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEnterKeyNormal:Z

    .line 130
    iput v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    .line 233
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    .line 234
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->initInputModeFromDB()V

    .line 235
    new-instance v2, Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    invoke-direct {v2, p1, p0}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    .line 237
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 238
    new-instance v2, Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;-><init>(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    .line 241
    :cond_0
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_LANG_MGR:Z

    if-eqz v2, :cond_1

    .line 243
    const/4 v0, 0x1

    .line 244
    .local v0, bRet:Z
    sget-object v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    sget v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    const/high16 v4, 0xf

    and-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getLangByMask(I)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SimeLanguageMgr;->setCurLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z

    move-result v0

    .line 246
    if-nez v0, :cond_1

    .line 249
    sget-object v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeLanguageMgr;->reInitialize()Z

    .line 251
    sget-object v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getCurLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getMaskByLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSettingLangbyLangMask(I)I

    move-result v1

    .line 253
    .local v1, settingLang:I
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v2

    sput v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 261
    .end local v0           #bRet:Z
    .end local v1           #settingLang:I
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-virtual {v2, p0}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 262
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->initPrivateImeOptionTable()V

    .line 263
    return-void
.end method

.method private ChangeTo34Mode(I)I
    .locals 2
    .parameter "lan"

    .prologue
    .line 1135
    const/high16 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1136
    const/high16 v0, 0x1211

    .line 1148
    .local v0, inputmode:I
    :goto_0
    return v0

    .line 1137
    .end local v0           #inputmode:I
    :cond_0
    const/high16 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1138
    const/high16 v0, 0x1203

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1139
    .end local v0           #inputmode:I
    :cond_1
    const/high16 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1140
    const/high16 v0, 0x2204

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1142
    .end local v0           #inputmode:I
    :cond_2
    const/high16 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 1144
    const/high16 v0, 0x3205

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1146
    .end local v0           #inputmode:I
    :cond_3
    const/high16 v0, 0x1202

    .restart local v0       #inputmode:I
    goto :goto_0
.end method

.method private ChangeToHWBoxMode(I)I
    .locals 2
    .parameter "lan"

    .prologue
    .line 1215
    const/high16 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1216
    const v0, 0x34010100

    .line 1226
    .local v0, inputmode:I
    :goto_0
    return v0

    .line 1217
    .end local v0           #inputmode:I
    :cond_0
    const/high16 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1218
    const v0, 0x34030100

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1219
    .end local v0           #inputmode:I
    :cond_1
    const/high16 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1220
    const v0, 0x34040100

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1221
    .end local v0           #inputmode:I
    :cond_2
    const/high16 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 1222
    const v0, 0x34050100

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1224
    .end local v0           #inputmode:I
    :cond_3
    const v0, 0x34020100

    .restart local v0       #inputmode:I
    goto :goto_0
.end method

.method private ChangeToHWFSMode(I)I
    .locals 3
    .parameter "lan"

    .prologue
    .line 1196
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v1, v2, :cond_0

    .line 1197
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    .line 1199
    :cond_0
    const/high16 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1200
    const v0, 0x33010100

    .line 1210
    .local v0, inputmode:I
    :goto_0
    return v0

    .line 1201
    .end local v0           #inputmode:I
    :cond_1
    const/high16 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 1202
    const v0, 0x33030100

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1203
    .end local v0           #inputmode:I
    :cond_2
    const/high16 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 1204
    const v0, 0x33040100

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1205
    .end local v0           #inputmode:I
    :cond_3
    const/high16 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 1206
    const v0, 0x33050100

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1208
    .end local v0           #inputmode:I
    :cond_4
    const v0, 0x33020100

    .restart local v0       #inputmode:I
    goto :goto_0
.end method

.method private ChangeToQwertyMode(I)I
    .locals 2
    .parameter "lan"

    .prologue
    .line 1178
    const/high16 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1179
    const/high16 v0, 0x1111

    .line 1189
    .local v0, inputmode:I
    :goto_0
    return v0

    .line 1180
    .end local v0           #inputmode:I
    :cond_0
    const/high16 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1181
    const/high16 v0, 0x1113

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1182
    .end local v0           #inputmode:I
    :cond_1
    const/high16 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1183
    const/high16 v0, 0x2104

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1184
    .end local v0           #inputmode:I
    :cond_2
    const/high16 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 1185
    const/high16 v0, -0x6efb

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1187
    .end local v0           #inputmode:I
    :cond_3
    const/high16 v0, 0x1102

    .restart local v0       #inputmode:I
    goto :goto_0
.end method

.method private changeToolbarmodeToSKBMode(Lcom/samsung/inputmethod/SimeInputModeDef;)Lcom/samsung/inputmethod/SimeInputModeDef;
    .locals 2
    .parameter "toolBarMode"

    .prologue
    .line 1059
    new-instance v0, Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-direct {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>()V

    .line 1061
    .local v0, newInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1063
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->typeMask()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1084
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->languageMask()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 1107
    :cond_0
    :goto_0
    return-object v0

    .line 1065
    :sswitch_0
    const/high16 v1, 0x5200

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1069
    :sswitch_1
    const v1, -0x7effe000

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1073
    :sswitch_2
    const/high16 v1, 0x7200

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1077
    :sswitch_3
    const v1, -0x4dffffd0

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1081
    :sswitch_4
    const v1, 0x62021000

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1086
    :sswitch_5
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1089
    :sswitch_6
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1092
    :sswitch_7
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1095
    :sswitch_8
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1098
    :sswitch_9
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1063
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        -0x50000000 -> :sswitch_3
        0x50000000 -> :sswitch_0
        0x60000000 -> :sswitch_4
        0x70000000 -> :sswitch_2
    .end sparse-switch

    .line 1084
    :sswitch_data_1
    .sparse-switch
        0x10000 -> :sswitch_5
        0x20000 -> :sswitch_6
        0x30000 -> :sswitch_7
        0x40000 -> :sswitch_9
        0x50000 -> :sswitch_8
    .end sparse-switch
.end method

.method public static getCurrentLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4556
    const/4 v0, 0x0

    .line 4557
    .local v0, curLangStr:Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_LANG_MGR:Z

    if-eqz v1, :cond_0

    .line 4558
    sget-object v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getCurLangStr()Ljava/lang/String;

    move-result-object v0

    .line 4580
    :goto_0
    return-object v0

    .line 4560
    :cond_0
    sget v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 4562
    :sswitch_0
    const-string v0, "EN_US"

    .line 4563
    goto :goto_0

    .line 4565
    :sswitch_1
    const-string v0, "ZH_CN"

    .line 4566
    goto :goto_0

    .line 4568
    :sswitch_2
    const-string v0, "ZH_TW"

    .line 4569
    goto :goto_0

    .line 4571
    :sswitch_3
    const-string v0, "ZH_HK"

    .line 4572
    goto :goto_0

    .line 4574
    :sswitch_4
    const-string v0, "Korean"

    .line 4575
    goto :goto_0

    .line 4560
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_4
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_3
    .end sparse-switch
.end method

.method private initInputModeFromDB()V
    .locals 2

    .prologue
    const/high16 v1, 0x1111

    .line 4301
    const/4 v0, 0x0

    .line 4302
    .local v0, recordedInputMode:I
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLastInputMode()I

    move-result v0

    .line 4303
    sparse-switch v0, :sswitch_data_0

    .line 4336
    sput v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4340
    :goto_0
    sget v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    iput v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    .line 4341
    return-void

    .line 4323
    :sswitch_0
    sput v0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_0

    .line 4328
    :sswitch_1
    sput v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_0

    .line 4333
    :sswitch_2
    const/high16 v1, 0x1211

    sput v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_0

    .line 4303
    :sswitch_data_0
    .sparse-switch
        -0x6efb0000 -> :sswitch_0
        -0x6dfb0000 -> :sswitch_0
        0x11020000 -> :sswitch_0
        0x11110000 -> :sswitch_1
        0x11210000 -> :sswitch_1
        0x11310000 -> :sswitch_1
        0x12020000 -> :sswitch_0
        0x12110000 -> :sswitch_2
        0x12210000 -> :sswitch_2
        0x12310000 -> :sswitch_2
        0x21040000 -> :sswitch_0
        0x22040000 -> :sswitch_0
        0x32020000 -> :sswitch_0
        0x32040000 -> :sswitch_0
        0x32050000 -> :sswitch_0
        0x33010100 -> :sswitch_0
        0x33020100 -> :sswitch_0
        0x33030100 -> :sswitch_0
        0x33040100 -> :sswitch_0
        0x33050100 -> :sswitch_0
        0x34010100 -> :sswitch_0
        0x34020100 -> :sswitch_0
        0x34030100 -> :sswitch_0
        0x34040100 -> :sswitch_0
        0x34050100 -> :sswitch_0
    .end sparse-switch
.end method

.method private is123SymMode()Z
    .locals 3

    .prologue
    const/high16 v2, -0x1000

    .line 3577
    const/high16 v0, 0x6000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x7000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 3579
    :cond_0
    const/4 v0, 0x1

    .line 3581
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDateTimeMode()Z
    .locals 3

    .prologue
    .line 3542
    const/high16 v0, -0x8000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const v2, 0xf000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3544
    const/4 v0, 0x1

    .line 3546
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmailEditor(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 3
    .parameter "editorInfo"

    .prologue
    const/4 v1, 0x0

    .line 4832
    if-nez p0, :cond_1

    .line 4834
    :cond_0
    :goto_0
    return v1

    .line 4833
    :cond_1
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 4834
    .local v0, variation:I
    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isMonthMode()Z
    .locals 3

    .prologue
    .line 3532
    const/high16 v0, -0x8000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const v2, 0xf000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3534
    const/4 v0, 0x1

    .line 3536
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNumOnlyMode()Z
    .locals 3

    .prologue
    .line 3564
    const/high16 v0, -0x5000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3565
    const/4 v0, 0x1

    .line 3567
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPhoneMode()Z
    .locals 3

    .prologue
    .line 3557
    const/high16 v0, 0x5000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3558
    const/4 v0, 0x1

    .line 3560
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSoftKeyboard()Z
    .locals 2

    .prologue
    .line 3289
    iget v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v1, 0xf00

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3290
    const/4 v0, 0x1

    .line 3292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpellingMode()Z
    .locals 3

    .prologue
    .line 3504
    const/high16 v0, 0x1000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStrokeMode()Z
    .locals 3

    .prologue
    .line 3513
    const/high16 v0, 0x3000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isURLMode(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 3
    .parameter "editorInfo"

    .prologue
    const/4 v1, 0x0

    .line 3790
    if-nez p0, :cond_1

    .line 3792
    :cond_0
    :goto_0
    return v1

    .line 3791
    :cond_1
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 3792
    .local v0, variation:I
    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private saveInputMode(I)V
    .locals 9
    .parameter "newInputMode"

    .prologue
    const/high16 v8, 0x1111

    const/4 v7, 0x0

    const/high16 v6, 0xf

    const/high16 v4, 0xf00

    const/high16 v5, -0x1000

    .line 4161
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-eq p1, v2, :cond_0

    if-nez p1, :cond_1

    .line 4162
    :cond_0
    iput-boolean v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    .line 4280
    :goto_0
    return-void

    .line 4166
    :cond_1
    and-int v2, p1, v5

    const/high16 v3, 0x6000

    if-eq v2, v3, :cond_2

    and-int v2, p1, v5

    const/high16 v3, 0x7000

    if-eq v2, v3, :cond_2

    and-int v2, p1, v5

    const/high16 v3, 0x5000

    if-eq v2, v3, :cond_2

    and-int v2, p1, v5

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_2

    and-int v2, p1, v5

    const/high16 v3, -0x5000

    if-ne v2, v3, :cond_4

    .line 4172
    :cond_2
    and-int v2, p1, v5

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v3, v5

    if-eq v2, v3, :cond_3

    const/high16 v2, 0x7000

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v3, v5

    if-eq v2, v3, :cond_3

    .line 4174
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v2}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4175
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iput v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    .line 4177
    :cond_3
    iput p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    .line 4178
    iput-boolean v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    goto :goto_0

    .line 4181
    :cond_4
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4183
    iget-boolean v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    if-nez v2, :cond_5

    .line 4184
    and-int v1, p1, v6

    .line 4185
    .local v1, languageMask:I
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSettingLangbyLangMask(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v2

    sput v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4269
    .end local v1           #languageMask:I
    :cond_5
    :goto_1
    iput p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    .line 4272
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_LANG_MGR:Z

    if-eqz v2, :cond_6

    .line 4273
    const/4 v0, 0x0

    .line 4275
    .local v0, bState:Z
    sget-object v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getLangByMask(I)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SimeLanguageMgr;->setCurLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z

    .line 4279
    .end local v0           #bState:Z
    :cond_6
    iput-boolean v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    goto :goto_0

    .line 4189
    :cond_7
    iget-boolean v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    if-nez v2, :cond_a

    .line 4191
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v2, :cond_9

    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v2, :cond_9

    .line 4192
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHWMode()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_f

    .line 4193
    :cond_8
    const v2, 0x33010100

    if-ne p1, v2, :cond_b

    .line 4194
    const p1, 0x34010100

    .line 4219
    :cond_9
    :goto_2
    and-int v2, p1, v4

    sparse-switch v2, :sswitch_data_0

    .line 4259
    const/high16 p1, 0x1111

    .line 4260
    sput v8, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4261
    sget v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SaveLastInputInfo(I)V

    .line 4266
    :cond_a
    :goto_3
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iput v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    goto :goto_1

    .line 4195
    :cond_b
    const v2, 0x33030100

    if-ne p1, v2, :cond_c

    .line 4196
    const p1, 0x34030100

    goto :goto_2

    .line 4197
    :cond_c
    const v2, 0x33020100

    if-ne p1, v2, :cond_d

    .line 4198
    const p1, 0x34020100

    goto :goto_2

    .line 4199
    :cond_d
    const v2, 0x33050100

    if-ne p1, v2, :cond_e

    .line 4200
    const p1, 0x34050100

    goto :goto_2

    .line 4201
    :cond_e
    const v2, 0x33040100

    if-ne p1, v2, :cond_9

    .line 4202
    const p1, 0x34040100

    goto :goto_2

    .line 4204
    :cond_f
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHWMode()I

    move-result v2

    if-nez v2, :cond_9

    .line 4205
    const v2, 0x34010100

    if-ne p1, v2, :cond_10

    .line 4206
    const p1, 0x33010100

    goto :goto_2

    .line 4207
    :cond_10
    const v2, 0x34030100

    if-ne p1, v2, :cond_11

    .line 4208
    const p1, 0x33030100

    goto :goto_2

    .line 4209
    :cond_11
    const v2, 0x34020100

    if-ne p1, v2, :cond_12

    .line 4210
    const p1, 0x33020100

    goto :goto_2

    .line 4211
    :cond_12
    const v2, 0x34050100

    if-ne p1, v2, :cond_13

    .line 4212
    const p1, 0x33050100

    goto :goto_2

    .line 4213
    :cond_13
    const v2, 0x34040100

    if-ne p1, v2, :cond_9

    .line 4214
    const p1, 0x33040100

    goto :goto_2

    .line 4221
    :sswitch_0
    sput p1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4222
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentKeyPadModeMgr:Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;

    and-int v3, p1, v6

    and-int/2addr v4, p1

    and-int/2addr v5, p1

    or-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->setRectMode(II)V

    .line 4224
    const/high16 v2, 0x1131

    if-eq p1, v2, :cond_14

    const/high16 v2, 0x1121

    if-ne p1, v2, :cond_16

    .line 4226
    :cond_14
    sput v8, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4230
    :cond_15
    :goto_4
    sget v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SaveLastInputInfo(I)V

    goto :goto_3

    .line 4227
    :cond_16
    const/high16 v2, 0x1133

    if-ne p1, v2, :cond_15

    .line 4228
    const/high16 v2, 0x1113

    sput v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_4

    .line 4233
    :sswitch_1
    sput p1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4235
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentKeyPadModeMgr:Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;

    and-int v3, p1, v6

    and-int/2addr v4, p1

    and-int/2addr v5, p1

    or-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->setRectMode(II)V

    .line 4237
    const/high16 v2, 0x1231

    if-eq p1, v2, :cond_17

    const/high16 v2, 0x1221

    if-ne p1, v2, :cond_19

    .line 4239
    :cond_17
    const/high16 v2, 0x1211

    sput v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4244
    :cond_18
    :goto_5
    sget v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SaveLastInputInfo(I)V

    goto/16 :goto_3

    .line 4240
    :cond_19
    const/high16 v2, 0x1133

    if-ne p1, v2, :cond_18

    .line 4241
    const/high16 v2, 0x1113

    sput v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_5

    .line 4247
    :sswitch_2
    sput p1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4248
    and-int v2, p1, v4

    and-int v3, p1, v5

    or-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentHandwritingInputMode:I

    .line 4250
    sget v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SaveLastInputInfo(I)V

    goto/16 :goto_3

    .line 4253
    :sswitch_3
    sput p1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4254
    and-int v2, p1, v4

    and-int v3, p1, v5

    or-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentHandwritingInputMode:I

    .line 4256
    sget v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SaveLastInputInfo(I)V

    goto/16 :goto_3

    .line 4219
    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_1
        0x3000000 -> :sswitch_2
        0x4000000 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public DecideHandwriteMode()V
    .locals 7

    .prologue
    .line 4933
    const/4 v1, 0x0

    .line 4934
    .local v1, newInputMode:I
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf

    and-int v0, v2, v3

    .line 4936
    .local v0, language:I
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_0

    .line 4937
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    move-result v1

    .line 4941
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 4942
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v3, 0x1

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 4943
    return-void

    .line 4939
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWFSMode(I)I

    move-result v1

    goto :goto_0
.end method

.method public changeToToolBarSKB()I
    .locals 6

    .prologue
    .line 1046
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v1, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->activate(I)I

    move-result v0

    .line 1050
    .local v0, newInputMode:I
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1051
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1053
    .end local v0           #newInputMode:I
    :cond_0
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v1
.end method

.method public changeToolBarSKBToNoraml()I
    .locals 7

    .prologue
    .line 1115
    new-instance v0, Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-direct {v0, v2}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>(I)V

    .line 1119
    .local v0, curInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->deactive()V

    .line 1121
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->changeToolbarmodeToSKBMode(Lcom/samsung/inputmethod/SimeInputModeDef;)Lcom/samsung/inputmethod/SimeInputModeDef;

    move-result-object v1

    .line 1122
    .local v1, newInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    iget v2, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1123
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v3, 0x1

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1124
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v2
.end method

.method protected configInputMode(Landroid/view/inputmethod/EditorInfo;)V
    .locals 11
    .parameter "editorInfo"

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 2948
    const/4 v3, 0x0

    .line 2950
    .local v3, newInputMode:I
    iput-boolean v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    .line 2954
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v6, :cond_0

    .line 2956
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v6}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2958
    new-instance v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;

    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    sget-object v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getCurLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v7

    invoke-direct {v2, p0, v6, v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;-><init>(Lcom/samsung/inputmethod/SimeInputModeSwitcher;Landroid/view/inputmethod/EditorInfo;Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)V

    .line 2959
    .local v2, modeState:Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;
    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    invoke-virtual {v6, v2}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->getConfigInputMode(Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;)I

    .line 2960
    iget v3, v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;->mode:I

    .line 2961
    iget-boolean v6, v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;->isEditorChoose:Z

    iput-boolean v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    .line 3033
    .end local v2           #modeState:Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;
    :cond_0
    :goto_0
    iget-object v4, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 3040
    .local v4, strPrivateImeOptions:Ljava/lang/String;
    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-virtual {v6, v4}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->setPrivateImeOptionTable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3042
    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->getInputType()I

    move-result v0

    .line 3044
    .local v0, TempInputMode:I
    if-eqz v0, :cond_1

    .line 3045
    move v3, v0

    .line 3046
    iput-boolean v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    .line 3052
    .end local v0           #TempInputMode:I
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 3053
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v6}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3054
    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    iget v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->encodeToolBarInfo(I)V

    .line 3059
    :cond_2
    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v8, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v6, v10, v7, v8, v9}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 3061
    return-void

    .line 2964
    .end local v4           #strPrivateImeOptions:Ljava/lang/String;
    :cond_3
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v6, v6, 0xf

    packed-switch v6, :pswitch_data_0

    .line 3026
    sget v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_0

    .line 2968
    :pswitch_0
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v7, 0xfff000

    and-int v1, v6, v7

    .line 2974
    .local v1, flag:I
    and-int/lit16 v6, v1, 0x1000

    if-lez v6, :cond_4

    and-int/lit16 v6, v1, 0x2000

    if-lez v6, :cond_4

    .line 2975
    const v3, -0x4dffffd0

    .line 2983
    :goto_1
    iput-boolean v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    goto :goto_0

    .line 2976
    :cond_4
    and-int/lit16 v6, v1, 0x1000

    if-lez v6, :cond_5

    .line 2977
    const v3, -0x4dffffe0

    goto :goto_1

    .line 2978
    :cond_5
    and-int/lit16 v6, v1, 0x2000

    if-lez v6, :cond_6

    .line 2979
    const v3, -0x4dfffff0

    goto :goto_1

    .line 2981
    :cond_6
    const v3, -0x7effe000

    goto :goto_1

    .line 2990
    .end local v1           #flag:I
    :pswitch_1
    const v3, -0x7effe000

    .line 2991
    iput-boolean v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    goto :goto_0

    .line 2996
    :pswitch_2
    const/high16 v3, 0x5200

    .line 2997
    iput-boolean v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    goto :goto_0

    .line 3002
    :pswitch_3
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v5, v6, 0xff0

    .line 3003
    .local v5, v:I
    const/16 v6, 0x20

    if-eq v5, v6, :cond_7

    const/16 v6, 0x80

    if-eq v5, v6, :cond_7

    if-eq v5, v8, :cond_7

    const/16 v6, 0xe0

    if-eq v5, v6, :cond_7

    const/16 v6, 0x90

    if-eq v5, v6, :cond_7

    if-ne v5, v8, :cond_8

    .line 3009
    :cond_7
    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v3

    .line 3010
    iput-boolean v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    goto/16 :goto_0

    .line 3019
    :cond_8
    sget v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 3023
    goto/16 :goto_0

    .line 2964
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getEnterKeyNormalState()Z
    .locals 1

    .prologue
    .line 3233
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEnterKeyNormal:Z

    return v0
.end method

.method public getInputMode()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    return v0
.end method

.method protected getLangByMask(I)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 1
    .parameter "langMask"

    .prologue
    .line 276
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 277
    .local v0, langEnum:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    sparse-switch p1, :sswitch_data_0

    .line 296
    :goto_0
    return-object v0

    .line 279
    :sswitch_0
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 280
    goto :goto_0

    .line 282
    :sswitch_1
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_KOR:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 283
    goto :goto_0

    .line 285
    :sswitch_2
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_SCHN:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 286
    goto :goto_0

    .line 288
    :sswitch_3
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_TW:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 289
    goto :goto_0

    .line 291
    :sswitch_4
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_HK:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 292
    goto :goto_0

    .line 277
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_4
    .end sparse-switch
.end method

.method public getLastMainInputMode()I
    .locals 1

    .prologue
    .line 392
    sget v0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    return v0
.end method

.method protected getMaskByLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I
    .locals 3
    .parameter "langEnum"

    .prologue
    .line 302
    const/high16 v0, 0x1

    .line 304
    .local v0, langMask:I
    sget-object v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher$1;->$SwitchMap$com$samsung$inputmethod$SimeLanguageMgr$ImeLang:[I

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 325
    :goto_0
    return v0

    .line 306
    :pswitch_0
    const/high16 v0, 0x1

    .line 307
    goto :goto_0

    .line 309
    :pswitch_1
    const/high16 v0, 0x3

    .line 310
    goto :goto_0

    .line 312
    :pswitch_2
    const/high16 v0, 0x2

    .line 313
    goto :goto_0

    .line 315
    :pswitch_3
    const/high16 v0, 0x4

    .line 316
    goto :goto_0

    .line 318
    :pswitch_4
    const/high16 v0, 0x5

    .line 319
    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getSettingLangbyLangEnum(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I
    .locals 3
    .parameter "langEnum"

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, settingLangVal:I
    sget-object v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher$1;->$SwitchMap$com$samsung$inputmethod$SimeLanguageMgr$ImeLang:[I

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 352
    :goto_0
    return v0

    .line 335
    :pswitch_0
    const/4 v0, 0x0

    .line 336
    goto :goto_0

    .line 338
    :pswitch_1
    const/4 v0, 0x2

    .line 339
    goto :goto_0

    .line 341
    :pswitch_2
    const/4 v0, 0x1

    .line 342
    goto :goto_0

    .line 344
    :pswitch_3
    const/4 v0, 0x3

    .line 345
    goto :goto_0

    .line 347
    :pswitch_4
    const/4 v0, 0x4

    .line 348
    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getSettingLangbyLangMask(I)I
    .locals 1
    .parameter "langMask"

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, settingLangVal:I
    sparse-switch p1, :sswitch_data_0

    .line 379
    :goto_0
    return v0

    .line 362
    :sswitch_0
    const/4 v0, 0x0

    .line 363
    goto :goto_0

    .line 365
    :sswitch_1
    const/4 v0, 0x2

    .line 366
    goto :goto_0

    .line 368
    :sswitch_2
    const/4 v0, 0x1

    .line 369
    goto :goto_0

    .line 371
    :sswitch_3
    const/4 v0, 0x3

    .line 372
    goto :goto_0

    .line 374
    :sswitch_4
    const/4 v0, 0x4

    .line 375
    goto :goto_0

    .line 360
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_4
    .end sparse-switch
.end method

.method public getSkbLayout()I
    .locals 11

    .prologue
    const v4, 0x7f040054

    const v5, 0x7f040051

    const/16 v10, 0x2000

    const/16 v9, 0x1000

    const v8, 0xf000

    .line 401
    iget v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v7, 0xf00

    and-int v3, v6, v7

    .line 402
    .local v3, layout:I
    iget v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v7, 0xf

    and-int v2, v6, v7

    .line 403
    .local v2, language:I
    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const/4 v1, 0x1

    .line 406
    .local v1, isLandscape:Z
    :goto_0
    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v6, v7, :cond_0

    .line 407
    const/4 v1, 0x0

    .line 409
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 411
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v6}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 413
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v4}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->getToolbarSkbLayout(I)I

    move-result v4

    .line 1023
    :cond_1
    :goto_1
    return v4

    .line 403
    .end local v0           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .end local v1           #isLandscape:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 416
    .restart local v0       #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .restart local v1       #isLandscape:Z
    :cond_3
    sparse-switch v3, :sswitch_data_0

    .line 1023
    const/4 v4, 0x0

    goto :goto_1

    .line 419
    :sswitch_0
    iget v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v7, -0x1000

    and-int/2addr v6, v7

    sparse-switch v6, :sswitch_data_1

    .line 631
    :sswitch_1
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v5, -0x1000

    and-int/2addr v4, v5

    sparse-switch v4, :sswitch_data_2

    .line 793
    :goto_2
    :sswitch_2
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_49

    .line 794
    const v4, 0x7f040021

    goto :goto_1

    .line 421
    :sswitch_3
    const/high16 v4, 0x3

    if-ne v2, v4, :cond_9

    .line 422
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_SW359DP:Z

    if-eqz v4, :cond_5

    .line 423
    if-eqz v1, :cond_4

    .line 424
    const v4, 0x7f040029

    goto :goto_1

    .line 426
    :cond_4
    const v4, 0x7f040025

    goto :goto_1

    .line 428
    :cond_5
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_7

    .line 429
    if-eqz v1, :cond_6

    .line 430
    const v4, 0x7f040028

    goto :goto_1

    .line 432
    :cond_6
    const v4, 0x7f040027

    goto :goto_1

    .line 435
    :cond_7
    if-eqz v1, :cond_8

    .line 436
    const v4, 0x7f040026

    goto :goto_1

    .line 438
    :cond_8
    const v4, 0x7f040025

    goto :goto_1

    .line 454
    :cond_9
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_SW359DP:Z

    if-eqz v4, :cond_b

    .line 455
    if-eqz v1, :cond_a

    .line 456
    const v4, 0x7f040045

    goto :goto_1

    .line 458
    :cond_a
    const v4, 0x7f040041

    goto :goto_1

    .line 460
    :cond_b
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_d

    .line 461
    if-eqz v1, :cond_c

    .line 462
    const v4, 0x7f040044

    goto :goto_1

    .line 464
    :cond_c
    const v4, 0x7f040043

    goto :goto_1

    .line 467
    :cond_d
    if-eqz v1, :cond_e

    .line 468
    const v4, 0x7f040042

    goto :goto_1

    .line 470
    :cond_e
    const v4, 0x7f040041

    goto :goto_1

    .line 477
    :sswitch_4
    iget v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v6, v8

    if-ne v9, v6, :cond_15

    .line 485
    if-eqz v1, :cond_11

    .line 486
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v5, :cond_f

    .line 488
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMainInputIsQwertyZhuyin()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    .line 495
    :cond_f
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMainInputIsQwertyZhuyin()Z

    move-result v5

    if-nez v5, :cond_1

    .line 499
    :cond_10
    const v4, 0x7f040050

    goto/16 :goto_1

    .line 504
    :cond_11
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_13

    .line 506
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMainInputIsQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v5

    .line 508
    goto/16 :goto_1

    :cond_12
    move v4, v5

    .line 510
    goto/16 :goto_1

    .line 513
    :cond_13
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    if-eqz v4, :cond_14

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMainInputIsQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_14

    move v4, v5

    .line 515
    goto/16 :goto_1

    .line 517
    :cond_14
    const v4, 0x7f04004a

    goto/16 :goto_1

    .line 522
    :cond_15
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v8

    if-ne v10, v4, :cond_1d

    .line 530
    if-eqz v1, :cond_19

    .line 531
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_17

    .line 533
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMainInputIsQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 535
    const v4, 0x7f04005d

    goto/16 :goto_1

    .line 537
    :cond_16
    const v4, 0x7f04005d

    goto/16 :goto_1

    .line 540
    :cond_17
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    if-eqz v4, :cond_18

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMainInputIsQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 542
    const v4, 0x7f04005d

    goto/16 :goto_1

    .line 544
    :cond_18
    const v4, 0x7f040059

    goto/16 :goto_1

    .line 547
    :cond_19
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_1b

    .line 549
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMainInputIsQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 551
    const v4, 0x7f04005a

    goto/16 :goto_1

    .line 553
    :cond_1a
    const v4, 0x7f04005a

    goto/16 :goto_1

    .line 556
    :cond_1b
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    if-eqz v4, :cond_1c

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMainInputIsQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 558
    const v4, 0x7f04005a

    goto/16 :goto_1

    .line 560
    :cond_1c
    const v4, 0x7f040055

    goto/16 :goto_1

    .line 563
    :cond_1d
    const/16 v4, 0x3000

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v8

    if-ne v4, v5, :cond_1f

    .line 564
    if-eqz v1, :cond_1e

    .line 565
    const v4, 0x7f040061

    goto/16 :goto_1

    .line 567
    :cond_1e
    const v4, 0x7f04005e

    goto/16 :goto_1

    .line 569
    :cond_1f
    const/16 v4, 0x4000

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v8

    if-ne v4, v5, :cond_21

    .line 570
    if-eqz v1, :cond_20

    .line 571
    const v4, 0x7f040067

    goto/16 :goto_1

    .line 573
    :cond_20
    const v4, 0x7f040062

    goto/16 :goto_1

    .line 593
    :cond_21
    :sswitch_5
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v8

    if-ne v9, v4, :cond_23

    .line 594
    if-eqz v1, :cond_22

    .line 595
    const v4, 0x7f04001b

    goto/16 :goto_1

    .line 597
    :cond_22
    const v4, 0x7f04001a

    goto/16 :goto_1

    .line 599
    :cond_23
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v8

    if-ne v10, v4, :cond_25

    .line 600
    if-eqz v1, :cond_24

    .line 601
    const v4, 0x7f040080

    goto/16 :goto_1

    .line 603
    :cond_24
    const v4, 0x7f04007f

    goto/16 :goto_1

    .line 608
    :cond_25
    :sswitch_6
    if-eqz v1, :cond_26

    .line 609
    const v4, 0x7f040084

    goto/16 :goto_1

    .line 611
    :cond_26
    const v4, 0x7f040081

    goto/16 :goto_1

    .line 615
    :sswitch_7
    if-eqz v1, :cond_29

    .line 616
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_SW359DP:Z

    if-eqz v4, :cond_27

    .line 617
    const v4, 0x7f04000f

    goto/16 :goto_1

    .line 618
    :cond_27
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_28

    .line 619
    const v4, 0x7f04000e

    goto/16 :goto_1

    .line 621
    :cond_28
    const v4, 0x7f04000c

    goto/16 :goto_1

    .line 623
    :cond_29
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_2a

    .line 624
    const v4, 0x7f04000d

    goto/16 :goto_1

    .line 626
    :cond_2a
    const v4, 0x7f040009

    goto/16 :goto_1

    .line 633
    :sswitch_8
    const/high16 v4, 0x3

    if-ne v2, v4, :cond_2c

    .line 634
    if-eqz v1, :cond_2b

    .line 635
    const v4, 0x7f040024

    goto/16 :goto_1

    .line 637
    :cond_2b
    const v4, 0x7f040023

    goto/16 :goto_1

    .line 640
    :cond_2c
    const/high16 v4, 0x1

    if-ne v2, v4, :cond_30

    .line 641
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v5, 0xf0

    and-int/2addr v4, v5

    const/high16 v5, 0x10

    if-ne v4, v5, :cond_2e

    .line 642
    if-eqz v1, :cond_2d

    .line 643
    const v4, 0x7f040019

    goto/16 :goto_1

    .line 645
    :cond_2d
    const v4, 0x7f040018

    goto/16 :goto_1

    .line 649
    :cond_2e
    if-eqz v1, :cond_2f

    .line 650
    const v4, 0x7f04001d

    goto/16 :goto_1

    .line 652
    :cond_2f
    const v4, 0x7f04001c

    goto/16 :goto_1

    .line 664
    :cond_30
    if-eqz v1, :cond_31

    .line 665
    const v4, 0x7f040040

    goto/16 :goto_1

    .line 667
    :cond_31
    const v4, 0x7f04003f

    goto/16 :goto_1

    .line 672
    :sswitch_9
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v8

    if-ne v9, v4, :cond_33

    .line 673
    if-eqz v1, :cond_32

    .line 674
    const v4, 0x7f04004d

    goto/16 :goto_1

    .line 676
    :cond_32
    const v4, 0x7f04004b

    goto/16 :goto_1

    .line 679
    :cond_33
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v8

    if-ne v10, v4, :cond_35

    .line 680
    if-eqz v1, :cond_34

    .line 681
    const v4, 0x7f040057

    goto/16 :goto_1

    .line 683
    :cond_34
    const v4, 0x7f040056

    goto/16 :goto_1

    .line 686
    :cond_35
    const/16 v4, 0x3000

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v8

    if-ne v4, v5, :cond_37

    .line 687
    if-eqz v1, :cond_36

    .line 688
    const v4, 0x7f040060

    goto/16 :goto_1

    .line 690
    :cond_36
    const v4, 0x7f04005f

    goto/16 :goto_1

    .line 693
    :cond_37
    const/16 v4, 0x4000

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v8

    if-ne v4, v5, :cond_39

    .line 694
    if-eqz v1, :cond_38

    .line 695
    const v4, 0x7f040065

    goto/16 :goto_1

    .line 697
    :cond_38
    const v4, 0x7f040063

    goto/16 :goto_1

    .line 700
    :cond_39
    const/16 v4, 0x5000

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v8

    if-ne v4, v5, :cond_3b

    .line 701
    if-eqz v1, :cond_3a

    .line 702
    const v4, 0x7f04006a

    goto/16 :goto_1

    .line 704
    :cond_3a
    const v4, 0x7f040068

    goto/16 :goto_1

    .line 707
    :cond_3b
    const/16 v4, 0x6000

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v8

    if-ne v4, v5, :cond_3d

    .line 708
    if-eqz v1, :cond_3c

    .line 709
    const v4, 0x7f04006d

    goto/16 :goto_1

    .line 711
    :cond_3c
    const v4, 0x7f04006c

    goto/16 :goto_1

    .line 714
    :cond_3d
    const/16 v4, 0x7000

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v8

    if-ne v4, v5, :cond_3e

    .line 715
    if-eqz v1, :cond_3e

    .line 723
    :cond_3e
    :sswitch_a
    if-eqz v1, :cond_41

    .line 724
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v5, 0x3205

    if-ne v4, v5, :cond_40

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v4

    const/16 v5, 0x140

    if-eq v4, v5, :cond_3f

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v4

    const/16 v5, 0xf0

    if-ne v4, v5, :cond_40

    .line 725
    :cond_3f
    const v4, 0x7f040048

    goto/16 :goto_1

    .line 727
    :cond_40
    const v4, 0x7f040049

    goto/16 :goto_1

    .line 729
    :cond_41
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v5, 0x3205

    if-ne v4, v5, :cond_43

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v4

    const/16 v5, 0x140

    if-eq v4, v5, :cond_42

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v4

    const/16 v5, 0xf0

    if-ne v4, v5, :cond_43

    .line 730
    :cond_42
    const v4, 0x7f040047

    goto/16 :goto_1

    .line 732
    :cond_43
    const v4, 0x7f040046

    goto/16 :goto_1

    .line 739
    :sswitch_b
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_INCLUDE_HKTW_LANGUAGE:Z

    if-eqz v4, :cond_44

    .line 740
    const v4, 0x7f04003b

    goto/16 :goto_1

    .line 741
    :cond_44
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->imIsHKTWModel()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 742
    const v4, 0x7f04003d

    goto/16 :goto_1

    .line 744
    :cond_45
    const v4, 0x7f04003b

    goto/16 :goto_1

    .line 748
    :sswitch_c
    if-eqz v1, :cond_46

    .line 749
    const v4, 0x7f040037

    goto/16 :goto_1

    .line 751
    :cond_46
    const v4, 0x7f040036

    goto/16 :goto_1

    .line 756
    :sswitch_d
    if-eqz v1, :cond_47

    .line 757
    const v4, 0x7f040083

    goto/16 :goto_1

    .line 759
    :cond_47
    const v4, 0x7f040082

    goto/16 :goto_1

    .line 763
    :sswitch_e
    if-eqz v1, :cond_48

    .line 764
    const v4, 0x7f04000b

    goto/16 :goto_1

    .line 766
    :cond_48
    const v4, 0x7f04000a

    goto/16 :goto_1

    .line 771
    :sswitch_f
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/lit16 v4, v4, 0xf0

    sparse-switch v4, :sswitch_data_3

    goto/16 :goto_2

    .line 776
    :sswitch_10
    const v4, 0x7f040038

    goto/16 :goto_1

    .line 774
    :sswitch_11
    const v4, 0x7f04003a

    goto/16 :goto_1

    .line 778
    :sswitch_12
    const v4, 0x7f040039

    goto/16 :goto_1

    .line 796
    :cond_49
    const v4, 0x7f04001e

    goto/16 :goto_1

    .line 798
    :sswitch_13
    if-eqz v1, :cond_4a

    .line 799
    const v4, 0x7f040020

    goto/16 :goto_1

    .line 801
    :cond_4a
    const v4, 0x7f04001f

    goto/16 :goto_1

    .line 416
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_1
        0x3000000 -> :sswitch_2
        0x4000000 -> :sswitch_13
    .end sparse-switch

    .line 419
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_5
        -0x70000000 -> :sswitch_7
        -0x60000000 -> :sswitch_7
        0x10000000 -> :sswitch_3
        0x20000000 -> :sswitch_6
        0x60000000 -> :sswitch_4
    .end sparse-switch

    .line 631
    :sswitch_data_2
    .sparse-switch
        -0x70000000 -> :sswitch_e
        -0x60000000 -> :sswitch_e
        -0x50000000 -> :sswitch_f
        0x10000000 -> :sswitch_8
        0x20000000 -> :sswitch_d
        0x30000000 -> :sswitch_a
        0x50000000 -> :sswitch_b
        0x60000000 -> :sswitch_9
        0x70000000 -> :sswitch_c
    .end sparse-switch

    .line 771
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_10
        0x20 -> :sswitch_12
        0x30 -> :sswitch_11
    .end sparse-switch
.end method

.method public getSkbRowNumber()I
    .locals 4

    .prologue
    .line 3935
    const/4 v0, 0x4

    .line 3936
    .local v0, count:I
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    .line 3941
    .local v1, isLandscape:Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonth()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTime()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 3942
    :cond_1
    const/4 v0, 0x2

    .line 3967
    :cond_2
    :goto_1
    return v0

    .line 3936
    .end local v1           #isLandscape:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 3950
    .restart local v1       #isLandscape:Z
    :cond_4
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v2}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3952
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbolWithSkb()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v2}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSHOWSkb(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3953
    :cond_5
    const/4 v0, 0x4

    goto :goto_1

    .line 3955
    :cond_6
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public getToggleStateForEnter()I
    .locals 2

    .prologue
    .line 3226
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->getToggleStateForEnter(Landroid/view/inputmethod/EditorInfo;)I

    move-result v0

    return v0
.end method

.method public getToggleStateForZhuyinTone()I
    .locals 1

    .prologue
    .line 3221
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->getToggleStateForZhuyinTone()I

    move-result v0

    return v0
.end method

.method public getToggleStates()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->getToggleStates()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-result-object v0

    return-object v0
.end method

.method public getTooggleStateForCnCand()I
    .locals 1

    .prologue
    .line 3217
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->getTooggleStateForCnCand()I

    move-result v0

    return v0
.end method

.method public getToolbarModeMgr()Lcom/samsung/inputmethod/SimeToolBarModeMgr;
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    return-object v0
.end method

.method public is123Symbol()Z
    .locals 1

    .prologue
    .line 3728
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123SymMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is34Cangjie()Z
    .locals 3

    .prologue
    .line 3848
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x7000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3849
    const/4 v0, 0x1

    .line 3851
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is34English()Z
    .locals 3

    .prologue
    .line 3648
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3650
    const/4 v0, 0x1

    .line 3652
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is34Keyboard()Z
    .locals 3

    .prologue
    .line 3420
    const/high16 v0, 0x200

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf00

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is34Korean()Z
    .locals 3

    .prologue
    .line 3676
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3678
    const/4 v0, 0x1

    .line 3680
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is34Pinyin()Z
    .locals 3

    .prologue
    .line 3657
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x2

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3659
    const/4 v0, 0x1

    .line 3661
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is34Stroke()Z
    .locals 3

    .prologue
    const/high16 v2, 0xf

    .line 3666
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isStrokeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x2

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x4

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x5

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 3669
    :cond_0
    const/4 v0, 0x1

    .line 3671
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is34Zhuyin()Z
    .locals 3

    .prologue
    .line 3840
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x2000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3841
    const/4 v0, 0x1

    .line 3843
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoComplete()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4846
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 4848
    :cond_0
    :goto_0
    return v1

    .line 4847
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v3, 0xfff000

    and-int v0, v2, v3

    .line 4848
    .local v0, flag:I
    const/high16 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCangjieMode()Z
    .locals 3

    .prologue
    .line 3864
    const/high16 v0, -0x7000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3865
    const/4 v0, 0x1

    .line 3867
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChineseHKTextWithSkb()Z
    .locals 3

    .prologue
    .line 3366
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3367
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int v0, v1, v2

    .line 3368
    .local v0, language:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x5

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    .line 3370
    .end local v0           #language:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isChineseHkLanguage()Z
    .locals 3

    .prologue
    .line 3271
    const/high16 v0, 0x5

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3272
    const/4 v0, 0x1

    .line 3274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChineseLanguage()Z
    .locals 3

    .prologue
    .line 3257
    const/high16 v0, 0x2

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3258
    const/4 v0, 0x1

    .line 3260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChineseSymbolSkb()Z
    .locals 3

    .prologue
    .line 3390
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3391
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int v0, v1, v2

    .line 3392
    .local v0, language:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x2

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x4

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x5

    if-ne v1, v0, :cond_1

    .line 3393
    :cond_0
    const/4 v1, 0x1

    .line 3395
    .end local v0           #language:I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isChineseTWTextWithSkb()Z
    .locals 3

    .prologue
    .line 3373
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3374
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int v0, v1, v2

    .line 3375
    .local v0, language:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x4

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    .line 3377
    .end local v0           #language:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isChineseText()Z
    .locals 3

    .prologue
    .line 3344
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int v0, v1, v2

    .line 3345
    .local v0, language:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, 0x2

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x4

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x5

    if-ne v1, v0, :cond_1

    .line 3346
    :cond_0
    const/4 v1, 0x1

    .line 3348
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isChineseTextWithHkb()Z
    .locals 2

    .prologue
    .line 3352
    const/high16 v0, 0x2

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChineseTextWithSkb()Z
    .locals 3

    .prologue
    .line 3356
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3357
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int v0, v1, v2

    .line 3358
    .local v0, language:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, 0x2

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x4

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x5

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 3360
    .end local v0           #language:I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isChineseTwLanguage()Z
    .locals 3

    .prologue
    .line 3264
    const/high16 v0, 0x4

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3265
    const/4 v0, 0x1

    .line 3267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDateTime()Z
    .locals 1

    .prologue
    .line 3781
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTimeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDynamicCharacterRecognitionEnable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4918
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->miniSymbolScreenon:Z

    .line 4919
    .local v0, isMiniPopup:Z
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    if-nez v2, :cond_1

    .line 4927
    :cond_0
    :goto_0
    return v1

    .line 4923
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isTextClass()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isOneHandModeEnable()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbol()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4925
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEmailEditor()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4826
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 4828
    :cond_0
    :goto_0
    return v1

    .line 4827
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 4828
    .local v0, variation:I
    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEngNumSymModeOnly()Z
    .locals 2

    .prologue
    .line 3769
    const/4 v0, 0x0

    .line 3770
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPassWordEditor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3771
    const/4 v0, 0x1

    .line 3775
    :cond_0
    return v0
.end method

.method public isEnglishLanguage()Z
    .locals 3

    .prologue
    .line 3236
    const/high16 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3237
    const/4 v0, 0x1

    .line 3239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnglishSymbolSkb()Z
    .locals 3

    .prologue
    .line 3399
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3400
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int v0, v1, v2

    .line 3401
    .local v0, language:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x1

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x3

    if-ne v1, v0, :cond_1

    .line 3402
    :cond_0
    const/4 v1, 0x1

    .line 3404
    .end local v0           #language:I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnglishTextAbsUpperCaseWithSkb()Z
    .locals 3

    .prologue
    .line 3319
    const/high16 v1, 0xf0

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int v0, v1, v2

    .line 3320
    .local v0, upperCase:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnglishTextLowerCaseWithSkb()Z
    .locals 3

    .prologue
    .line 3309
    const/high16 v1, 0xf0

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int v0, v1, v2

    .line 3310
    .local v0, upperCase:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnglishTextTempUpperCaseWithSkb()Z
    .locals 3

    .prologue
    .line 3314
    const/high16 v1, 0xf0

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int v0, v1, v2

    .line 3315
    .local v0, upperCase:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x30

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnglishTextUpperCaseWithSkb()Z
    .locals 3

    .prologue
    .line 3324
    const/high16 v1, 0xf0

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int v0, v1, v2

    .line 3325
    .local v0, upperCase:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x30

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnglishTextWithHkb()Z
    .locals 2

    .prologue
    .line 3297
    const/high16 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnglishTextWithSkb()Z
    .locals 3

    .prologue
    .line 3301
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3302
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int v0, v1, v2

    .line 3303
    .local v0, language:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    .line 3305
    .end local v0           #language:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnterNoramlState()Z
    .locals 1

    .prologue
    .line 3907
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEnterKeyNormal:Z

    return v0
.end method

.method public isFilterEditor()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4839
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 4841
    :cond_0
    :goto_0
    return v1

    .line 4840
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 4841
    .local v0, variation:I
    const/16 v2, 0xb0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isHFSChinese()Z
    .locals 3

    .prologue
    const/high16 v2, 0xf

    .line 3694
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isStrokeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x2

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x4

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x5

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 3697
    :cond_0
    const/4 v0, 0x1

    .line 3699
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHFSEnglish()Z
    .locals 3

    .prologue
    .line 3685
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isStrokeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3687
    const/4 v0, 0x1

    .line 3689
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHFSKorean()Z
    .locals 3

    .prologue
    .line 3719
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isStrokeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3721
    const/4 v0, 0x1

    .line 3723
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHK()Z
    .locals 3

    .prologue
    .line 3704
    const/high16 v0, 0x5

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3705
    const/4 v0, 0x1

    .line 3707
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandwriteBoxMode()Z
    .locals 3

    .prologue
    .line 3475
    const/high16 v0, 0x400

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf00

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandwriteFSMode()Z
    .locals 3

    .prologue
    .line 3471
    const/high16 v0, 0x300

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf00

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandwriteKeyboard()Z
    .locals 3

    .prologue
    const/high16 v2, 0xf00

    .line 3463
    const/high16 v0, 0x300

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x400

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 3465
    :cond_0
    const/4 v0, 0x1

    .line 3467
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKoreanLanguage()Z
    .locals 3

    .prologue
    .line 3281
    const/high16 v0, 0x3

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3282
    const/4 v0, 0x1

    .line 3284
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKoreanTextLowerCaseWithSkb()Z
    .locals 3

    .prologue
    .line 3339
    const/high16 v1, 0xf0

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int v0, v1, v2

    .line 3340
    .local v0, upperCase:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKoreanTextTempUpperCaseWithSkb()Z
    .locals 3

    .prologue
    .line 3329
    const/high16 v1, 0xf0

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int v0, v1, v2

    .line 3330
    .local v0, upperCase:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x30

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKoreanTextUpperCaseWithSkb()Z
    .locals 3

    .prologue
    .line 3334
    const/high16 v1, 0xf0

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int v0, v1, v2

    .line 3335
    .local v0, upperCase:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKoreanTextWithSkb()Z
    .locals 3

    .prologue
    .line 3382
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3383
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int v0, v1, v2

    .line 3384
    .local v0, language:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x3

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    .line 3386
    .end local v0           #language:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMMSRecipient()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4820
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v1, :cond_1

    .line 4822
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->isMMSRecipient()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMainInputIsQwertyZhuyin()Z
    .locals 3

    .prologue
    .line 3815
    const/high16 v0, 0x100

    sget v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    const/high16 v2, 0xf00

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x2000

    sget v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3817
    const/4 v0, 0x1

    .line 3819
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMonth()Z
    .locals 1

    .prologue
    .line 3748
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonthMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoSuggestions()Z
    .locals 4

    .prologue
    const/high16 v3, 0x8

    const/4 v1, 0x0

    .line 4853
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 4855
    :cond_0
    :goto_0
    return v1

    .line 4854
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int v0, v2, v3

    .line 4855
    .local v0, flag:I
    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNumOnly()Z
    .locals 1

    .prologue
    .line 3740
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumOnlyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumSymModeOnly()Z
    .locals 2

    .prologue
    .line 3755
    const/4 v0, 0x0

    .line 3756
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3757
    const/4 v0, 0x1

    .line 3761
    :cond_0
    return v0
.end method

.method public isNumberClass()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4866
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 4868
    :cond_0
    :goto_0
    return v1

    .line 4867
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v2, 0xf

    .line 4868
    .local v0, type:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOneHandModeEnable()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4908
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ONE_HAND_FEATURE:Z

    if-nez v3, :cond_1

    .line 4914
    :cond_0
    :goto_0
    return v1

    .line 4910
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_samsungkeypad_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4911
    .local v0, iOneHandMode:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 4912
    goto :goto_0
.end method

.method public isPassWordEditor()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4776
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v3, :cond_1

    .line 4790
    :cond_0
    :goto_0
    return v1

    .line 4777
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v3, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v3, 0xff0

    .line 4779
    .local v0, v:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isTextClass()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4780
    const/16 v3, 0x80

    if-eq v0, v3, :cond_2

    const/16 v3, 0xe0

    if-eq v0, v3, :cond_2

    const/16 v3, 0x90

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    .line 4783
    goto :goto_0

    .line 4785
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumberClass()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4786
    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    move v1, v2

    .line 4787
    goto :goto_0
.end method

.method public isPhone()Z
    .locals 1

    .prologue
    .line 3744
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPinyinMode()Z
    .locals 3

    .prologue
    .line 3797
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x2

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3798
    const/4 v0, 0x1

    .line 3800
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickCangjieMode()Z
    .locals 3

    .prologue
    .line 3872
    const/high16 v0, -0x6000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3873
    const/4 v0, 0x1

    .line 3875
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQwertyCangjie()Z
    .locals 3

    .prologue
    .line 3824
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x7000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3825
    const/4 v0, 0x1

    .line 3827
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQwertyEnglish()Z
    .locals 3

    .prologue
    .line 3592
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3594
    const/4 v0, 0x1

    .line 3596
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQwertyKeyboard()Z
    .locals 3

    .prologue
    .line 3451
    const/high16 v0, 0x100

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf00

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQwertyKorean()Z
    .locals 3

    .prologue
    .line 3639
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3641
    const/4 v0, 0x1

    .line 3643
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQwertyPinyin()Z
    .locals 3

    .prologue
    .line 3629
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x2

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3631
    const/4 v0, 0x1

    .line 3633
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQwertyQuickCangjie()Z
    .locals 3

    .prologue
    .line 3832
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x6000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3833
    const/4 v0, 0x1

    .line 3835
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQwertyZhuyin()Z
    .locals 3

    .prologue
    .line 3808
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x2000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3809
    const/4 v0, 0x1

    .line 3811
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearchEditor()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4812
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 4817
    :cond_0
    :goto_0
    return v1

    .line 4816
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v3, 0x400000ff

    and-int v0, v2, v3

    .line 4817
    .local v0, action:I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSearchKeyboard()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3924
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 3930
    :cond_0
    :goto_0
    return v1

    .line 3925
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v3, 0x400000ff

    and-int v0, v2, v3

    .line 3927
    .local v0, action:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 3928
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSingleKeypadType()Z
    .locals 1

    .prologue
    .line 3553
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonth()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTime()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSkbInOneHandMode()Z
    .locals 8

    .prologue
    const/high16 v7, 0x300

    const/4 v1, 0x1

    const/high16 v6, -0x1000

    const/high16 v5, 0xf00

    const/4 v2, 0x0

    .line 4884
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 4885
    .local v0, isLandscape:Z
    :goto_0
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v3, v5

    if-eq v7, v3, :cond_0

    const/high16 v3, 0x400

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_3

    :cond_0
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v3, v6

    const/high16 v4, 0x6000

    if-ne v3, v4, :cond_3

    .line 4904
    :cond_1
    :goto_1
    return v2

    .end local v0           #isLandscape:Z
    :cond_2
    move v0, v2

    .line 4884
    goto :goto_0

    .line 4892
    .restart local v0       #isLandscape:Z
    :cond_3
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    and-int/2addr v3, v5

    if-eq v3, v7, :cond_4

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    and-int/2addr v3, v5

    const/high16 v4, 0x400

    if-ne v3, v4, :cond_5

    :cond_4
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v3, v6

    const/high16 v4, 0x6000

    if-eq v3, v4, :cond_1

    .line 4899
    :cond_5
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_6
    move v2, v1

    .line 4901
    goto :goto_1
.end method

.method public isSymMode()Z
    .locals 3

    .prologue
    .line 3585
    const/high16 v0, 0x6000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3586
    const/4 v0, 0x1

    .line 3588
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbol()Z
    .locals 1

    .prologue
    .line 3732
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolLock()Z
    .locals 1

    .prologue
    .line 3915
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSymbolLock:Z

    return v0
.end method

.method public isSymbolWithSkb()Z
    .locals 4

    .prologue
    const/high16 v3, -0x1000

    .line 3409
    const/4 v0, 0x0

    .line 3411
    .local v0, bRet:Z
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x6000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x5000

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf0

    and-int/2addr v1, v2

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 3414
    :cond_0
    const/4 v0, 0x1

    .line 3416
    :cond_1
    return v0
.end method

.method public isT934English()Z
    .locals 3

    .prologue
    .line 3620
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mT9On:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3621
    const/4 v0, 0x1

    .line 3624
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isT9English()Z
    .locals 3

    .prologue
    .line 3601
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mT9On:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 3602
    const/4 v0, 0x1

    .line 3605
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isT9On()Z
    .locals 1

    .prologue
    .line 3911
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mT9On:Z

    return v0
.end method

.method public isT9QwertyEnglish()Z
    .locals 3

    .prologue
    .line 3611
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mT9On:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3612
    const/4 v0, 0x1

    .line 3615
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTW()Z
    .locals 3

    .prologue
    .line 3711
    const/high16 v0, 0x4

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3712
    const/4 v0, 0x1

    .line 3714
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextClass()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4860
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v3, :cond_0

    .line 4862
    :goto_0
    return v2

    .line 4861
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v3, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v3, 0xf

    .line 4862
    .local v0, type:I
    if-ne v0, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isToolBARSkb()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3881
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isURLEditor()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4795
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 4797
    :cond_0
    :goto_0
    return v1

    .line 4796
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 4797
    .local v0, variation:I
    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isURLMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3784
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 3786
    :cond_0
    :goto_0
    return v1

    .line 3785
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 3786
    .local v0, variation:I
    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUrlSuffixShown()Z
    .locals 1

    .prologue
    .line 3919
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mUrlSuffixShow:Z

    return v0
.end method

.method public isWebEditor()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4802
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 4804
    :cond_0
    :goto_0
    return v1

    .line 4803
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 4804
    .local v0, variation:I
    const/16 v2, 0xa0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isZhuyinMode()Z
    .locals 3

    .prologue
    .line 3856
    const/high16 v0, 0x2000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3857
    const/4 v0, 0x1

    .line 3859
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needAutoSpace()Z
    .locals 1

    .prologue
    .line 4872
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPassWordEditor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isFilterEditor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isAutoComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4874
    :cond_0
    const/4 v0, 0x0

    .line 4876
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerLangChangeNotifier(Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;)V
    .locals 1
    .parameter "iLangNotifier"

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    sget-object v0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->registerCallBack(Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;)V

    .line 270
    :cond_0
    return-void
.end method

.method public requestBackToPreviousSkb(Z)I
    .locals 6
    .parameter "isShiftKeyRequest"

    .prologue
    const/high16 v4, 0xf00

    const/4 v5, 0x1

    const/high16 v3, -0x1000

    .line 3187
    const/4 v0, 0x0

    .line 3188
    .local v0, previousMode:I
    iget-boolean v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    if-nez v1, :cond_1

    .line 3189
    iget v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    .line 3190
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x6000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x7000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x5000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v3

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v3

    const/high16 v2, -0x5000

    if-ne v1, v2, :cond_1

    .line 3196
    :cond_0
    iput-boolean v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    .line 3199
    :cond_1
    if-eqz p1, :cond_2

    .line 3200
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0x1231

    if-ne v1, v2, :cond_4

    .line 3201
    const/high16 v0, 0x1211

    .line 3207
    :cond_2
    :goto_0
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_3

    and-int v1, v0, v4

    if-eqz v1, :cond_3

    .line 3210
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 3212
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 3213
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v1

    .line 3202
    :cond_4
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0x1131

    if-ne v1, v2, :cond_2

    .line 3203
    const/high16 v0, 0x1111

    goto :goto_0
.end method

.method public requestInputWithHkb(Landroid/view/inputmethod/EditorInfo;Z)I
    .locals 1
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    const/4 v0, 0x0

    .line 3065
    iput-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    .line 3066
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 3067
    iput-boolean p2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRestarting:Z

    .line 3068
    iput v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    .line 3072
    if-nez p2, :cond_0

    .line 3073
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->configInputMode(Landroid/view/inputmethod/EditorInfo;)V

    .line 3075
    :cond_0
    iget v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v0
.end method

.method public requestInputWithSkb(Landroid/view/inputmethod/EditorInfo;Z)I
    .locals 7
    .parameter "editorInfo"
    .parameter "isMainModeChanged"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 3133
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 3134
    const/4 v1, 0x0

    .line 3135
    .local v1, newInputMode:I
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPrediction()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mT9On:Z

    .line 3136
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPassWordEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3137
    iput-boolean v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mT9On:Z

    .line 3140
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->isConfigureChange()Z

    move-result v0

    .line 3141
    .local v0, isConfigureChange:Z
    if-eqz v0, :cond_1

    .line 3142
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->resetConfigureChange()V

    .line 3144
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRestarting:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 3155
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-nez v2, :cond_2

    .line 3156
    sget v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 3158
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 3159
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 3160
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    .line 3176
    :goto_0
    return v2

    .line 3161
    :cond_2
    if-nez p2, :cond_3

    .line 3163
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 3164
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto :goto_0

    .line 3173
    :cond_3
    iput-boolean v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mUrlSuffixShow:Z

    .line 3175
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->configInputMode(Landroid/view/inputmethod/EditorInfo;)V

    .line 3176
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto :goto_0
.end method

.method public resetFlags()V
    .locals 1

    .prologue
    .line 4771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mUrlSuffixShow:Z

    .line 4772
    return-void
.end method

.method public setEngterKeyNormalState(Z)V
    .locals 0
    .parameter "bNormal"

    .prologue
    .line 3230
    iput-boolean p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEnterKeyNormal:Z

    .line 3231
    return-void
.end method

.method public setUrlSuffixShown(Z)V
    .locals 0
    .parameter "bShown"

    .prologue
    .line 4285
    iput-boolean p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mUrlSuffixShow:Z

    .line 4286
    return-void
.end method

.method public switchLanguageWithHkb()I
    .locals 3

    .prologue
    .line 1028
    const/high16 v0, 0x2

    .line 1031
    .local v0, newInputMode:I
    const/high16 v1, 0x2

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v1, v2, :cond_0

    .line 1032
    const/high16 v0, 0x1

    .line 1036
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1037
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v1
.end method

.method public switchModeBySelectLanguage(I)I
    .locals 6
    .parameter "languageMask"

    .prologue
    const/4 v5, 0x1

    .line 1930
    const/4 v0, 0x0

    .line 1931
    .local v0, newInputMode:I
    sparse-switch p1, :sswitch_data_0

    .line 1948
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1949
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1950
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v1

    .line 1933
    :sswitch_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v0

    .line 1934
    goto :goto_0

    .line 1936
    :sswitch_1
    invoke-static {v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v0

    .line 1937
    goto :goto_0

    .line 1939
    :sswitch_2
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v0

    .line 1940
    goto :goto_0

    .line 1942
    :sswitch_3
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v0

    .line 1943
    goto :goto_0

    .line 1945
    :sswitch_4
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v0

    goto :goto_0

    .line 1931
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_2
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_3
    .end sparse-switch
.end method

.method public switchModeBySettings()Z
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/high16 v9, 0xf00

    .line 4376
    const/4 v0, 0x0

    .line 4377
    .local v0, bRet:Z
    sget v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    const/high16 v8, 0xf

    and-int v1, v7, v8

    .line 4378
    .local v1, language:I
    sget v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    and-int v2, v7, v9

    .line 4380
    .local v2, layout:I
    sget-boolean v7, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_LANG_MGR:Z

    if-eqz v7, :cond_4

    .line 4381
    move v3, v1

    .line 4382
    .local v3, newLangMask:I
    move v4, v2

    .line 4385
    .local v4, newLayoutMask:I
    sget-object v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeLanguageMgr;->isValidLangChanged()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4387
    sget-object v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeLanguageMgr;->reInitialize()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4388
    const/4 v0, 0x1

    .line 4389
    sget-object v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getCurLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getMaskByLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I

    move-result v3

    .line 4401
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 4404
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSettingLangbyLangMask(I)I

    move-result v5

    .line 4406
    .local v5, settingLang:I
    invoke-static {v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4505
    .end local v3           #newLangMask:I
    .end local v4           #newLayoutMask:I
    .end local v5           #settingLang:I
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 4507
    sget v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    iput v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    .line 4508
    sget v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    iput v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    .line 4512
    :cond_2
    return v0

    .line 4393
    .restart local v3       #newLangMask:I
    .restart local v4       #newLayoutMask:I
    :cond_3
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSettingLangbyLangMask(I)I

    move-result v5

    .line 4394
    .restart local v5       #settingLang:I
    invoke-static {v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    and-int v4, v9, v7

    .line 4396
    if-eq v4, v2, :cond_0

    .line 4397
    const/4 v0, 0x1

    goto :goto_0

    .line 4411
    .end local v3           #newLangMask:I
    .end local v4           #newLayoutMask:I
    .end local v5           #settingLang:I
    :cond_4
    const/high16 v7, 0x2

    if-ne v7, v1, :cond_9

    .line 4413
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    and-int v6, v9, v7

    .line 4414
    .local v6, settingLayout:I
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v7

    if-nez v7, :cond_8

    .line 4416
    const/4 v0, 0x1

    .line 4418
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4419
    invoke-static {v13}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_1

    .line 4421
    :cond_5
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4422
    invoke-static {v12}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_1

    .line 4424
    :cond_6
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4425
    invoke-static {v11}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_1

    .line 4428
    :cond_7
    invoke-static {v10}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_1

    .line 4430
    :cond_8
    if-eq v2, v6, :cond_1

    .line 4431
    const/4 v0, 0x1

    .line 4432
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_1

    .line 4436
    .end local v6           #settingLayout:I
    :cond_9
    const/high16 v7, 0x4

    if-ne v7, v1, :cond_d

    .line 4437
    invoke-static {v13}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    and-int v6, v9, v7

    .line 4439
    .restart local v6       #settingLayout:I
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v7

    if-nez v7, :cond_c

    .line 4441
    const/4 v0, 0x1

    .line 4443
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 4444
    invoke-static {v12}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 4446
    :cond_a
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 4447
    invoke-static {v11}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 4450
    :cond_b
    invoke-static {v10}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 4452
    :cond_c
    if-eq v2, v6, :cond_1

    .line 4453
    const/4 v0, 0x1

    .line 4454
    invoke-static {v13}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 4456
    .end local v6           #settingLayout:I
    :cond_d
    const/high16 v7, 0x5

    if-ne v7, v1, :cond_10

    .line 4457
    invoke-static {v12}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    and-int v6, v9, v7

    .line 4459
    .restart local v6       #settingLayout:I
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v7

    if-nez v7, :cond_f

    .line 4461
    const/4 v0, 0x1

    .line 4463
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 4464
    invoke-static {v11}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 4467
    :cond_e
    invoke-static {v10}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 4469
    :cond_f
    if-eq v2, v6, :cond_1

    .line 4470
    const/4 v0, 0x1

    .line 4471
    invoke-static {v12}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 4473
    .end local v6           #settingLayout:I
    :cond_10
    const/high16 v7, 0x3

    if-ne v7, v1, :cond_15

    .line 4474
    invoke-static {v11}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    and-int v6, v9, v7

    .line 4476
    .restart local v6       #settingLayout:I
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v7

    if-nez v7, :cond_14

    .line 4478
    const/4 v0, 0x1

    .line 4479
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 4480
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 4482
    :cond_11
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 4483
    invoke-static {v13}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 4485
    :cond_12
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 4486
    invoke-static {v12}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 4489
    :cond_13
    invoke-static {v10}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 4492
    :cond_14
    if-eq v2, v6, :cond_1

    .line 4493
    const/4 v0, 0x1

    .line 4494
    invoke-static {v11}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 4496
    .end local v6           #settingLayout:I
    :cond_15
    const/high16 v7, 0x1

    if-ne v7, v1, :cond_1

    .line 4497
    invoke-static {v10}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    and-int v6, v9, v7

    .line 4498
    .restart local v6       #settingLayout:I
    if-eq v2, v6, :cond_1

    .line 4499
    const/4 v0, 0x1

    .line 4500
    invoke-static {v10}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1
.end method

.method public switchModeForLongShiftKey()I
    .locals 6

    .prologue
    .line 1956
    const/4 v0, 0x0

    .line 1958
    .local v0, newInputMode:I
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    sparse-switch v1, :sswitch_data_0

    .line 1985
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1986
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1988
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v1

    .line 1960
    :sswitch_0
    const/high16 v0, 0x1121

    .line 1961
    goto :goto_0

    .line 1964
    :sswitch_1
    const/high16 v0, 0x1111

    .line 1965
    goto :goto_0

    .line 1968
    :sswitch_2
    const/high16 v0, 0x1221

    .line 1969
    goto :goto_0

    .line 1973
    :sswitch_3
    const/high16 v0, 0x1211

    .line 1974
    goto :goto_0

    .line 1977
    :sswitch_4
    const/high16 v0, 0x1133

    .line 1978
    goto :goto_0

    .line 1980
    :sswitch_5
    const/high16 v0, 0x1113

    goto :goto_0

    .line 1958
    :sswitch_data_0
    .sparse-switch
        0x11110000 -> :sswitch_0
        0x11130000 -> :sswitch_4
        0x11210000 -> :sswitch_1
        0x11310000 -> :sswitch_1
        0x11330000 -> :sswitch_5
        0x12110000 -> :sswitch_2
        0x12210000 -> :sswitch_3
        0x12310000 -> :sswitch_3
    .end sparse-switch
.end method

.method public switchModeForShortcutKey()I
    .locals 6

    .prologue
    .line 2909
    const/4 v0, 0x0

    .line 2910
    .local v0, newInputMode:I
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v1, :cond_2

    .line 2911
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2912
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->changeToToolBarSKB()I

    .line 2913
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    .line 2923
    :goto_0
    return v1

    .line 2916
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->toggleToolBarMode()I

    move-result v0

    .line 2917
    if-nez v0, :cond_1

    .line 2918
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto :goto_0

    .line 2919
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 2920
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 2923
    :cond_2
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto :goto_0
.end method

.method public switchModeForShortcutKeyLongPressed()I
    .locals 6

    .prologue
    .line 2928
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v1, :cond_1

    .line 2929
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->switchModeForShortcutKeyLongPressed()I

    move-result v0

    .line 2930
    .local v0, newInputMode:I
    if-nez v0, :cond_0

    .line 2931
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    .line 2936
    .end local v0           #newInputMode:I
    :goto_0
    return v1

    .line 2932
    .restart local v0       #newInputMode:I
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 2933
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 2936
    .end local v0           #newInputMode:I
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto :goto_0
.end method

.method public switchModeForUserKey(I)I
    .locals 14
    .parameter "userKey"

    .prologue
    const/high16 v13, -0x1000

    const/high16 v12, 0xf

    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1991
    const/4 v4, 0x0

    .line 1992
    .local v4, newInputMode:I
    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v10, 0xf00

    and-int v3, v9, v10

    .line 1993
    .local v3, layout:I
    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int v2, v9, v12

    .line 1994
    .local v2, language:I
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 1995
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    const/4 v0, 0x0

    .line 1998
    .local v0, bRet:Z
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v9}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2000
    new-instance v5, Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-direct {v5}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>()V

    .line 2001
    .local v5, newMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    iget-object v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    invoke-virtual {v9, p1, v5}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->processKey(ILcom/samsung/inputmethod/SimeInputModeDef;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2003
    iget v4, v5, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 2004
    const/4 v0, 0x1

    .line 2007
    .end local v5           #newMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    :cond_0
    if-nez v0, :cond_1

    .line 2010
    const/16 v9, -0xc

    if-ne v9, p1, :cond_11

    .line 2019
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_LANG_MGR:Z

    if-eqz v9, :cond_3

    .line 2020
    sget-object v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getNextLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v6

    .line 2021
    .local v6, nextLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    sget-object v7, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq v6, v7, :cond_1

    .line 2026
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSettingLangbyLangEnum(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I

    move-result v7

    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v4

    .line 2584
    .end local v6           #nextLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    :cond_1
    :goto_0
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 2585
    iget-object v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v11, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 2586
    const/16 v7, -0xc

    if-ne v7, p1, :cond_2

    .line 2587
    iget-object v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 2588
    :cond_2
    iget v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    :goto_1
    return v7

    .line 2046
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2047
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2048
    const/4 v7, 0x3

    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v4

    goto :goto_0

    .line 2049
    :cond_4
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2050
    const/4 v7, 0x4

    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v4

    goto :goto_0

    .line 2051
    :cond_5
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2052
    invoke-static {v11}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v4

    goto :goto_0

    .line 2054
    :cond_6
    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v4

    goto :goto_0

    .line 2056
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2057
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2058
    const/4 v7, 0x4

    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v4

    goto :goto_0

    .line 2059
    :cond_8
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2060
    invoke-static {v11}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v4

    goto :goto_0

    .line 2062
    :cond_9
    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v4

    goto :goto_0

    .line 2064
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2065
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2066
    invoke-static {v11}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v4

    goto :goto_0

    .line 2068
    :cond_b
    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v4

    goto/16 :goto_0

    .line 2070
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanLanguage()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 2071
    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v4

    goto/16 :goto_0

    .line 2073
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2074
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2075
    invoke-static {v8}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v4

    goto/16 :goto_0

    .line 2076
    :cond_e
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 2077
    const/4 v7, 0x3

    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v4

    goto/16 :goto_0

    .line 2078
    :cond_f
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2079
    const/4 v7, 0x4

    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v4

    goto/16 :goto_0

    .line 2080
    :cond_10
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2081
    invoke-static {v11}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v4

    goto/16 :goto_0

    .line 2087
    :cond_11
    const/16 v9, -0xe

    if-ne v9, p1, :cond_14

    .line 2088
    const/high16 v7, 0x2

    if-eq v7, v2, :cond_12

    const/high16 v7, 0x4

    if-eq v7, v2, :cond_12

    const/high16 v7, 0x5

    if-ne v7, v2, :cond_13

    .line 2090
    :cond_12
    const v4, 0x62021000

    goto/16 :goto_0

    .line 2092
    :cond_13
    const v4, 0x62011000

    goto/16 :goto_0

    .line 2094
    :cond_14
    const/16 v9, -0xf

    if-ne v9, p1, :cond_15

    .line 2095
    const/high16 v4, 0x7200

    goto/16 :goto_0

    .line 2096
    :cond_15
    const/16 v9, -0x1e

    if-ne v9, p1, :cond_16

    .line 2097
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToHandwritingModeByToggleKey()I

    .line 2098
    iget v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto/16 :goto_1

    .line 2099
    :cond_16
    const/16 v9, -0x1f

    if-ne v9, p1, :cond_17

    .line 2100
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToKeypadModeByToggleKey()I

    .line 2101
    iget v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto/16 :goto_1

    .line 2102
    :cond_17
    const/16 v9, -0x12

    if-ne v9, p1, :cond_18

    .line 2108
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    goto/16 :goto_0

    .line 2114
    :cond_18
    const/16 v9, -0x17

    if-ne v9, p1, :cond_2a

    .line 2116
    iget v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v7}, Lcom/samsung/inputmethod/SimeInputModeDef;->getHW123ModeState(I)Z

    move-result v7

    if-nez v7, :cond_21

    .line 2117
    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 2119
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 2120
    const v4, 0x33020400

    goto/16 :goto_0

    .line 2121
    :cond_19
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 2122
    const v4, 0x33040400

    goto/16 :goto_0

    .line 2123
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 2124
    const v4, 0x33050400

    goto/16 :goto_0

    .line 2125
    :cond_1b
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanLanguage()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 2126
    const v4, 0x33030400

    goto/16 :goto_0

    .line 2127
    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2128
    const v4, 0x33010400

    goto/16 :goto_0

    .line 2132
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 2133
    const v4, 0x34020400

    goto/16 :goto_0

    .line 2134
    :cond_1d
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 2135
    const v4, 0x34040400

    goto/16 :goto_0

    .line 2136
    :cond_1e
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 2137
    const v4, 0x34050400

    goto/16 :goto_0

    .line 2138
    :cond_1f
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanLanguage()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 2139
    const v4, 0x34030400

    goto/16 :goto_0

    .line 2140
    :cond_20
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2141
    const v4, 0x34010400

    goto/16 :goto_0

    .line 2148
    :cond_21
    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_0

    .line 2150
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v7

    if-eqz v7, :cond_22

    .line 2151
    const v4, 0x33020100

    goto/16 :goto_0

    .line 2152
    :cond_22
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v7

    if-eqz v7, :cond_23

    .line 2153
    const v4, 0x33040100

    goto/16 :goto_0

    .line 2154
    :cond_23
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 2155
    const v4, 0x33050100

    goto/16 :goto_0

    .line 2156
    :cond_24
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanLanguage()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 2157
    const v4, 0x33030100

    goto/16 :goto_0

    .line 2158
    :cond_25
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2159
    const v4, 0x33010100

    goto/16 :goto_0

    .line 2163
    :sswitch_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v7

    if-eqz v7, :cond_26

    .line 2164
    const v4, 0x34020100

    goto/16 :goto_0

    .line 2165
    :cond_26
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v7

    if-eqz v7, :cond_27

    .line 2166
    const v4, 0x34040100

    goto/16 :goto_0

    .line 2167
    :cond_27
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v7

    if-eqz v7, :cond_28

    .line 2168
    const v4, 0x34050100

    goto/16 :goto_0

    .line 2169
    :cond_28
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanLanguage()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 2170
    const v4, 0x34030100

    goto/16 :goto_0

    .line 2171
    :cond_29
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2172
    const v4, 0x34010100

    goto/16 :goto_0

    .line 2178
    :cond_2a
    const/16 v9, -0xd

    if-ne v9, p1, :cond_31

    .line 2179
    const/high16 v7, 0x3202

    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v7, v9, :cond_2c

    .line 2180
    const/high16 v4, 0x1202

    .line 2193
    :cond_2b
    :goto_2
    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(I)V

    goto/16 :goto_0

    .line 2181
    :cond_2c
    const/high16 v7, 0x1202

    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v7, v9, :cond_2d

    .line 2182
    const/high16 v4, 0x3202

    goto :goto_2

    .line 2183
    :cond_2d
    const/high16 v7, 0x2204

    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v7, v9, :cond_2e

    .line 2184
    const/high16 v4, 0x3204

    goto :goto_2

    .line 2185
    :cond_2e
    const/high16 v7, 0x3204

    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v7, v9, :cond_2f

    .line 2186
    const/high16 v4, 0x2204

    goto :goto_2

    .line 2187
    :cond_2f
    const/high16 v7, -0x6dfb

    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v7, v9, :cond_30

    .line 2188
    const/high16 v4, 0x3205

    goto :goto_2

    .line 2189
    :cond_30
    const/high16 v7, 0x3205

    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v7, v9, :cond_2b

    .line 2190
    const/high16 v4, -0x6dfb

    goto :goto_2

    .line 2194
    :cond_31
    const/4 v9, -0x3

    if-ne v9, p1, :cond_3a

    .line 2195
    const/high16 v7, 0x200

    if-ne v7, v3, :cond_36

    .line 2196
    const/high16 v7, 0x7000

    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v9, v13

    if-ne v7, v9, :cond_34

    .line 2197
    const/high16 v7, 0x2

    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    and-int/2addr v9, v12

    if-eq v7, v9, :cond_32

    const/high16 v7, 0x4

    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    and-int/2addr v9, v12

    if-eq v7, v9, :cond_32

    const/high16 v7, 0x5

    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    and-int/2addr v9, v12

    if-ne v7, v9, :cond_33

    .line 2200
    :cond_32
    const v4, 0x62021000

    goto/16 :goto_0

    .line 2202
    :cond_33
    const v4, 0x62011000

    goto/16 :goto_0

    .line 2204
    :cond_34
    const/high16 v7, 0x6000

    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v9, v13

    if-ne v7, v9, :cond_35

    .line 2205
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    goto/16 :goto_0

    .line 2207
    :cond_35
    const/high16 v4, 0x7200

    goto/16 :goto_0

    .line 2210
    :cond_36
    const/high16 v7, 0x6000

    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v9, v13

    if-ne v7, v9, :cond_37

    .line 2211
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    goto/16 :goto_0

    .line 2213
    :cond_37
    const/high16 v7, 0x2

    if-eq v7, v2, :cond_38

    const/high16 v7, 0x4

    if-eq v7, v2, :cond_38

    const/high16 v7, 0x5

    if-ne v7, v2, :cond_39

    .line 2215
    :cond_38
    const v4, 0x61021000

    goto/16 :goto_0

    .line 2217
    :cond_39
    const v4, 0x61011000

    goto/16 :goto_0

    .line 2275
    :cond_3a
    const/4 v9, -0x1

    if-ne v9, p1, :cond_3b

    .line 2276
    iget v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    sparse-switch v7, :sswitch_data_2

    goto/16 :goto_0

    .line 2278
    :sswitch_4
    const/high16 v4, 0x1131

    .line 2279
    goto/16 :goto_0

    .line 2281
    :sswitch_5
    const/high16 v4, 0x1121

    .line 2282
    goto/16 :goto_0

    .line 2284
    :sswitch_6
    const/high16 v4, 0x1111

    .line 2285
    goto/16 :goto_0

    .line 2287
    :sswitch_7
    const/high16 v4, 0x1231

    .line 2288
    goto/16 :goto_0

    .line 2290
    :sswitch_8
    const/high16 v4, 0x1221

    .line 2291
    goto/16 :goto_0

    .line 2293
    :sswitch_9
    const/high16 v4, 0x1211

    .line 2294
    goto/16 :goto_0

    .line 2296
    :sswitch_a
    const/high16 v4, 0x1133

    .line 2297
    goto/16 :goto_0

    .line 2299
    :sswitch_b
    const/high16 v4, 0x1113

    goto/16 :goto_0

    .line 2315
    :cond_3b
    const/4 v9, -0x4

    if-ne v9, p1, :cond_3d

    .line 2316
    const/high16 v7, 0x5200

    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v7, v9, :cond_3c

    .line 2317
    const/high16 v4, 0x5220

    goto/16 :goto_0

    .line 2318
    :cond_3c
    const/high16 v7, 0x5220

    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v7, v9, :cond_1

    .line 2319
    const/high16 v4, 0x5200

    goto/16 :goto_0

    .line 2322
    :cond_3d
    const/16 v9, -0xa

    if-ne v9, p1, :cond_3f

    .line 2323
    iget-boolean v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mT9On:Z

    if-nez v9, :cond_3e

    move v7, v8

    :cond_3e
    iput-boolean v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mT9On:Z

    .line 2324
    iget-boolean v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mT9On:Z

    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPrediction(Z)V

    goto/16 :goto_0

    .line 2341
    :cond_3f
    const/16 v9, -0x9

    if-ne v9, p1, :cond_42

    .line 2342
    iget v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    sparse-switch v7, :sswitch_data_3

    goto/16 :goto_0

    .line 2363
    :sswitch_c
    const v4, 0x61012000

    .line 2364
    goto/16 :goto_0

    .line 2344
    :sswitch_d
    const v4, 0x61022000

    .line 2345
    goto/16 :goto_0

    .line 2347
    :sswitch_e
    sget-boolean v7, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    if-eqz v7, :cond_40

    .line 2348
    const v4, 0x61021000

    goto/16 :goto_0

    .line 2351
    :cond_40
    const v4, 0x61023000

    .line 2354
    goto/16 :goto_0

    .line 2356
    :sswitch_f
    const v4, 0x61024000

    .line 2357
    goto/16 :goto_0

    .line 2359
    :sswitch_10
    const v4, 0x61021000

    .line 2360
    goto/16 :goto_0

    .line 2366
    :sswitch_11
    sget-boolean v7, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    if-eqz v7, :cond_41

    .line 2367
    const v4, 0x61011000

    goto/16 :goto_0

    .line 2370
    :cond_41
    const v4, 0x61013000

    .line 2372
    goto/16 :goto_0

    .line 2374
    :sswitch_12
    const v4, 0x61014000

    .line 2375
    goto/16 :goto_0

    .line 2377
    :sswitch_13
    const v4, 0x61011000

    .line 2378
    goto/16 :goto_0

    .line 2381
    :sswitch_14
    const v4, 0x62022000

    .line 2382
    goto/16 :goto_0

    .line 2384
    :sswitch_15
    const v4, 0x62023000

    .line 2385
    goto/16 :goto_0

    .line 2387
    :sswitch_16
    const v4, 0x62024000

    .line 2388
    goto/16 :goto_0

    .line 2390
    :sswitch_17
    const v4, 0x62025000

    .line 2391
    goto/16 :goto_0

    .line 2393
    :sswitch_18
    const v4, 0x62026000

    .line 2394
    goto/16 :goto_0

    .line 2397
    :sswitch_19
    const v4, 0x62021000

    .line 2398
    goto/16 :goto_0

    .line 2405
    :sswitch_1a
    const v4, 0x62012000

    .line 2406
    goto/16 :goto_0

    .line 2408
    :sswitch_1b
    const v4, 0x62013000

    .line 2409
    goto/16 :goto_0

    .line 2411
    :sswitch_1c
    const v4, 0x62014000

    .line 2412
    goto/16 :goto_0

    .line 2414
    :sswitch_1d
    const v4, 0x62015000

    .line 2415
    goto/16 :goto_0

    .line 2417
    :sswitch_1e
    const v4, 0x62016000

    .line 2418
    goto/16 :goto_0

    .line 2421
    :sswitch_1f
    const v4, 0x62011000

    goto/16 :goto_0

    .line 2434
    :cond_42
    const/4 v9, -0x8

    if-ne v9, p1, :cond_45

    .line 2435
    iget v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    sparse-switch v7, :sswitch_data_4

    goto/16 :goto_0

    .line 2455
    :sswitch_20
    sget-boolean v7, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    if-eqz v7, :cond_44

    .line 2456
    const v4, 0x61012000

    goto/16 :goto_0

    .line 2437
    :sswitch_21
    sget-boolean v7, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    if-eqz v7, :cond_43

    .line 2438
    const v4, 0x61022000

    goto/16 :goto_0

    .line 2441
    :cond_43
    const v4, 0x61024000

    .line 2443
    goto/16 :goto_0

    .line 2445
    :sswitch_22
    const v4, 0x61021000

    .line 2446
    goto/16 :goto_0

    .line 2448
    :sswitch_23
    const v4, 0x61022000

    .line 2449
    goto/16 :goto_0

    .line 2451
    :sswitch_24
    const v4, 0x61023000

    .line 2452
    goto/16 :goto_0

    .line 2459
    :cond_44
    const v4, 0x61014000

    .line 2461
    goto/16 :goto_0

    .line 2463
    :sswitch_25
    const v4, 0x61011000

    .line 2464
    goto/16 :goto_0

    .line 2466
    :sswitch_26
    const v4, 0x61012000

    .line 2467
    goto/16 :goto_0

    .line 2469
    :sswitch_27
    const v4, 0x61013000

    .line 2470
    goto/16 :goto_0

    .line 2474
    :sswitch_28
    const v4, 0x62026000

    .line 2475
    goto/16 :goto_0

    .line 2478
    :sswitch_29
    const v4, 0x62021000

    .line 2479
    goto/16 :goto_0

    .line 2481
    :sswitch_2a
    const v4, 0x62022000

    .line 2482
    goto/16 :goto_0

    .line 2484
    :sswitch_2b
    const v4, 0x62023000

    .line 2485
    goto/16 :goto_0

    .line 2487
    :sswitch_2c
    const v4, 0x62024000

    .line 2488
    goto/16 :goto_0

    .line 2490
    :sswitch_2d
    const v4, 0x62025000

    .line 2491
    goto/16 :goto_0

    .line 2497
    :sswitch_2e
    const v4, 0x62016000

    .line 2498
    goto/16 :goto_0

    .line 2501
    :sswitch_2f
    const v4, 0x62011000

    .line 2502
    goto/16 :goto_0

    .line 2504
    :sswitch_30
    const v4, 0x62012000

    .line 2505
    goto/16 :goto_0

    .line 2507
    :sswitch_31
    const v4, 0x62013000

    .line 2508
    goto/16 :goto_0

    .line 2510
    :sswitch_32
    const v4, 0x62014000

    .line 2511
    goto/16 :goto_0

    .line 2513
    :sswitch_33
    const v4, 0x62015000

    goto/16 :goto_0

    .line 2520
    :cond_45
    const/16 v9, -0xb

    if-ne v9, p1, :cond_46

    .line 2521
    iget v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    sparse-switch v7, :sswitch_data_5

    goto/16 :goto_0

    .line 2532
    :sswitch_34
    const v4, 0x61021000

    .line 2533
    goto/16 :goto_0

    .line 2526
    :sswitch_35
    const v4, 0x61011000

    .line 2527
    goto/16 :goto_0

    .line 2541
    :sswitch_36
    const v4, 0x62021000

    .line 2542
    goto/16 :goto_0

    .line 2550
    :sswitch_37
    const v4, 0x62011000

    goto/16 :goto_0

    .line 2554
    :cond_46
    const/4 v9, -0x5

    if-ne v9, p1, :cond_47

    .line 2555
    iput-boolean v8, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mUrlSuffixShow:Z

    goto/16 :goto_0

    .line 2558
    :cond_47
    const/16 v9, -0x10

    if-ne v9, p1, :cond_49

    .line 2559
    iget-boolean v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSymbolLock:Z

    if-nez v9, :cond_48

    move v7, v8

    :cond_48
    iput-boolean v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSymbolLock:Z

    goto/16 :goto_0

    .line 2562
    :cond_49
    const/16 v7, -0x16

    if-ne v7, p1, :cond_1

    .line 2564
    iget v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    sparse-switch v7, :sswitch_data_6

    .line 2572
    :goto_3
    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(I)V

    goto/16 :goto_0

    .line 2566
    :sswitch_38
    const/high16 v4, -0x6efb

    .line 2567
    goto :goto_3

    .line 2569
    :sswitch_39
    const/high16 v4, -0x5efb

    goto :goto_3

    .line 2117
    :sswitch_data_0
    .sparse-switch
        0x3000000 -> :sswitch_0
        0x4000000 -> :sswitch_1
    .end sparse-switch

    .line 2148
    :sswitch_data_1
    .sparse-switch
        0x3000000 -> :sswitch_2
        0x4000000 -> :sswitch_3
    .end sparse-switch

    .line 2276
    :sswitch_data_2
    .sparse-switch
        0x11110000 -> :sswitch_4
        0x11130000 -> :sswitch_a
        0x11210000 -> :sswitch_6
        0x11310000 -> :sswitch_5
        0x11330000 -> :sswitch_b
        0x12110000 -> :sswitch_7
        0x12210000 -> :sswitch_9
        0x12310000 -> :sswitch_8
    .end sparse-switch

    .line 2342
    :sswitch_data_3
    .sparse-switch
        0x61011000 -> :sswitch_c
        0x61012000 -> :sswitch_11
        0x61013000 -> :sswitch_12
        0x61014000 -> :sswitch_13
        0x61021000 -> :sswitch_d
        0x61022000 -> :sswitch_e
        0x61023000 -> :sswitch_f
        0x61024000 -> :sswitch_10
        0x62011000 -> :sswitch_1a
        0x62012000 -> :sswitch_1b
        0x62013000 -> :sswitch_1c
        0x62014000 -> :sswitch_1d
        0x62015000 -> :sswitch_1e
        0x62016000 -> :sswitch_1f
        0x62021000 -> :sswitch_14
        0x62022000 -> :sswitch_15
        0x62023000 -> :sswitch_16
        0x62024000 -> :sswitch_17
        0x62025000 -> :sswitch_18
        0x62026000 -> :sswitch_19
    .end sparse-switch

    .line 2435
    :sswitch_data_4
    .sparse-switch
        0x61011000 -> :sswitch_20
        0x61012000 -> :sswitch_25
        0x61013000 -> :sswitch_26
        0x61014000 -> :sswitch_27
        0x61021000 -> :sswitch_21
        0x61022000 -> :sswitch_22
        0x61023000 -> :sswitch_23
        0x61024000 -> :sswitch_24
        0x62011000 -> :sswitch_2e
        0x62012000 -> :sswitch_2f
        0x62013000 -> :sswitch_30
        0x62014000 -> :sswitch_31
        0x62015000 -> :sswitch_32
        0x62016000 -> :sswitch_33
        0x62021000 -> :sswitch_28
        0x62022000 -> :sswitch_29
        0x62023000 -> :sswitch_2a
        0x62024000 -> :sswitch_2b
        0x62025000 -> :sswitch_2c
        0x62026000 -> :sswitch_2d
    .end sparse-switch

    .line 2521
    :sswitch_data_5
    .sparse-switch
        0x61011000 -> :sswitch_34
        0x61012000 -> :sswitch_34
        0x61013000 -> :sswitch_34
        0x61014000 -> :sswitch_34
        0x61021000 -> :sswitch_35
        0x61022000 -> :sswitch_35
        0x61023000 -> :sswitch_35
        0x61024000 -> :sswitch_35
        0x62011000 -> :sswitch_36
        0x62012000 -> :sswitch_36
        0x62013000 -> :sswitch_36
        0x62014000 -> :sswitch_36
        0x62015000 -> :sswitch_36
        0x62016000 -> :sswitch_36
        0x62021000 -> :sswitch_37
        0x62022000 -> :sswitch_37
        0x62023000 -> :sswitch_37
        0x62024000 -> :sswitch_37
        0x62025000 -> :sswitch_37
        0x62026000 -> :sswitch_37
    .end sparse-switch

    .line 2564
    :sswitch_data_6
    .sparse-switch
        -0x6efb0000 -> :sswitch_39
        -0x5efb0000 -> :sswitch_38
    .end sparse-switch
.end method

.method public switchModeForUserKeyLongPressed(I)I
    .locals 6
    .parameter "userKey"

    .prologue
    .line 2891
    const/4 v0, 0x0

    .line 2902
    .local v0, newInputMode:I
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 2903
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 2904
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v1
.end method

.method public switchModeToNext()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1233
    const/4 v1, 0x0

    .line 1234
    .local v1, newInputMode:I
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf

    and-int v0, v2, v3

    .line 1236
    .local v0, language:I
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf00

    and-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1271
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1272
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1273
    sget v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(I)V

    .line 1274
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 1275
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v2

    .line 1238
    :sswitch_0
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHWMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 1241
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWFSMode(I)I

    move-result v1

    goto :goto_0

    .line 1242
    :cond_0
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHWMode()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 1245
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    move-result v1

    goto :goto_0

    .line 1247
    :cond_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v2, :cond_2

    .line 1248
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    move-result v1

    goto :goto_0

    .line 1249
    :cond_2
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v2, :cond_3

    .line 1250
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWFSMode(I)I

    move-result v1

    goto :goto_0

    .line 1252
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeTo34Mode(I)I

    move-result v1

    .line 1255
    goto :goto_0

    .line 1257
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToQwertyMode(I)I

    move-result v1

    .line 1258
    goto :goto_0

    .line 1261
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeTo34Mode(I)I

    move-result v1

    .line 1262
    goto :goto_0

    .line 1265
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeTo34Mode(I)I

    move-result v1

    goto :goto_0

    .line 1236
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_1
        0x3000000 -> :sswitch_2
        0x4000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public switchModeToPrev()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1280
    const/4 v1, 0x0

    .line 1281
    .local v1, newInputMode:I
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf

    and-int v0, v2, v3

    .line 1283
    .local v0, language:I
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf00

    and-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1315
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1316
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1317
    sget v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(I)V

    .line 1318
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 1319
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v2

    .line 1285
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeTo34Mode(I)I

    move-result v1

    .line 1286
    goto :goto_0

    .line 1288
    :sswitch_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHWMode()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1291
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    move-result v1

    goto :goto_0

    .line 1292
    :cond_0
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHWMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 1295
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWFSMode(I)I

    move-result v1

    goto :goto_0

    .line 1296
    :cond_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v2, :cond_2

    .line 1297
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    move-result v1

    goto :goto_0

    .line 1298
    :cond_2
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v2, :cond_3

    .line 1299
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWFSMode(I)I

    move-result v1

    goto :goto_0

    .line 1301
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToQwertyMode(I)I

    move-result v1

    .line 1303
    goto :goto_0

    .line 1305
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToQwertyMode(I)I

    move-result v1

    .line 1306
    goto :goto_0

    .line 1309
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToQwertyMode(I)I

    move-result v1

    goto :goto_0

    .line 1283
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_1
        0x3000000 -> :sswitch_2
        0x4000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public switchToHandwritingModeByToggleKey()I
    .locals 7

    .prologue
    .line 1325
    const/4 v1, 0x0

    .line 1326
    .local v1, newInputMode:I
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf

    and-int v0, v2, v3

    .line 1328
    .local v0, language:I
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentHandwritingInputMode:I

    const/high16 v3, 0xf00

    and-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1336
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v2, :cond_0

    .line 1338
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWFSMode(I)I

    move-result v1

    .line 1349
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1350
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v3, 0x1

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1351
    sget v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(I)V

    .line 1352
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 1353
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v2

    .line 1330
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWFSMode(I)I

    move-result v1

    .line 1331
    goto :goto_0

    .line 1333
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    move-result v1

    .line 1334
    goto :goto_0

    .line 1342
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    move-result v1

    goto :goto_0

    .line 1328
    :sswitch_data_0
    .sparse-switch
        0x3000000 -> :sswitch_0
        0x4000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public switchToKeypadModeByToggleKey()I
    .locals 10

    .prologue
    const/high16 v9, 0x5

    const/high16 v8, 0x4

    const/high16 v7, 0x3

    const/high16 v6, 0x1

    const/high16 v5, -0x1000

    .line 1357
    const/4 v1, 0x0

    .line 1358
    .local v1, newInputMode:I
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v4, 0xf

    and-int v0, v3, v4

    .line 1359
    .local v0, language:I
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentKeyPadModeMgr:Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;

    invoke-virtual {v3, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->getRectMode(I)I

    move-result v2

    .line 1361
    .local v2, recentKeyPadMode:I
    const/high16 v3, 0xf00

    and-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 1438
    if-ne v0, v6, :cond_b

    .line 1439
    const/high16 v1, 0x1111

    .line 1454
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1455
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v4, 0x1

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1456
    sget v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(I)V

    .line 1457
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 1458
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v3

    .line 1378
    :sswitch_0
    if-ne v0, v6, :cond_0

    .line 1379
    const/high16 v1, 0x1211

    goto :goto_0

    .line 1380
    :cond_0
    if-ne v0, v7, :cond_1

    .line 1381
    const/high16 v1, 0x1203

    goto :goto_0

    .line 1382
    :cond_1
    if-ne v0, v9, :cond_3

    .line 1383
    and-int v3, v2, v5

    const/high16 v4, 0x3000

    if-ne v3, v4, :cond_2

    .line 1384
    const/high16 v1, 0x3205

    goto :goto_0

    .line 1386
    :cond_2
    const/high16 v1, -0x6dfb

    goto :goto_0

    .line 1388
    :cond_3
    if-ne v0, v8, :cond_5

    .line 1389
    and-int v3, v2, v5

    const/high16 v4, 0x3000

    if-ne v3, v4, :cond_4

    .line 1390
    const/high16 v1, 0x3204

    goto :goto_0

    .line 1392
    :cond_4
    const/high16 v1, 0x2204

    goto :goto_0

    .line 1394
    :cond_5
    and-int v3, v2, v5

    const/high16 v4, 0x3000

    if-ne v3, v4, :cond_6

    .line 1395
    const/high16 v1, 0x3202

    goto :goto_0

    .line 1397
    :cond_6
    const/high16 v1, 0x1202

    .line 1399
    goto :goto_0

    .line 1413
    :sswitch_1
    if-ne v0, v6, :cond_7

    .line 1414
    const/high16 v1, 0x1111

    goto :goto_0

    .line 1415
    :cond_7
    if-ne v0, v7, :cond_8

    .line 1416
    const/high16 v1, 0x1113

    goto :goto_0

    .line 1417
    :cond_8
    if-ne v0, v9, :cond_9

    .line 1418
    const/high16 v1, -0x6efb

    goto :goto_0

    .line 1419
    :cond_9
    if-ne v0, v8, :cond_a

    .line 1420
    const/high16 v1, 0x2104

    goto :goto_0

    .line 1422
    :cond_a
    const/high16 v1, 0x1102

    .line 1424
    goto :goto_0

    .line 1440
    :cond_b
    if-ne v0, v7, :cond_c

    .line 1441
    const/high16 v1, 0x1113

    goto :goto_0

    .line 1442
    :cond_c
    if-ne v0, v9, :cond_d

    .line 1443
    const/high16 v1, -0x6efb

    goto :goto_0

    .line 1444
    :cond_d
    if-ne v0, v8, :cond_e

    .line 1445
    const/high16 v1, 0x2104

    goto :goto_0

    .line 1447
    :cond_e
    const/high16 v1, 0x1102

    goto :goto_0

    .line 1361
    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public switchToMode(I)I
    .locals 5
    .parameter "mode"

    .prologue
    .line 1922
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1923
    sget v0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(I)V

    .line 1924
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v1, 0x1

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1925
    iget v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v0
.end method

.method public switchToNextPageSymbol()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1153
    new-instance v0, Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-direct {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>()V

    .line 1154
    .local v0, newInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolbarSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1156
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    invoke-virtual {v1, v5}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->symbolPageFlip(Z)Lcom/samsung/inputmethod/SimeInputModeDef;

    move-result-object v1

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 1158
    :cond_0
    iget v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1159
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1160
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v1
.end method

.method public switchToPreviousPageSymbol()I
    .locals 6

    .prologue
    .line 1165
    new-instance v0, Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-direct {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>()V

    .line 1166
    .local v0, newInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolbarSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1168
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->symbolPageFlip(Z)Lcom/samsung/inputmethod/SimeInputModeDef;

    move-result-object v1

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 1170
    :cond_0
    iget v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1171
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1172
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v1
.end method

.method public switchToSymbolInputToolbarMode()I
    .locals 6

    .prologue
    .line 2870
    const/4 v0, 0x0

    .line 2871
    .local v0, newInputMode:I
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 2872
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v1, :cond_2

    .line 2873
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2874
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->changeToToolBarSKB()I

    .line 2875
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    .line 2885
    :goto_0
    return v1

    .line 2878
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->switchToSymbolInputToolbarMode()I

    move-result v0

    .line 2879
    if-nez v0, :cond_1

    .line 2880
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto :goto_0

    .line 2881
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 2882
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 2885
    :cond_2
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto :goto_0
.end method

.method public tryHandleLongPressSwitch(ILcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "softKey"

    .prologue
    const/16 v6, 0x1d

    const/16 v5, 0x10

    const/4 v4, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3971
    if-eqz p2, :cond_1

    .line 3972
    invoke-virtual {p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 4156
    :cond_0
    :goto_0
    return v1

    .line 3976
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v3, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v3, 0xff0

    .line 3978
    .local v0, variation:I
    const/4 v3, -0x2

    if-eq v3, p1, :cond_2

    const/4 v3, -0x4

    if-ne v3, p1, :cond_3

    .line 3980
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->ClearAllPopupMenu()V

    .line 3981
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 3982
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->showInputMethodSelectingMenu()V

    move v1, v2

    .line 3984
    goto :goto_0

    .line 3985
    :cond_3
    const/16 v3, 0x38

    if-eq v3, p1, :cond_4

    const/16 v3, 0xc8

    if-ne v3, p1, :cond_5

    .line 3988
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v1

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    invoke-virtual {v1, v3, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->showWindow(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    move v1, v2

    .line 3990
    goto :goto_0

    .line 3991
    :cond_5
    const/4 v3, -0x6

    if-eq v3, p1, :cond_6

    const/4 v3, -0x5

    if-ne v3, p1, :cond_9

    .line 3992
    :cond_6
    const/16 v1, 0x20

    if-ne v0, v1, :cond_8

    .line 3995
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v1

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->WEBSITE:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    invoke-virtual {v1, v3, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->showWindow(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    :cond_7
    :goto_1
    move v1, v2

    .line 4003
    goto :goto_0

    .line 3997
    :cond_8
    if-ne v0, v5, :cond_7

    .line 3999
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v1

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->DOMAIN:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    invoke-virtual {v1, v3, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->showWindow(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto :goto_1

    .line 4005
    :cond_9
    const/4 v3, -0x1

    if-ne v3, p1, :cond_a

    .line 4007
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForLongShiftKey()I

    .line 4008
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    move v1, v2

    .line 4009
    goto :goto_0

    .line 4011
    :cond_a
    const/16 v3, -0xc

    if-ne v3, p1, :cond_b

    .line 4012
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getLangSelectorDialog()Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->showSelectLanguage()V

    move v1, v2

    .line 4013
    goto :goto_0

    .line 4016
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4029
    :cond_c
    const/16 v3, 0x43

    if-ne v3, p1, :cond_d

    .line 4030
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->isComposingViewShown()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4032
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    move v1, v2

    .line 4033
    goto/16 :goto_0

    .line 4048
    :cond_d
    const/16 v3, 0x4b

    if-ne v3, p1, :cond_e

    move v1, v2

    .line 4049
    goto/16 :goto_0

    .line 4051
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4053
    if-lt p1, v6, :cond_f

    const/16 v3, 0x36

    if-le p1, v3, :cond_11

    :cond_f
    if-lt p1, v4, :cond_10

    if-le p1, v5, :cond_11

    :cond_10
    const/16 v3, 0x45

    if-ne p1, v3, :cond_0

    :cond_11
    move v1, v2

    .line 4056
    goto/16 :goto_0

    .line 4058
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4070
    const/16 v3, 0x3e

    if-ne p1, v3, :cond_13

    move v1, v2

    .line 4071
    goto/16 :goto_0

    .line 4074
    :cond_13
    if-ne p1, v4, :cond_14

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4078
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPinyinMode()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4079
    if-lt p1, v4, :cond_15

    if-le p1, v5, :cond_16

    :cond_15
    const/16 v3, 0x4b

    if-ne p1, v3, :cond_0

    :cond_16
    move v1, v2

    .line 4080
    goto/16 :goto_0

    .line 4083
    :cond_17
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 4084
    if-lt p1, v4, :cond_18

    if-le p1, v5, :cond_19

    :cond_18
    const/16 v3, -0xa

    if-ne p1, v3, :cond_0

    :cond_19
    move v1, v2

    .line 4085
    goto/16 :goto_0

    .line 4089
    :cond_1a
    if-lt p1, v4, :cond_1b

    if-le p1, v5, :cond_1c

    :cond_1b
    if-ne p1, v6, :cond_0

    :cond_1c
    move v1, v2

    .line 4090
    goto/16 :goto_0

    .line 4096
    :cond_1d
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 4110
    const/16 v3, 0x43

    if-ne v3, p1, :cond_1e

    .line 4111
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->isComposingViewShown()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 4113
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    move v1, v2

    .line 4114
    goto/16 :goto_0

    .line 4132
    :cond_1e
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4134
    if-lt p1, v6, :cond_1f

    const/16 v3, 0x36

    if-gt p1, v3, :cond_1f

    move v1, v2

    .line 4137
    goto/16 :goto_0

    .line 4139
    :cond_1f
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4140
    if-lt p1, v6, :cond_0

    const/16 v3, 0x27

    if-gt p1, v3, :cond_0

    move v1, v2

    .line 4141
    goto/16 :goto_0

    .line 4147
    :cond_20
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 4148
    if-ne p1, v4, :cond_0

    move v1, v2

    .line 4149
    goto/16 :goto_0

    .line 4150
    :cond_21
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123SymMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4151
    const/16 v3, 0x47

    if-eq p1, v3, :cond_22

    const/16 v3, 0x48

    if-ne p1, v3, :cond_0

    :cond_22
    move v1, v2

    .line 4153
    goto/16 :goto_0
.end method

.method public updateToggleStates()V
    .locals 5

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v1, 0x1

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1130
    return-void
.end method
