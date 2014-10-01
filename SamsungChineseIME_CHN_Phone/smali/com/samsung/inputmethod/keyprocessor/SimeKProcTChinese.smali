.class public Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;
.super Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;
.source "SimeKProcTChinese.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$1;,
        Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SIMULATE_KEY_DELETE:Z = true

.field private static final SYMBOL_ENTER:Ljava/lang/String; = "\n"

.field private static final SYMBOL_SPACE:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String; = "TChnKeyProcessor"

.field private static mCharCaseGap:I = 0x0

.field private static final mChn34KeyMap:[[I = null

.field private static final mPeriodofZhuyin:I = 0xc8

.field private static final mStrApotrophe:I = 0x27

.field private static final mStrAsk:I = 0x3f

.field private static final mStrAt:I = 0x40

.field private static final mStrComma:I = 0x2c

.field private static final mStrEnter:I = 0xa

.field private static final mStrMinus:I = 0x2d

.field private static final mStrPeriod:I = 0x2e

.field private static final mStrPound:I = 0x2a

.field private static final mStrSemi:I = 0x3b

.field private static final mStrSlash:I = 0x2f

.field private static final mStrSpace:I = 0x20


# instance fields
.field private mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

.field private mLastKeyCode:I

.field private mkeyCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 68
    const/16 v0, -0x20

    sput v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mCharCaseGap:I

    .line 71
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

    sput-object v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mChn34KeyMap:[[I

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

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    .line 50
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mLastKeyCode:I

    .line 51
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mkeyCount:I

    .line 53
    new-instance v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;-><init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$1;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    .line 81
    return-void
.end method

.method private isSChnInputMode()Z
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    const/4 v0, 0x1

    .line 109
    :cond_1
    return v0
.end method

.method private keycodeTransToKeyChar(I)I
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, keyChar:I
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    add-int/lit8 v1, p1, -0x1d

    add-int/lit8 v0, v1, 0x61

    .line 124
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextUpperCaseWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    sget v1, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mCharCaseGap:I

    add-int/2addr v0, v1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeNum(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    add-int/lit8 v1, p1, -0x7

    add-int/lit8 v0, v1, 0x30

    goto :goto_0

    .line 129
    :cond_2
    const/16 v1, 0x37

    if-ne p1, v1, :cond_3

    .line 130
    const/16 v0, 0x2c

    goto :goto_0

    .line 131
    :cond_3
    const/16 v1, 0x38

    if-ne p1, v1, :cond_4

    .line 132
    const/16 v0, 0x2e

    goto :goto_0

    .line 133
    :cond_4
    const/16 v1, 0x4b

    if-ne p1, v1, :cond_5

    .line 134
    const/16 v0, 0x27

    goto :goto_0

    .line 135
    :cond_5
    const/16 v1, 0x4d

    if-ne p1, v1, :cond_6

    .line 136
    const/16 v0, 0x40

    goto :goto_0

    .line 137
    :cond_6
    const/16 v1, 0x4c

    if-ne p1, v1, :cond_7

    .line 138
    const/16 v0, 0x2f

    goto :goto_0

    .line 139
    :cond_7
    const/16 v1, 0x45

    if-ne p1, v1, :cond_8

    .line 140
    const/16 v0, 0x2d

    goto :goto_0

    .line 141
    :cond_8
    const/16 v1, 0x4a

    if-ne p1, v1, :cond_9

    .line 142
    const/16 v0, 0x3b

    goto :goto_0

    .line 143
    :cond_9
    const/16 v1, 0x3f

    if-ne p1, v1, :cond_a

    .line 144
    const/16 v0, 0x3f

    goto :goto_0

    .line 145
    :cond_a
    const/16 v1, 0x42

    if-ne p1, v1, :cond_b

    .line 146
    const/16 v0, 0xa

    goto :goto_0

    .line 147
    :cond_b
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_c

    .line 148
    const/16 v0, 0x20

    goto :goto_0

    .line 149
    :cond_c
    const/16 v1, 0x12

    if-ne p1, v1, :cond_0

    .line 150
    const/16 v0, 0x2a

    goto :goto_0
.end method

.method private preProcessKeyboard(IZ)Z
    .locals 8
    .parameter "keyCode"
    .parameter "realAction"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x7

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, bProcessed:Z
    const/4 v2, 0x0

    .line 428
    .local v2, keyChar:I
    const/4 v3, 0x0

    .line 429
    .local v3, keyValue:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 433
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 435
    if-eq v6, p1, :cond_0

    if-ne v7, p1, :cond_8

    .line 439
    :cond_0
    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mLastKeyCode:I

    if-ne v5, p1, :cond_6

    .line 440
    if-eqz p2, :cond_1

    .line 441
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->stopDelayCommit()V

    .line 442
    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mkeyCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mkeyCount:I

    .line 454
    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    .line 457
    if-ne p1, v7, :cond_7

    .line 458
    const/4 v3, 0x1

    .line 462
    :cond_2
    :goto_1
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mChn34KeyMap:[[I

    aget-object v5, v5, v3

    iget v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mkeyCount:I

    rem-int/lit8 v6, v6, 0x2

    aget v2, v5, v6

    .line 467
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_3

    .line 471
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 473
    :cond_3
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 474
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->startCommitTimer(Landroid/view/inputmethod/InputConnection;)V

    .line 476
    iput p1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mLastKeyCode:I

    .line 478
    .end local v4           #result:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    .line 487
    :cond_5
    :goto_2
    return v0

    .line 448
    :cond_6
    if-eqz p2, :cond_1

    .line 449
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->stopDelayCommit()V

    .line 450
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_0

    .line 459
    :cond_7
    if-ne p1, v6, :cond_2

    .line 460
    const/4 v3, 0x0

    goto :goto_1

    .line 481
    :cond_8
    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    .line 482
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->stopDelayCommit()V

    .line 483
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_2
.end method

.method private processFuncKey(Landroid/view/KeyEvent;Z)Z
    .locals 4
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v3, 0x0

    .line 1039
    const/4 v0, 0x0

    .line 1040
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1042
    .local v1, keyCode:I
    sparse-switch v1, :sswitch_data_0

    .line 1105
    :cond_0
    :goto_0
    return v0

    .line 1044
    :sswitch_0
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 1045
    if-eqz p2, :cond_1

    .line 1048
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processStarKey()V

    .line 1050
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1055
    :sswitch_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 1056
    if-eqz p2, :cond_2

    .line 1059
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processPoundKey()V

    .line 1061
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1066
    :sswitch_2
    if-eqz p2, :cond_3

    .line 1069
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processBackKey()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1076
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 1077
    goto :goto_0

    .line 1072
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1073
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    goto :goto_1

    .line 1089
    :sswitch_3
    if-eqz p2, :cond_5

    .line 1092
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processLangKey()V

    .line 1094
    :cond_5
    const/4 v0, 0x1

    .line 1096
    goto :goto_0

    .line 1098
    :sswitch_4
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->setHWKeyboardLedState(Z)V

    .line 1099
    const/4 v0, 0x1

    goto :goto_0

    .line 1042
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
    .locals 12
    .parameter "event"
    .parameter "isPressedDown"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1109
    const/4 v0, 0x0

    .line 1110
    .local v0, bProcessed:Z
    const/4 v5, 0x0

    .line 1111
    .local v5, isSoftKey:Z
    const/4 v1, 0x0

    .line 1112
    .local v1, bRealAction:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .line 1113
    .local v7, keyCode:I
    const/4 v6, 0x0

    .line 1114
    .local v6, keyChar:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 1115
    .local v2, count:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 1116
    .local v4, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v3, 0x0

    .line 1120
    .local v3, enterNormalState:Z
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1121
    const/4 v5, 0x1

    .line 1129
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isSChnInputMode()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1219
    :cond_1
    :goto_1
    if-nez v5, :cond_2

    .line 1220
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1221
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    :cond_2
    move v8, v0

    .line 1224
    :cond_3
    :goto_2
    return v8

    .line 1124
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1125
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getEnterKeyNormalState()Z

    move-result v3

    .line 1126
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    goto :goto_0

    .line 1132
    :cond_5
    sget-object v10, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_BYPASS:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v11

    if-eq v10, v11, :cond_1

    .line 1137
    if-eqz v4, :cond_1

    .line 1142
    iget-object v10, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v10, p1}, Lcom/samsung/inputmethod/SamsungIME;->needHideSoftKeyboard(Landroid/view/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1143
    iget-object v10, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v10}, Lcom/samsung/inputmethod/SamsungIME;->hideSoftKeyboard()V

    .line 1149
    :cond_6
    const/4 v10, 0x4

    if-ne v7, v10, :cond_7

    .line 1150
    iget-object v10, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v10}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v10}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v10

    if-nez v10, :cond_7

    move v8, v0

    .line 1155
    goto :goto_2

    .line 1160
    :cond_7
    if-eqz v5, :cond_9

    .line 1162
    if-nez p2, :cond_8

    .line 1163
    const/4 v1, 0x1

    .line 1184
    :cond_8
    :goto_3
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processFuncKey(Landroid/view/KeyEvent;Z)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1187
    const/4 v0, 0x1

    goto :goto_1

    .line 1168
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyProcessedWhenLong(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1172
    if-gtz v2, :cond_3

    .line 1175
    if-nez p2, :cond_a

    move v1, v8

    :goto_4
    goto :goto_3

    :cond_a
    move v1, v9

    goto :goto_4

    .line 1176
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isHardKeyProcessedWhenUp(I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1177
    if-nez p2, :cond_c

    move v1, v8

    :goto_5
    goto :goto_3

    :cond_c
    move v1, v9

    goto :goto_5

    .line 1180
    :cond_d
    move v1, p2

    goto :goto_3

    .line 1189
    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSymbolKeys(Landroid/view/KeyEvent;Z)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1192
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1193
    :cond_f
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-direct {p0, v7, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->preProcessKeyboard(IZ)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1197
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1200
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v8

    sget-object v9, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v8, v9, :cond_11

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v8

    sget-object v9, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v8, v9, :cond_13

    .line 1202
    :cond_11
    if-eqz v1, :cond_12

    .line 1204
    sget-object v8, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 1206
    :cond_12
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processStateIdle(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto/16 :goto_1

    .line 1207
    :cond_13
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v8

    sget-object v9, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v8, v9, :cond_14

    sget-object v8, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v9

    if-ne v8, v9, :cond_15

    .line 1209
    :cond_14
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processStateInput(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto/16 :goto_1

    .line 1210
    :cond_15
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v8

    sget-object v9, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v8, v9, :cond_1

    .line 1211
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processStatePredict(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto/16 :goto_1
.end method

.method private processStateIdle(Landroid/view/KeyEvent;Z)Z
    .locals 11
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 492
    const/4 v6, 0x0

    .line 493
    .local v6, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 494
    .local v9, keyCode:I
    const/4 v2, 0x0

    .line 495
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    .line 501
    .local v8, ic:Landroid/view/inputmethod/InputConnection;
    invoke-direct {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 508
    sparse-switch v9, :sswitch_data_0

    .line 609
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 610
    if-eqz p2, :cond_0

    .line 611
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    int-to-char v1, v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->addSplChar(CZ)V

    .line 612
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->chooseAndUpdate(I)V

    .line 617
    :cond_0
    const/4 v6, 0x1

    .line 673
    :cond_1
    :goto_0
    return v6

    .line 510
    :sswitch_0
    if-eqz p2, :cond_2

    .line 512
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_3

    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v0, :cond_3

    .line 513
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 520
    :goto_1
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 524
    :cond_2
    const/4 v6, 0x1

    .line 526
    goto :goto_0

    .line 515
    :cond_3
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->simulateKeyEventDownUp(I)V

    goto :goto_1

    .line 528
    :sswitch_1
    if-eqz p2, :cond_4

    .line 529
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processEnterKey()V

    .line 531
    :cond_4
    const/4 v6, 0x1

    .line 533
    goto :goto_0

    .line 536
    :sswitch_2
    if-eqz p2, :cond_5

    .line 538
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 539
    invoke-virtual {p0, v2, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(II)Z

    .line 561
    :cond_5
    :goto_2
    const/4 v6, 0x1

    .line 563
    goto :goto_0

    .line 543
    :cond_6
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v0

    if-nez v0, :cond_7

    .line 548
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 550
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 554
    :cond_7
    const/16 v2, 0x2e

    .line 556
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 565
    :sswitch_3
    if-lez v2, :cond_8

    .line 566
    if-eqz p2, :cond_8

    .line 567
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 568
    .local v10, result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 570
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->autoPeriod()V

    .line 576
    .end local v10           #result:Ljava/lang/String;
    :cond_8
    const/4 v6, 0x1

    .line 578
    goto/16 :goto_0

    .line 589
    :sswitch_4
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v9, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 618
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 619
    invoke-static {v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v7

    .line 625
    .local v7, fullwidth_char:C
    if-eqz v7, :cond_b

    .line 626
    if-eqz p2, :cond_a

    .line 627
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 628
    .restart local v10       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 631
    .end local v10           #result:Ljava/lang/String;
    :cond_a
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 633
    :cond_b
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 637
    .end local v7           #fullwidth_char:C
    :cond_c
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeNum(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 639
    :cond_d
    if-eqz p2, :cond_e

    .line 640
    invoke-virtual {p0, v2, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(II)Z

    .line 641
    :cond_e
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 650
    :cond_f
    const/16 v0, 0x2d

    if-eq v2, v0, :cond_10

    const/16 v0, 0x3b

    if-eq v2, v0, :cond_10

    const/16 v0, 0x2f

    if-ne v2, v0, :cond_12

    .line 651
    :cond_10
    if-eqz p2, :cond_11

    .line 652
    invoke-virtual {p0, v2, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(II)Z

    .line 653
    :cond_11
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 655
    :cond_12
    const/16 v0, 0x2a

    if-ne v2, v0, :cond_14

    .line 656
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v0, :cond_1

    .line 657
    if-eqz p2, :cond_13

    .line 658
    invoke-virtual {p0, v2, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(II)Z

    .line 659
    :cond_13
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 663
    :cond_14
    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 664
    if-eqz p2, :cond_15

    .line 665
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 666
    .restart local v10       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 668
    .end local v10           #result:Ljava/lang/String;
    :cond_15
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 508
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x37 -> :sswitch_2
        0x38 -> :sswitch_2
        0x3e -> :sswitch_3
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method private processStateInput(Landroid/view/KeyEvent;Z)Z
    .locals 11
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 678
    const/4 v7, 0x0

    .line 679
    .local v7, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 680
    .local v9, keyCode:I
    const/4 v2, 0x0

    .line 681
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    .line 684
    .local v8, ic:Landroid/view/inputmethod/InputConnection;
    invoke-direct {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 695
    sparse-switch v9, :sswitch_data_0

    .line 784
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 785
    if-eqz p2, :cond_0

    .line 786
    invoke-virtual {p0, v2, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(II)Z

    .line 788
    :cond_0
    const/4 v7, 0x1

    .line 847
    :cond_1
    :goto_0
    return v7

    .line 699
    :sswitch_0
    if-eqz p2, :cond_2

    .line 700
    invoke-virtual {p0, v2, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(II)Z

    .line 701
    :cond_2
    const/4 v7, 0x1

    .line 703
    goto :goto_0

    .line 705
    :sswitch_1
    if-eqz p2, :cond_3

    .line 706
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnterNoramlState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 707
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPinyinMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 708
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 720
    :goto_1
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 722
    :cond_3
    const/4 v7, 0x1

    .line 724
    goto :goto_0

    .line 711
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    goto :goto_1

    .line 715
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processEnterKey()V

    goto :goto_1

    .line 730
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v9, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    const/4 v7, 0x1

    goto :goto_0

    .line 739
    :sswitch_3
    if-eqz p2, :cond_6

    .line 740
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getDefaultCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v6

    .line 742
    .local v6, activeCandNo:I
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/SamsungIME;->onChoiceTouched(I)V

    .line 744
    .end local v6           #activeCandNo:I
    :cond_6
    const/4 v7, 0x1

    .line 746
    goto/16 :goto_0

    .line 749
    :sswitch_4
    if-eqz p2, :cond_7

    .line 750
    const/16 v2, 0x27

    .line 751
    invoke-virtual {p0, v2, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(II)Z

    .line 753
    :cond_7
    const/4 v7, 0x1

    .line 755
    goto/16 :goto_0

    .line 758
    :sswitch_5
    if-eqz p2, :cond_8

    .line 759
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 760
    invoke-virtual {p0, v2, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(II)Z

    .line 780
    :cond_8
    :goto_2
    const/4 v7, 0x1

    .line 782
    goto/16 :goto_0

    .line 762
    :cond_9
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v0

    if-nez v0, :cond_a

    .line 767
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 769
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 773
    :cond_a
    const/16 v2, 0x2e

    .line 775
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 789
    :cond_b
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeNum(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 790
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 791
    :cond_c
    if-eqz p2, :cond_d

    .line 792
    invoke-virtual {p0, v2, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(II)Z

    .line 793
    :cond_d
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 802
    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_11

    .line 805
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    .line 806
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v9, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 813
    :cond_f
    if-eqz p2, :cond_10

    .line 814
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 815
    .local v10, result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 818
    .end local v10           #result:Ljava/lang/String;
    :cond_10
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 821
    :cond_11
    if-eqz p2, :cond_12

    .line 822
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 823
    .restart local v10       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 825
    .end local v10           #result:Ljava/lang/String;
    :cond_12
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 827
    :cond_13
    const/16 v0, 0x2d

    if-eq v2, v0, :cond_14

    const/16 v0, 0x3b

    if-eq v2, v0, :cond_14

    const/16 v0, 0x2f

    if-eq v2, v0, :cond_14

    const/16 v0, 0x2a

    if-ne v2, v0, :cond_16

    .line 830
    :cond_14
    if-eqz p2, :cond_15

    .line 831
    invoke-virtual {p0, v2, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(II)Z

    .line 832
    :cond_15
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 834
    :cond_16
    if-lez v2, :cond_1

    .line 836
    if-eqz p2, :cond_17

    .line 837
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 838
    .restart local v10       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 840
    .end local v10           #result:Ljava/lang/String;
    :cond_17
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 695
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_2
        0x37 -> :sswitch_5
        0x38 -> :sswitch_5
        0x3e -> :sswitch_3
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
        0x4b -> :sswitch_4
        0x4c -> :sswitch_0
    .end sparse-switch
.end method

.method private processStatePredict(Landroid/view/KeyEvent;Z)Z
    .locals 11
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 852
    const/4 v7, 0x0

    .line 853
    .local v7, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 854
    .local v9, keyCode:I
    const/4 v2, 0x0

    .line 855
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    .line 858
    .local v8, ic:Landroid/view/inputmethod/InputConnection;
    invoke-direct {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 868
    sparse-switch v9, :sswitch_data_0

    .line 963
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 964
    if-eqz p2, :cond_0

    .line 965
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 966
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    int-to-char v1, v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->addSplChar(CZ)V

    .line 967
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->chooseAndUpdate(I)V

    .line 969
    :cond_0
    const/4 v7, 0x1

    .line 1034
    :cond_1
    :goto_0
    return v7

    .line 871
    :sswitch_0
    if-eqz p2, :cond_2

    .line 872
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 873
    :cond_2
    const/4 v7, 0x1

    .line 875
    goto :goto_0

    .line 877
    :sswitch_1
    if-eqz p2, :cond_3

    .line 878
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processEnterKey()V

    .line 879
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 881
    :cond_3
    const/4 v7, 0x1

    .line 883
    goto :goto_0

    .line 885
    :sswitch_2
    if-eqz p2, :cond_4

    .line 887
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpaceKeyInputAssociate()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/SamsungIME;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 888
    invoke-direct {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 889
    if-lez v2, :cond_4

    .line 890
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 891
    .local v10, result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 904
    .end local v10           #result:Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v7, 0x1

    .line 906
    goto :goto_0

    .line 898
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getDefaultCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v6

    .line 900
    .local v6, activeCandNo:I
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/SamsungIME;->onChoiceTouched(I)V

    goto :goto_1

    .line 914
    .end local v6           #activeCandNo:I
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v9, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 917
    const/4 v7, 0x1

    goto :goto_0

    .line 926
    :sswitch_4
    if-eqz p2, :cond_6

    .line 927
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->chooseCandidate(I)V

    .line 928
    :cond_6
    const/4 v7, 0x1

    .line 930
    goto :goto_0

    .line 933
    :sswitch_5
    if-eqz p2, :cond_7

    .line 935
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 936
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 937
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    int-to-char v1, v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->addSplChar(CZ)V

    .line 938
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->chooseAndUpdate(I)V

    .line 959
    :cond_7
    :goto_2
    const/4 v7, 0x1

    .line 961
    goto/16 :goto_0

    .line 941
    :cond_8
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v0

    if-nez v0, :cond_9

    .line 946
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 948
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 952
    :cond_9
    const/16 v2, 0x2e

    .line 954
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 970
    :cond_a
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeNum(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 971
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 972
    :cond_b
    if-eqz p2, :cond_c

    .line 973
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 974
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    int-to-char v1, v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->addSplChar(CZ)V

    .line 975
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->chooseAndUpdate(I)V

    .line 977
    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 987
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_10

    .line 990
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    .line 991
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v9, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 995
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 998
    :cond_e
    if-eqz p2, :cond_f

    .line 999
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 1000
    .restart local v10       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1003
    .end local v10           #result:Ljava/lang/String;
    :cond_f
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1006
    :cond_10
    if-eqz p2, :cond_11

    .line 1007
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 1008
    .restart local v10       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1010
    .end local v10           #result:Ljava/lang/String;
    :cond_11
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1012
    :cond_12
    const/16 v0, 0x2d

    if-eq v2, v0, :cond_13

    const/16 v0, 0x3b

    if-eq v2, v0, :cond_13

    const/16 v0, 0x2f

    if-eq v2, v0, :cond_13

    const/16 v0, 0x2a

    if-ne v2, v0, :cond_15

    .line 1014
    :cond_13
    if-eqz p2, :cond_14

    .line 1015
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 1016
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    int-to-char v1, v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->addSplChar(CZ)V

    .line 1017
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->chooseAndUpdate(I)V

    .line 1020
    :cond_14
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1021
    :cond_15
    if-lez v2, :cond_1

    .line 1023
    if-eqz p2, :cond_16

    .line 1024
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 1025
    .restart local v10       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1027
    .end local v10           #result:Ljava/lang/String;
    :cond_16
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 868
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x37 -> :sswitch_5
        0x38 -> :sswitch_5
        0x3e -> :sswitch_2
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method private processSymbolKeys(Landroid/view/KeyEvent;Z)Z
    .locals 10
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/16 v5, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, bProcessed:Z
    const/4 v2, 0x0

    .line 162
    .local v2, keyChar:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 164
    .local v3, keyCode:I
    const/4 v1, 0x1

    .line 169
    .local v1, bResetToIdle:Z
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyPinyin()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 172
    sparse-switch v3, :sswitch_data_0

    .line 286
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeAlpha(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 287
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    if-eqz p2, :cond_0

    .line 289
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 291
    :cond_0
    const/4 v0, 0x1

    .line 410
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 413
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    .line 416
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v4

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v4, v5, :cond_2

    if-ne v1, v7, :cond_2

    .line 417
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 419
    :cond_2
    return v0

    .line 174
    :sswitch_0
    if-eqz p2, :cond_3

    .line 175
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 176
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 181
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 183
    goto :goto_0

    .line 178
    :cond_4
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v9

    aget v2, v4, v9

    goto :goto_1

    .line 185
    :sswitch_1
    if-eqz p2, :cond_5

    .line 186
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 187
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 192
    :cond_5
    :goto_2
    const/4 v0, 0x1

    .line 194
    goto :goto_0

    .line 189
    :cond_6
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    const/4 v5, 0x3

    aget-object v4, v4, v5

    aget v2, v4, v7

    goto :goto_2

    .line 196
    :sswitch_2
    if-eqz p2, :cond_7

    .line 197
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 198
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 203
    :cond_7
    :goto_3
    const/4 v0, 0x1

    .line 205
    goto :goto_0

    .line 200
    :cond_8
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v8

    aget v2, v4, v8

    goto :goto_3

    .line 207
    :sswitch_3
    if-eqz p2, :cond_9

    .line 208
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 209
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 214
    :cond_9
    :goto_4
    const/4 v0, 0x1

    .line 216
    goto :goto_0

    .line 211
    :cond_a
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v8

    aget v2, v4, v9

    goto :goto_4

    .line 218
    :sswitch_4
    if-eqz p2, :cond_b

    .line 219
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 220
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 225
    :cond_b
    :goto_5
    const/4 v0, 0x1

    .line 227
    goto :goto_0

    .line 222
    :cond_c
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    aget v2, v4, v5

    goto :goto_5

    .line 229
    :sswitch_5
    if-eqz p2, :cond_d

    .line 230
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 231
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 236
    :cond_d
    :goto_6
    const/4 v0, 0x1

    .line 238
    goto/16 :goto_0

    .line 233
    :cond_e
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    const/4 v5, 0x3

    aget v2, v4, v5

    goto :goto_6

    .line 240
    :sswitch_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 241
    if-eqz p2, :cond_f

    .line 242
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 244
    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 245
    :cond_10
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v4

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v4, v5, :cond_1

    .line 246
    if-eqz p2, :cond_11

    .line 247
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v7

    const/4 v5, 0x4

    aget v2, v4, v5

    .line 249
    :cond_11
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 254
    :sswitch_7
    if-eqz p2, :cond_12

    .line 255
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 256
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 261
    :cond_12
    :goto_7
    const/4 v0, 0x1

    .line 263
    goto/16 :goto_0

    .line 258
    :cond_13
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    aget v2, v4, v5

    goto :goto_7

    .line 275
    :sswitch_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    if-eq v4, v8, :cond_1

    .line 276
    if-eqz p2, :cond_14

    .line 277
    add-int/lit8 v4, v3, -0x7

    add-int/lit8 v2, v4, 0x30

    .line 279
    :cond_14
    const/4 v1, 0x0

    .line 280
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 297
    :cond_15
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Stroke()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 300
    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_0

    .line 302
    :sswitch_9
    if-eqz p2, :cond_16

    .line 303
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    aget v2, v4, v5

    .line 305
    :cond_16
    const/4 v0, 0x1

    .line 306
    goto/16 :goto_0

    .line 308
    :sswitch_a
    if-eqz p2, :cond_17

    .line 309
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    aget v2, v4, v7

    .line 311
    :cond_17
    const/4 v0, 0x1

    .line 312
    goto/16 :goto_0

    .line 314
    :sswitch_b
    if-eqz p2, :cond_18

    .line 316
    const v2, 0xff1a

    .line 318
    :cond_18
    const/4 v0, 0x1

    .line 319
    goto/16 :goto_0

    .line 321
    :sswitch_c
    if-eqz p2, :cond_19

    .line 323
    const/16 v2, 0x201c

    .line 325
    :cond_19
    const/4 v0, 0x1

    .line 326
    goto/16 :goto_0

    .line 330
    :sswitch_d
    if-eqz p2, :cond_1a

    .line 331
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v4

    if-nez v4, :cond_1b

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 334
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    aget v2, v4, v6

    .line 339
    :cond_1a
    :goto_8
    const/4 v0, 0x1

    .line 341
    goto/16 :goto_0

    .line 336
    :cond_1b
    const/16 v2, 0x2e

    goto :goto_8

    .line 347
    :cond_1c
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 348
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 351
    :pswitch_0
    if-eqz p2, :cond_1e

    .line 355
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 356
    :cond_1d
    const/16 v2, 0x2e

    .line 361
    :cond_1e
    :goto_9
    const/4 v0, 0x1

    .line 363
    goto/16 :goto_0

    .line 358
    :cond_1f
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    aget v2, v4, v6

    goto :goto_9

    .line 368
    :cond_20
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 369
    const/16 v4, 0x38

    if-ne v3, v4, :cond_1

    .line 371
    if-eqz p2, :cond_22

    .line 375
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v4

    if-nez v4, :cond_21

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 376
    :cond_21
    const/16 v2, 0x2e

    .line 381
    :cond_22
    :goto_a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 378
    :cond_23
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    aget v2, v4, v6

    goto :goto_a

    .line 386
    :cond_24
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isCangjieMode()Z

    move-result v4

    if-nez v4, :cond_25

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQuickCangjieMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    :cond_25
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Cangjie()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 389
    if-ne v3, v5, :cond_27

    .line 390
    if-eqz p2, :cond_26

    .line 391
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    aget v2, v4, v5

    .line 392
    :cond_26
    const/4 v0, 0x1

    .line 396
    :cond_27
    const/16 v4, 0x38

    if-ne v3, v4, :cond_1

    .line 397
    if-eqz p2, :cond_1

    .line 399
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v4

    if-nez v4, :cond_28

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 400
    :cond_28
    const/16 v2, 0x2e

    .line 405
    :goto_b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 402
    :cond_29
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    aget v2, v4, v6

    goto :goto_b

    .line 172
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_8
        0x8 -> :sswitch_8
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
        0xb -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0xe -> :sswitch_8
        0xf -> :sswitch_8
        0x10 -> :sswitch_8
        0x44 -> :sswitch_0
        0x45 -> :sswitch_1
        0x47 -> :sswitch_2
        0x48 -> :sswitch_3
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x4b -> :sswitch_6
        0x4c -> :sswitch_7
    .end sparse-switch

    .line 300
    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_b
        0x10 -> :sswitch_c
        0x38 -> :sswitch_d
    .end sparse-switch

    .line 348
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mkeyCount:I

    .line 96
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mLastKeyCode:I

    .line 97
    return-void
.end method

.method public processKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1236
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public processKeyUp(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1244
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method protected processPoundKey()V
    .locals 3

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1256
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->charBeforeCursorIsTone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->keycodeTransToKeyChar(I)I

    move-result v1

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->addSplChar(CZ)V

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->chooseAndUpdate(I)V

    .line 1260
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->stopDelayCommit()V

    .line 89
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->clearFlags()V

    .line 91
    return-void
.end method
