.class public Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;
.super Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;
.source "SimeKProcSChinese.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$1;,
        Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SIMULATE_KEY_DELETE:Z = true

.field private static final SYMBOL_ENTER:Ljava/lang/String; = "\n"

.field private static final SYMBOL_SPACE:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String; = "SChnKeyProcessor"

.field private static mCharCaseGap:I = 0x0

.field private static final mChn34KeyMap:[[I = null

.field private static final mStrApotrophe:I = 0x27

.field private static final mStrAsk:I = 0x3f

.field private static final mStrAt:I = 0x40

.field private static final mStrComma:I = 0x2c

.field private static final mStrEnter:I = 0xa

.field private static final mStrMinus:I = 0x2d

.field private static final mStrPeriod:I = 0x2e

.field private static final mStrSemi:I = 0x3b

.field private static final mStrSlash:I = 0x2f

.field private static final mStrSpace:I = 0x20


# instance fields
.field private mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;

.field private mLastKeyCode:I

.field private mkeyCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 67
    const/16 v0, -0x20

    sput v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mCharCaseGap:I

    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mChn34KeyMap:[[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x3ft 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xct 0xfft 0x0t 0x0t
        0x1t 0x30t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x61t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x67t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x6dt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x70t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x74t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x77t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 2
    .parameter "ime"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    .line 50
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mLastKeyCode:I

    .line 51
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mkeyCount:I

    .line 53
    new-instance v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;-><init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$1;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;

    .line 79
    return-void
.end method

.method private isSChnInputMode()Z
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :cond_0
    return v0
.end method

.method private keycodeTransToKeyChar(I)I
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, keyChar:I
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    add-int/lit8 v1, p1, -0x1d

    add-int/lit8 v0, v1, 0x61

    .line 121
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextUpperCaseWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    sget v1, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mCharCaseGap:I

    add-int/2addr v0, v1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeNum(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    add-int/lit8 v1, p1, -0x7

    add-int/lit8 v0, v1, 0x30

    goto :goto_0

    .line 126
    :cond_2
    const/16 v1, 0x37

    if-ne p1, v1, :cond_3

    .line 127
    const/16 v0, 0x2c

    goto :goto_0

    .line 128
    :cond_3
    const/16 v1, 0x38

    if-ne p1, v1, :cond_4

    .line 129
    const/16 v0, 0x2e

    goto :goto_0

    .line 130
    :cond_4
    const/16 v1, 0x4b

    if-ne p1, v1, :cond_5

    .line 131
    const/16 v0, 0x27

    goto :goto_0

    .line 132
    :cond_5
    const/16 v1, 0x4d

    if-ne p1, v1, :cond_6

    .line 133
    const/16 v0, 0x40

    goto :goto_0

    .line 134
    :cond_6
    const/16 v1, 0x4c

    if-ne p1, v1, :cond_7

    .line 135
    const/16 v0, 0x2f

    goto :goto_0

    .line 136
    :cond_7
    const/16 v1, 0x45

    if-ne p1, v1, :cond_8

    .line 137
    const/16 v0, 0x2d

    goto :goto_0

    .line 138
    :cond_8
    const/16 v1, 0x4a

    if-ne p1, v1, :cond_9

    .line 139
    const/16 v0, 0x3b

    goto :goto_0

    .line 140
    :cond_9
    const/16 v1, 0x3f

    if-ne p1, v1, :cond_a

    .line 141
    const/16 v0, 0x3f

    goto :goto_0

    .line 142
    :cond_a
    const/16 v1, 0x42

    if-ne p1, v1, :cond_b

    .line 143
    const/16 v0, 0xa

    goto :goto_0

    .line 144
    :cond_b
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_0

    .line 145
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private preProcessKeyboard(Landroid/view/KeyEvent;Z)Z
    .locals 8
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/4 v7, 0x0

    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, bProcessed:Z
    const/4 v2, 0x0

    .line 489
    .local v2, keyChar:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 490
    .local v3, keyCode:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 494
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 497
    const/16 v5, 0x8

    if-ne v5, v3, :cond_6

    .line 498
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_4

    .line 501
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_2

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v6

    if-eq v5, v6, :cond_2

    .line 505
    :cond_0
    if-eqz p2, :cond_1

    .line 507
    const v2, 0xff0c

    .line 509
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_1

    .line 510
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 512
    :cond_1
    const/4 v0, 0x1

    .line 532
    :cond_2
    :goto_0
    if-lez v2, :cond_3

    .line 534
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 535
    .local v4, result:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 536
    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 594
    .end local v4           #result:Ljava/lang/String;
    :cond_3
    return v0

    .line 515
    :cond_4
    if-eqz p2, :cond_5

    .line 517
    const v2, 0xff0c

    .line 519
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_5

    .line 520
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 522
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 524
    :cond_6
    const/4 v5, 0x7

    if-ne v5, v3, :cond_2

    .line 525
    if-eqz p2, :cond_7

    .line 527
    const/16 v2, 0x20

    .line 529
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processFuncKey(Landroid/view/KeyEvent;Z)Z
    .locals 4
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v3, 0x0

    .line 1142
    const/4 v0, 0x0

    .line 1143
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1145
    .local v1, keyCode:I
    sparse-switch v1, :sswitch_data_0

    .line 1208
    :cond_0
    :goto_0
    return v0

    .line 1147
    :sswitch_0
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 1148
    if-eqz p2, :cond_1

    .line 1151
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processStarKey()V

    .line 1153
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1158
    :sswitch_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 1159
    if-eqz p2, :cond_2

    .line 1162
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processPoundKey()V

    .line 1164
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1169
    :sswitch_2
    if-eqz p2, :cond_3

    .line 1172
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processBackKey()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1179
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 1180
    goto :goto_0

    .line 1175
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1176
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    goto :goto_1

    .line 1192
    :sswitch_3
    if-eqz p2, :cond_5

    .line 1195
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processLangKey()V

    .line 1197
    :cond_5
    const/4 v0, 0x1

    .line 1199
    goto :goto_0

    .line 1201
    :sswitch_4
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->setHWKeyboardLedState(Z)V

    .line 1202
    const/4 v0, 0x1

    goto :goto_0

    .line 1145
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x73 -> :sswitch_4
        0xe3 -> :sswitch_3
    .end sparse-switch
.end method

.method private processKey(Landroid/view/KeyEvent;Z)Z
    .locals 11
    .parameter "event"
    .parameter "isPressedDown"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1213
    const/4 v0, 0x0

    .line 1214
    .local v0, bProcessed:Z
    const/4 v4, 0x0

    .line 1215
    .local v4, isSoftKey:Z
    const/4 v1, 0x0

    .line 1216
    .local v1, bRealAction:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 1217
    .local v6, keyCode:I
    const/4 v5, 0x0

    .line 1218
    .local v5, keyChar:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 1219
    .local v2, count:I
    const/4 v3, 0x0

    .line 1223
    .local v3, enterNormalState:Z
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1224
    const/4 v4, 0x1

    .line 1232
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isSChnInputMode()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1315
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 1316
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1317
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    :cond_2
    move v7, v0

    .line 1320
    :cond_3
    :goto_2
    return v7

    .line 1227
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1228
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getEnterKeyNormalState()Z

    move-result v3

    .line 1229
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    goto :goto_0

    .line 1235
    :cond_5
    sget-object v9, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_BYPASS:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v10

    if-eq v9, v10, :cond_1

    .line 1241
    iget-object v9, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9, p1}, Lcom/samsung/inputmethod/SamsungIME;->needHideSoftKeyboard(Landroid/view/KeyEvent;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1242
    iget-object v9, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->hideSoftKeyboard()V

    .line 1248
    :cond_6
    const/4 v9, 0x4

    if-ne v6, v9, :cond_7

    .line 1249
    iget-object v9, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v9

    if-nez v9, :cond_7

    move v7, v0

    .line 1254
    goto :goto_2

    .line 1259
    :cond_7
    if-eqz v4, :cond_9

    .line 1261
    if-nez p2, :cond_8

    .line 1262
    const/4 v1, 0x1

    .line 1283
    :cond_8
    :goto_3
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processFuncKey(Landroid/view/KeyEvent;Z)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1286
    const/4 v0, 0x1

    goto :goto_1

    .line 1267
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyProcessedWhenLong(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1271
    if-gtz v2, :cond_3

    .line 1274
    if-nez p2, :cond_a

    move v1, v7

    :goto_4
    goto :goto_3

    :cond_a
    move v1, v8

    goto :goto_4

    .line 1275
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isHardKeyProcessedWhenUp(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1276
    if-nez p2, :cond_c

    move v1, v7

    :goto_5
    goto :goto_3

    :cond_c
    move v1, v8

    goto :goto_5

    .line 1279
    :cond_d
    move v1, p2

    goto :goto_3

    .line 1287
    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processSymbolKeys(Landroid/view/KeyEvent;Z)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1290
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1291
    :cond_f
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->preProcessKeyboard(Landroid/view/KeyEvent;Z)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1295
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1298
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v7

    sget-object v8, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v7, v8, :cond_11

    .line 1299
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processStateIdle(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto/16 :goto_1

    .line 1300
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v7

    sget-object v8, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v7, v8, :cond_12

    .line 1301
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processStateAppCompletion(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto/16 :goto_1

    .line 1303
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v7

    sget-object v8, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v7, v8, :cond_13

    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v8

    if-ne v7, v8, :cond_14

    .line 1305
    :cond_13
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processStateInput(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto/16 :goto_1

    .line 1306
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v7

    sget-object v8, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v7, v8, :cond_1

    .line 1307
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processStatePredict(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto/16 :goto_1
.end method

.method private processStateAppCompletion(Landroid/view/KeyEvent;Z)Z
    .locals 5
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 758
    .local v2, keyCode:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 761
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    sparse-switch v2, :sswitch_data_0

    .line 799
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 800
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processStateIdle(Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 804
    :cond_0
    :goto_0
    return v0

    .line 769
    :sswitch_0
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 771
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 772
    const/4 v0, 0x1

    goto :goto_0

    .line 782
    :sswitch_1
    if-eqz p2, :cond_1

    .line 784
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_2

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v3, :cond_2

    .line 785
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 793
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 796
    goto :goto_0

    .line 787
    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->simulateKeyEventDownUp(I)V

    goto :goto_1

    .line 761
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method private processStateIdle(Landroid/view/KeyEvent;Z)Z
    .locals 11
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 599
    const/4 v6, 0x0

    .line 600
    .local v6, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 601
    .local v9, keyCode:I
    const/4 v2, 0x0

    .line 602
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    .line 610
    .local v8, ic:Landroid/view/inputmethod/InputConnection;
    sparse-switch v9, :sswitch_data_0

    .line 704
    invoke-direct {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 708
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 709
    if-eqz p2, :cond_0

    .line 710
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    int-to-char v1, v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->addSplChar(CZ)V

    .line 711
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->chooseAndUpdate(I)V

    .line 715
    :cond_0
    const/4 v6, 0x1

    .line 750
    :cond_1
    :goto_0
    return v6

    .line 612
    :sswitch_0
    if-eqz p2, :cond_2

    .line 616
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_3

    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v0, :cond_3

    .line 617
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 624
    :goto_1
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 628
    :cond_2
    const/4 v6, 0x1

    .line 630
    goto :goto_0

    .line 619
    :cond_3
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->simulateKeyEventDownUp(I)V

    goto :goto_1

    .line 632
    :sswitch_1
    if-eqz p2, :cond_4

    .line 633
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processEnterKey()V

    .line 635
    :cond_4
    const/4 v6, 0x1

    .line 637
    goto :goto_0

    .line 639
    :sswitch_2
    if-eqz p2, :cond_5

    .line 640
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 641
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 643
    :cond_5
    const/4 v6, 0x1

    .line 645
    goto :goto_0

    .line 647
    :sswitch_3
    if-eqz p2, :cond_6

    .line 649
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v0

    if-nez v0, :cond_7

    .line 652
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 653
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 661
    :cond_6
    :goto_2
    const/4 v6, 0x1

    .line 663
    goto :goto_0

    .line 655
    :cond_7
    const/16 v2, 0x2e

    .line 656
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 665
    :sswitch_4
    invoke-direct {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 666
    if-lez v2, :cond_8

    .line 667
    if-eqz p2, :cond_8

    .line 668
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 669
    .local v10, result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 671
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->autoPeriod()V

    .line 677
    .end local v10           #result:Ljava/lang/String;
    :cond_8
    const/4 v6, 0x1

    .line 679
    goto/16 :goto_0

    .line 690
    :sswitch_5
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v9, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 716
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 717
    invoke-static {v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v7

    .line 720
    .local v7, fullwidth_char:C
    if-eqz v7, :cond_b

    .line 721
    if-eqz p2, :cond_a

    .line 722
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 723
    .restart local v10       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 725
    .end local v10           #result:Ljava/lang/String;
    :cond_a
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 727
    :cond_b
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 731
    .end local v7           #fullwidth_char:C
    :cond_c
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeNum(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 733
    if-eqz p2, :cond_d

    .line 736
    invoke-virtual {p0, v2, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processSurfaceChange(II)Z

    .line 738
    :cond_d
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 740
    :cond_e
    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 741
    if-eqz p2, :cond_f

    .line 742
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 743
    .restart local v10       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 745
    .end local v10           #result:Ljava/lang/String;
    :cond_f
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 610
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x15 -> :sswitch_5
        0x16 -> :sswitch_5
        0x17 -> :sswitch_5
        0x37 -> :sswitch_2
        0x38 -> :sswitch_3
        0x3e -> :sswitch_4
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method private processStateInput(Landroid/view/KeyEvent;Z)Z
    .locals 11
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 809
    const/4 v7, 0x0

    .line 810
    .local v7, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 811
    .local v9, keyCode:I
    const/4 v2, 0x0

    .line 812
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    .line 815
    .local v8, ic:Landroid/view/inputmethod/InputConnection;
    invoke-direct {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 821
    sparse-switch v9, :sswitch_data_0

    .line 907
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 908
    if-eqz p2, :cond_0

    .line 909
    invoke-virtual {p0, v2, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processSurfaceChange(II)Z

    .line 911
    :cond_0
    const/4 v7, 0x1

    .line 976
    :cond_1
    :goto_0
    return v7

    .line 824
    :sswitch_0
    if-eqz p2, :cond_2

    .line 825
    invoke-virtual {p0, v2, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processSurfaceChange(II)Z

    .line 826
    :cond_2
    const/4 v7, 0x1

    .line 828
    goto :goto_0

    .line 830
    :sswitch_1
    if-eqz p2, :cond_3

    .line 831
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnterNoramlState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 832
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPinyinMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 833
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 844
    :goto_1
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 846
    :cond_3
    const/4 v7, 0x1

    .line 848
    goto :goto_0

    .line 836
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    goto :goto_1

    .line 840
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processEnterKey()V

    goto :goto_1

    .line 855
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 857
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v9, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 858
    const/4 v7, 0x1

    goto :goto_0

    .line 864
    :sswitch_3
    if-eqz p2, :cond_6

    .line 865
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getDefaultCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v6

    .line 867
    .local v6, activeCandNo:I
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/SamsungIME;->onChoiceTouched(I)V

    .line 869
    .end local v6           #activeCandNo:I
    :cond_6
    const/4 v7, 0x1

    .line 871
    goto/16 :goto_0

    .line 874
    :sswitch_4
    if-eqz p2, :cond_7

    .line 875
    const/16 v2, 0x27

    .line 876
    invoke-virtual {p0, v2, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processSurfaceChange(II)Z

    .line 878
    :cond_7
    const/4 v7, 0x1

    .line 880
    goto/16 :goto_0

    .line 882
    :sswitch_5
    if-eqz p2, :cond_8

    .line 883
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 884
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 886
    :cond_8
    const/4 v7, 0x1

    .line 888
    goto/16 :goto_0

    .line 890
    :sswitch_6
    if-eqz p2, :cond_9

    .line 892
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v0

    if-nez v0, :cond_a

    .line 895
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 896
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 903
    :cond_9
    :goto_2
    const/4 v7, 0x1

    .line 905
    goto/16 :goto_0

    .line 898
    :cond_a
    const/16 v2, 0x2e

    .line 899
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 912
    :cond_b
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeNum(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 913
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 914
    if-eqz p2, :cond_c

    .line 915
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v0, :cond_10

    .line 918
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v9, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 919
    const/4 v7, 0x1

    .line 935
    :cond_c
    :goto_3
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 920
    :cond_d
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x8

    if-ne v0, v9, :cond_f

    .line 922
    if-eqz p2, :cond_e

    .line 923
    const v2, 0xff0c

    .line 924
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 925
    .local v10, result:Ljava/lang/String;
    if-eqz v8, :cond_e

    .line 926
    const/4 v0, 0x1

    invoke-interface {v8, v10, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 928
    .end local v10           #result:Ljava/lang/String;
    :cond_e
    const/4 v7, 0x1

    goto :goto_3

    .line 930
    :cond_f
    invoke-virtual {p0, v2, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processSurfaceChange(II)Z

    goto :goto_3

    .line 932
    :cond_10
    invoke-virtual {p0, v2, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processSurfaceChange(II)Z

    goto :goto_3

    .line 936
    :cond_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_14

    .line 939
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    .line 940
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v9, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 947
    :cond_12
    if-eqz p2, :cond_13

    .line 948
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 949
    .restart local v10       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 952
    .end local v10           #result:Ljava/lang/String;
    :cond_13
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 955
    :cond_14
    if-eqz p2, :cond_15

    .line 956
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 957
    .restart local v10       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 959
    .end local v10           #result:Ljava/lang/String;
    :cond_15
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 961
    :cond_16
    const/16 v0, 0x2d

    if-eq v2, v0, :cond_17

    const/16 v0, 0x3b

    if-eq v2, v0, :cond_17

    const/16 v0, 0x2f

    if-ne v2, v0, :cond_18

    .line 962
    :cond_17
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 963
    :cond_18
    if-lez v2, :cond_1

    .line 965
    if-eqz p2, :cond_19

    .line 966
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 967
    .restart local v10       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 969
    .end local v10           #result:Ljava/lang/String;
    :cond_19
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 821
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_2
        0x37 -> :sswitch_5
        0x38 -> :sswitch_6
        0x3e -> :sswitch_3
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
        0x4b -> :sswitch_4
        0x4c -> :sswitch_0
    .end sparse-switch
.end method

.method private processStatePredict(Landroid/view/KeyEvent;Z)Z
    .locals 10
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 981
    const/4 v7, 0x0

    .line 982
    .local v7, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    .line 983
    .local v8, keyCode:I
    const/4 v2, 0x0

    .line 986
    .local v2, keyChar:I
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 991
    sparse-switch v8, :sswitch_data_0

    .line 1081
    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1082
    if-eqz p2, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 1084
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    int-to-char v1, v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->addSplChar(CZ)V

    .line 1085
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->chooseAndUpdate(I)V

    .line 1087
    :cond_0
    const/4 v7, 0x1

    .line 1136
    :cond_1
    :goto_0
    return v7

    .line 993
    :sswitch_0
    if-eqz p2, :cond_2

    .line 994
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 995
    :cond_2
    const/4 v7, 0x1

    .line 997
    goto :goto_0

    .line 999
    :sswitch_1
    if-eqz p2, :cond_3

    .line 1000
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processEnterKey()V

    .line 1001
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1003
    :cond_3
    const/4 v7, 0x1

    .line 1005
    goto :goto_0

    .line 1007
    :sswitch_2
    if-eqz p2, :cond_4

    .line 1009
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpaceKeyInputAssociate()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/SamsungIME;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1010
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 1011
    if-lez v2, :cond_4

    .line 1012
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    .line 1013
    .local v9, result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v9}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1026
    .end local v9           #result:Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v7, 0x1

    .line 1028
    goto :goto_0

    .line 1020
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getDefaultCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v6

    .line 1022
    .local v6, activeCandNo:I
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/SamsungIME;->onChoiceTouched(I)V

    goto :goto_1

    .line 1036
    .end local v6           #activeCandNo:I
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1038
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v8, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1039
    const/4 v7, 0x1

    goto :goto_0

    .line 1048
    :sswitch_4
    if-eqz p2, :cond_6

    .line 1049
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->chooseCandidate(I)V

    .line 1050
    :cond_6
    const/4 v7, 0x1

    .line 1052
    goto :goto_0

    .line 1054
    :sswitch_5
    if-eqz p2, :cond_7

    .line 1055
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 1056
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 1059
    :cond_7
    const/4 v7, 0x1

    .line 1061
    goto/16 :goto_0

    .line 1064
    :sswitch_6
    if-eqz p2, :cond_8

    .line 1066
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1069
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 1070
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 1077
    :cond_8
    :goto_2
    const/4 v7, 0x1

    .line 1079
    goto/16 :goto_0

    .line 1072
    :cond_9
    const/16 v2, 0x2e

    .line 1073
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 1088
    :cond_a
    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeNum(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1089
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1090
    if-eqz p2, :cond_b

    .line 1091
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 1092
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    int-to-char v1, v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->addSplChar(CZ)V

    .line 1093
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->chooseAndUpdate(I)V

    .line 1095
    :cond_b
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1096
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1099
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 1100
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v8, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1104
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1107
    :cond_d
    if-eqz p2, :cond_e

    .line 1108
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    .line 1109
    .restart local v9       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v9}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1112
    .end local v9           #result:Ljava/lang/String;
    :cond_e
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1115
    :cond_f
    if-eqz p2, :cond_10

    .line 1116
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    .line 1117
    .restart local v9       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v9}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1119
    .end local v9           #result:Ljava/lang/String;
    :cond_10
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1121
    :cond_11
    const/16 v0, 0x2d

    if-eq v2, v0, :cond_12

    const/16 v0, 0x3b

    if-ne v2, v0, :cond_13

    .line 1122
    :cond_12
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1123
    :cond_13
    if-lez v2, :cond_1

    .line 1125
    if-eqz p2, :cond_14

    .line 1126
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    .line 1127
    .restart local v9       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v9}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1129
    .end local v9           #result:Ljava/lang/String;
    :cond_14
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 991
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x37 -> :sswitch_5
        0x38 -> :sswitch_6
        0x3e -> :sswitch_2
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method private processSymbolKeys(Landroid/view/KeyEvent;Z)Z
    .locals 11
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x5

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, bProcessed:Z
    const/4 v2, 0x0

    .line 157
    .local v2, keyChar:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 159
    .local v3, keyCode:I
    const/4 v1, 0x1

    .line 164
    .local v1, bResetToIdle:Z
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyPinyin()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 167
    packed-switch v3, :pswitch_data_0

    .line 309
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeNum(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 310
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 311
    if-eqz p2, :cond_0

    .line 312
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 314
    :cond_0
    const/4 v0, 0x1

    .line 471
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 474
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    .line 477
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_2

    if-ne v1, v8, :cond_2

    .line 478
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 480
    :cond_2
    return v0

    .line 169
    :pswitch_1
    if-eqz p2, :cond_3

    .line 170
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 171
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 176
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 178
    goto :goto_0

    .line 173
    :cond_4
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v9

    aget v2, v5, v9

    goto :goto_1

    .line 180
    :pswitch_2
    if-eqz p2, :cond_5

    .line 181
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 182
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 187
    :cond_5
    :goto_2
    const/4 v0, 0x1

    .line 189
    goto :goto_0

    .line 184
    :cond_6
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    const/4 v6, 0x3

    aget-object v5, v5, v6

    aget v2, v5, v8

    goto :goto_2

    .line 191
    :pswitch_3
    if-eqz p2, :cond_7

    .line 192
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 193
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 198
    :cond_7
    :goto_3
    const/4 v0, 0x1

    .line 200
    goto :goto_0

    .line 195
    :cond_8
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v6

    aget v2, v5, v6

    goto :goto_3

    .line 202
    :pswitch_4
    if-eqz p2, :cond_9

    .line 203
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 204
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 209
    :cond_9
    :goto_4
    const/4 v0, 0x1

    .line 211
    goto :goto_0

    .line 206
    :cond_a
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v6

    aget v2, v5, v9

    goto :goto_4

    .line 213
    :pswitch_5
    if-eqz p2, :cond_b

    .line 214
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 215
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 220
    :cond_b
    :goto_5
    const/4 v0, 0x1

    .line 222
    goto :goto_0

    .line 217
    :cond_c
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    aget v2, v5, v10

    goto :goto_5

    .line 224
    :pswitch_6
    if-eqz p2, :cond_d

    .line 225
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 226
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 231
    :cond_d
    :goto_6
    const/4 v0, 0x1

    .line 233
    goto/16 :goto_0

    .line 228
    :cond_e
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    const/4 v6, 0x3

    aget v2, v5, v6

    goto :goto_6

    .line 235
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 236
    if-eqz p2, :cond_f

    .line 237
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 239
    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 240
    :cond_10
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_1

    .line 242
    if-eqz p2, :cond_11

    .line 243
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v8

    const/4 v6, 0x4

    aget v2, v5, v6

    .line 245
    :cond_11
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 250
    :pswitch_8
    if-eqz p2, :cond_12

    .line 251
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 252
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 257
    :cond_12
    :goto_7
    const/4 v0, 0x1

    .line 259
    goto/16 :goto_0

    .line 254
    :cond_13
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    aget v2, v5, v8

    goto :goto_7

    .line 262
    :pswitch_9
    if-eqz p2, :cond_14

    .line 263
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 264
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 277
    :cond_14
    :goto_8
    const/4 v0, 0x1

    .line 279
    goto/16 :goto_0

    .line 267
    :cond_15
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v5

    if-nez v5, :cond_16

    .line 270
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    aget v2, v5, v7

    goto :goto_8

    .line 272
    :cond_16
    const/16 v2, 0x2e

    goto :goto_8

    .line 281
    :pswitch_a
    if-eqz p2, :cond_17

    .line 282
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 283
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 288
    :cond_17
    :goto_9
    const/4 v0, 0x1

    .line 290
    goto/16 :goto_0

    .line 285
    :cond_18
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    aget v2, v5, v10

    goto :goto_9

    .line 293
    :pswitch_b
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v5, v6, :cond_1

    .line 295
    if-eqz p2, :cond_19

    .line 298
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 299
    if-lez v2, :cond_19

    .line 300
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 304
    .end local v4           #result:Ljava/lang/String;
    :cond_19
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 322
    :cond_1a
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 324
    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 385
    :sswitch_0
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v5, :cond_1

    .line 387
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    if-eq v5, v6, :cond_1

    .line 388
    if-eqz p2, :cond_1b

    .line 389
    add-int/lit8 v5, v3, -0x7

    add-int/lit8 v2, v5, 0x30

    .line 391
    :cond_1b
    const/4 v1, 0x0

    .line 392
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 326
    :sswitch_1
    if-eqz p2, :cond_1c

    .line 327
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 328
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 333
    :cond_1c
    :goto_a
    const/4 v0, 0x1

    .line 335
    goto/16 :goto_0

    .line 330
    :cond_1d
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    aget v2, v5, v8

    goto :goto_a

    .line 339
    :sswitch_2
    if-eqz p2, :cond_1e

    .line 340
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 341
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 354
    :cond_1e
    :goto_b
    const/4 v0, 0x1

    .line 356
    goto/16 :goto_0

    .line 344
    :cond_1f
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v5

    if-nez v5, :cond_20

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v5

    if-nez v5, :cond_20

    .line 347
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    aget v2, v5, v7

    goto :goto_b

    .line 349
    :cond_20
    const/16 v2, 0x2e

    goto :goto_b

    .line 359
    :sswitch_3
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v5, v6, :cond_1

    .line 361
    if-eqz p2, :cond_21

    .line 364
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 365
    if-lez v2, :cond_21

    .line 366
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 367
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 370
    .end local v4           #result:Ljava/lang/String;
    :cond_21
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 402
    :cond_22
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Stroke()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 405
    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_0

    .line 407
    :sswitch_4
    if-eqz p2, :cond_23

    .line 408
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    aget v2, v5, v10

    .line 410
    :cond_23
    const/4 v0, 0x1

    .line 411
    goto/16 :goto_0

    .line 413
    :sswitch_5
    if-eqz p2, :cond_24

    .line 414
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    aget v2, v5, v8

    .line 416
    :cond_24
    const/4 v0, 0x1

    .line 417
    goto/16 :goto_0

    .line 419
    :sswitch_6
    if-eqz p2, :cond_25

    .line 420
    const v2, 0xff1a

    .line 422
    :cond_25
    const/4 v0, 0x1

    .line 423
    goto/16 :goto_0

    .line 425
    :sswitch_7
    if-eqz p2, :cond_26

    .line 426
    const/16 v2, 0x201c

    .line 428
    :cond_26
    const/4 v0, 0x1

    .line 429
    goto/16 :goto_0

    .line 433
    :sswitch_8
    if-eqz p2, :cond_27

    .line 434
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v5

    if-nez v5, :cond_28

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v5

    if-nez v5, :cond_28

    .line 437
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    aget v2, v5, v7

    .line 443
    :cond_27
    :goto_c
    const/4 v0, 0x1

    .line 445
    goto/16 :goto_0

    .line 439
    :cond_28
    const/16 v2, 0x2e

    goto :goto_c

    .line 448
    :sswitch_9
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v5, v6, :cond_1

    .line 450
    if-eqz p2, :cond_29

    .line 453
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 454
    if-lez v2, :cond_29

    .line 455
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 456
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 458
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_29

    .line 459
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 462
    .end local v4           #result:Ljava/lang/String;
    :cond_29
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
    .end packed-switch

    .line 324
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x37 -> :sswitch_1
        0x38 -> :sswitch_2
        0x3e -> :sswitch_3
    .end sparse-switch

    .line 405
    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_4
        0xe -> :sswitch_5
        0xf -> :sswitch_6
        0x10 -> :sswitch_7
        0x38 -> :sswitch_8
        0x3e -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public clearFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mkeyCount:I

    .line 94
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mLastKeyCode:I

    .line 95
    return-void
.end method

.method public processKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1332
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public processKeyUp(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1340
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public processLongPressKey(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1348
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1350
    .local v0, keyCode:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyProcessedWhenLong(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1355
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    .line 1357
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v1, v2, :cond_1

    .line 1362
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processLongPressKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1365
    const/4 v1, 0x1

    .line 1372
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processLongPressKey(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;->stopDelayCommit()V

    .line 87
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->clearFlags()V

    .line 89
    return-void
.end method
