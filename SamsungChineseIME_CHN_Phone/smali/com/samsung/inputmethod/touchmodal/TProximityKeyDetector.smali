.class public Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;
.super Ljava/lang/Object;
.source "TProximityKeyDetector.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_NEARBY_KEYS:I = 0xc

.field private static final TAG:Ljava/lang/String;

.field public static isPrevLandscape:Z

.field private static mTProximityKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

.field private static prevHeight:I

.field private static prevLanguage:Ljava/lang/String;

.field private static prevMode:I

.field private static prevWidth:I

.field private static prev_nKeys:I

.field public static upEvent:Z


# instance fields
.field private mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field mIsMiniKeyboard:Z

.field private mKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

.field private mSimeVersionInfo:Lcom/samsung/inputmethod/setting/SimeVersionInfo;

.field private final mWindowHeight:I

.field private final mWindowWidth:I

.field private tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

.field private xt9Version:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 50
    const-class v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->TAG:Ljava/lang/String;

    .line 60
    sput-boolean v2, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->upEvent:Z

    sput-boolean v2, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->isPrevLandscape:Z

    .line 64
    const-string v0, "LANG"

    sput-object v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevLanguage:Ljava/lang/String;

    .line 65
    sput v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevMode:I

    sput v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevWidth:I

    .line 66
    sput v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevHeight:I

    sput v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prev_nKeys:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->getInstance()Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mIsMiniKeyboard:Z

    .line 74
    const/4 v0, 0x7

    iput-short v0, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->xt9Version:S

    .line 82
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 83
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mWindowHeight:I

    .line 84
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mWindowWidth:I

    .line 94
    return-void
.end method

.method public static getInstance()Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mTProximityKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    invoke-direct {v0}, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mTProximityKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    .line 104
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mTProximityKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    return-object v0
.end method


# virtual methods
.method public dumpCurrentGrid()V
    .locals 7

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    sget-object v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevLanguage:Ljava/lang/String;

    sget v2, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevMode:I

    sget-boolean v3, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->isPrevLandscape:Z

    sget v4, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevWidth:I

    sget v5, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevHeight:I

    sget v6, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prev_nKeys:I

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->dump(Ljava/lang/String;IZIII)V

    .line 188
    return-void
.end method

.method public getKeyIndexAndNearbyCodes(II)I
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    .line 191
    move v3, p1

    .line 192
    .local v3, touchX:I
    move v4, p2

    .line 193
    .local v4, touchY:I
    const/4 v0, -0x1

    .line 195
    .local v0, primaryIndex:I
    iget-object v5, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    if-eqz v5, :cond_1

    .line 197
    new-array v2, v7, [Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 198
    .local v2, softkeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    iget-object v5, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #softkeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    check-cast v2, [Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 199
    .restart local v2       #softkeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    if-eqz v2, :cond_1

    array-length v5, v2

    if-lez v5, :cond_1

    .line 201
    if-lez v3, :cond_0

    if-lez v4, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 204
    iget-object v5, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    sget-boolean v6, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->upEvent:Z

    invoke-virtual {v5, v3, v4, v6, v2}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->getKeyIndex(IIZ[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)I

    move-result v0

    .line 208
    :cond_0
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    if-eqz v0, :cond_1

    .line 210
    sput-boolean v7, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->upEvent:Z

    move v1, v0

    .line 235
    .end local v0           #primaryIndex:I
    .end local v2           #softkeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .local v1, primaryIndex:I
    :goto_0
    return v1

    .line 225
    .end local v1           #primaryIndex:I
    .restart local v0       #primaryIndex:I
    :cond_1
    sput-boolean v7, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->upEvent:Z

    move v1, v0

    .line 235
    .end local v0           #primaryIndex:I
    .restart local v1       #primaryIndex:I
    goto :goto_0
.end method

.method protected getMaxNearbyKeys()I
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0xc

    return v0
.end method

.method public initialize(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 97
    check-cast p1, Lcom/samsung/inputmethod/SamsungIME;

    .end local p1
    iput-object p1, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 98
    return-void
.end method

.method public setKeyboard(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;FFZ)[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 19
    .parameter "keyboard"
    .parameter "correctionX"
    .parameter "correctionY"
    .parameter "isMiniKeyboard"

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setKeyboard(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;FFZ)[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mSoftKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 122
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v16

    .line 124
    .local v16, language:Ljava/lang/String;
    const/4 v12, 0x0

    .line 125
    .local v12, currentOrientation:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    if-eqz v5, :cond_1

    .line 126
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    const/4 v12, 0x1

    .line 130
    :cond_1
    :goto_0
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mIsMiniKeyboard:Z

    .line 131
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mIsMiniKeyboard:Z

    if-nez v5, :cond_7

    .line 148
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v15

    .line 149
    .local v15, info:Landroid/view/inputmethod/EditorInfo;
    if-nez v15, :cond_3

    .line 150
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->resetGrid()V

    .line 151
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    iget-object v5, v5, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mSoftKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 179
    .end local v15           #info:Landroid/view/inputmethod/EditorInfo;
    :goto_1
    return-object v5

    .line 126
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 153
    .restart local v15       #info:Landroid/view/inputmethod/EditorInfo;
    :cond_3
    iget v5, v15, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v5, 0xff0

    move/from16 v17, v0

    .line 154
    .local v17, mode:I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    .line 155
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v18

    .line 156
    .local v18, width:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v14

    .line 157
    .local v14, height:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v13, v5

    .line 159
    .local v13, nKeys:I
    sget-object v5, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevLanguage:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget v5, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevMode:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_6

    sget-boolean v5, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->isPrevLandscape:Z

    if-ne v5, v12, :cond_6

    if-lez v18, :cond_4

    sget v5, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevWidth:I

    move/from16 v0, v18

    if-ne v5, v0, :cond_6

    :cond_4
    if-lez v14, :cond_5

    sget v5, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevHeight:I

    if-ne v5, v14, :cond_6

    :cond_5
    sget v5, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prev_nKeys:I

    if-eq v13, v5, :cond_7

    .line 164
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    sget-object v6, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevLanguage:Ljava/lang/String;

    sget v7, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevMode:I

    sget-boolean v8, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->isPrevLandscape:Z

    sget v9, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevWidth:I

    sget v10, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevHeight:I

    sget v11, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prev_nKeys:I

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->dump(Ljava/lang/String;IZIII)V

    .line 165
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mWindowHeight:I

    :goto_2
    move-object/from16 v6, p1

    move-object/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    move v11, v14

    invoke-virtual/range {v5 .. v13}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->gridInitStart(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;ILjava/lang/String;IIIZI)V

    .line 169
    sput-object v16, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevLanguage:Ljava/lang/String;

    .line 170
    sput v17, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevMode:I

    .line 171
    sput-boolean v12, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->isPrevLandscape:Z

    .line 173
    sput v18, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevWidth:I

    .line 174
    sput v14, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevHeight:I

    .line 176
    sput v13, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prev_nKeys:I

    .line 179
    .end local v13           #nKeys:I
    .end local v14           #height:I
    .end local v15           #info:Landroid/view/inputmethod/EditorInfo;
    .end local v17           #mode:I
    .end local v18           #width:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    iget-object v5, v5, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mSoftKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    goto/16 :goto_1

    .line 165
    .restart local v13       #nKeys:I
    .restart local v14       #height:I
    .restart local v15       #info:Landroid/view/inputmethod/EditorInfo;
    .restart local v17       #mode:I
    .restart local v18       #width:I
    :cond_8
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mWindowWidth:I

    goto :goto_2
.end method
