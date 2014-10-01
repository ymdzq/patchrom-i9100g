.class public Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;
.super Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;
.source "SimeKProcEnglish.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$1;,
        Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SYMBOL_ENTER:Ljava/lang/String; = "\n"

.field private static final SYMBOL_SPACE:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String; = "EnglishKeyProcessor"

.field private static final endPunctuationArray:[Ljava/lang/String; = null

.field private static mCharCaseGap:I = 0x0

.field private static final mEn34KeyMap:[[I = null

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
.field isShiftKeyNeedProcess:Z

.field private mCapsLockState:Z

.field private mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

.field private mLastKeyCode:I

.field private mkeyCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 66
    const/16 v0, -0x20

    sput v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mCharCaseGap:I

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [[I

    new-array v1, v6, [I

    const/16 v2, 0x20

    aput v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mEn34KeyMap:[[I

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "!"

    aput-object v1, v0, v5

    const-string v1, "?"

    aput-object v1, v0, v6

    const-string v1, ","

    aput-object v1, v0, v7

    const-string v1, ":"

    aput-object v1, v0, v3

    const-string v1, ";"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "."

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->endPunctuationArray:[Ljava/lang/String;

    return-void

    .line 68
    :array_0
    .array-data 0x4
        0x2ct 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x61t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x67t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x6dt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x70t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x74t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x77t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 1
    .parameter "ime"

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    .line 49
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    .line 50
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    .line 51
    iput-boolean v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isShiftKeyNeedProcess:Z

    .line 64
    iput-boolean v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mCapsLockState:Z

    .line 78
    new-instance v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;-><init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    return v0
.end method

.method private getCapsLockState()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mCapsLockState:Z

    return v0
.end method

.method private isLongpressKey(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, bIsLong:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 113
    .local v1, nkeyRepCnt:I
    if-lez v1, :cond_0

    rem-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 115
    :cond_0
    return v0
.end method

.method private keycodeTransToKeyChar(I)I
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, keyChar:I
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    add-int/lit8 v1, p1, -0x1d

    add-int/lit8 v0, v1, 0x61

    .line 140
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextUpperCaseWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    sget v1, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mCharCaseGap:I

    add-int/2addr v0, v1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeNum(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    add-int/lit8 v1, p1, -0x7

    add-int/lit8 v0, v1, 0x30

    goto :goto_0

    .line 145
    :cond_2
    const/16 v1, 0x37

    if-ne p1, v1, :cond_3

    .line 146
    const/16 v0, 0x2c

    goto :goto_0

    .line 147
    :cond_3
    const/16 v1, 0x38

    if-ne p1, v1, :cond_4

    .line 148
    const/16 v0, 0x2e

    goto :goto_0

    .line 149
    :cond_4
    const/16 v1, 0x4b

    if-ne p1, v1, :cond_5

    .line 150
    const/16 v0, 0x27

    goto :goto_0

    .line 151
    :cond_5
    const/16 v1, 0x4d

    if-ne p1, v1, :cond_6

    .line 152
    const/16 v0, 0x40

    goto :goto_0

    .line 153
    :cond_6
    const/16 v1, 0x4c

    if-ne p1, v1, :cond_7

    .line 154
    const/16 v0, 0x2f

    goto :goto_0

    .line 155
    :cond_7
    const/16 v1, 0x45

    if-ne p1, v1, :cond_8

    .line 156
    const/16 v0, 0x2d

    goto :goto_0

    .line 157
    :cond_8
    const/16 v1, 0x4a

    if-ne p1, v1, :cond_9

    .line 158
    const/16 v0, 0x3b

    goto :goto_0

    .line 159
    :cond_9
    const/16 v1, 0x3f

    if-ne p1, v1, :cond_a

    .line 160
    const/16 v0, 0x3f

    goto :goto_0

    .line 161
    :cond_a
    const/16 v1, 0x42

    if-ne p1, v1, :cond_b

    .line 162
    const/16 v0, 0xa

    goto :goto_0

    .line 163
    :cond_b
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_0

    .line 164
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private processFuncKey(Landroid/view/KeyEvent;Z)Z
    .locals 8
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/high16 v7, 0x1121

    const/high16 v6, 0x1111

    const/high16 v5, 0x10

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1480
    const/4 v0, 0x0

    .line 1481
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1483
    .local v1, keyCode:I
    sparse-switch v1, :sswitch_data_0

    .line 1554
    :goto_0
    return v0

    .line 1485
    :sswitch_0
    if-eqz p2, :cond_0

    .line 1488
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processBackKey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1494
    :cond_0
    :goto_1
    const/4 v0, 0x1

    .line 1495
    goto :goto_0

    .line 1490
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1491
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    goto :goto_1

    .line 1497
    :sswitch_1
    if-eqz p2, :cond_2

    .line 1500
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processLangKey()V

    .line 1502
    :cond_2
    const/4 v0, 0x1

    .line 1504
    goto :goto_0

    .line 1506
    :sswitch_2
    if-eqz p2, :cond_3

    .line 1507
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCapsLockOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1508
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->setCapsLockState(Z)V

    .line 1512
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processDockCapsLockKey()V

    .line 1514
    :cond_3
    const/4 v0, 0x1

    .line 1516
    goto :goto_0

    .line 1510
    :cond_4
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->setCapsLockState(Z)V

    goto :goto_2

    .line 1519
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_5

    iget-boolean v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isShiftKeyNeedProcess:Z

    if-ne v2, v4, :cond_5

    .line 1520
    const/4 v0, 0x0

    .line 1521
    goto :goto_0

    .line 1524
    :cond_5
    iget-boolean v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isShiftKeyNeedProcess:Z

    if-nez v2, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8

    .line 1526
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_7

    .line 1527
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 1531
    :goto_3
    iput-boolean v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isShiftKeyNeedProcess:Z

    .line 1532
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1533
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 1548
    :cond_6
    :goto_4
    const/4 v0, 0x0

    .line 1550
    goto :goto_0

    .line 1529
    :cond_7
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_3

    .line 1535
    :cond_8
    iget-boolean v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isShiftKeyNeedProcess:Z

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 1537
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_9

    .line 1538
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 1543
    :goto_5
    iput-boolean v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isShiftKeyNeedProcess:Z

    .line 1544
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1545
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_4

    .line 1541
    :cond_9
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_5

    .line 1483
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x3b -> :sswitch_3
        0x3c -> :sswitch_3
        0x73 -> :sswitch_2
        0xe3 -> :sswitch_1
    .end sparse-switch
.end method

.method private processKey(Landroid/view/KeyEvent;Z)Z
    .locals 11
    .parameter "event"
    .parameter "isPressedDown"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1558
    const/4 v0, 0x0

    .line 1559
    .local v0, bProcessed:Z
    const/4 v4, 0x0

    .line 1560
    .local v4, isSoftKey:Z
    const/4 v1, 0x0

    .line 1561
    .local v1, bRealAction:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 1562
    .local v6, keyCode:I
    const/4 v5, 0x0

    .line 1563
    .local v5, keyChar:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 1564
    .local v2, count:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 1568
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1569
    const/4 v4, 0x1

    .line 1571
    :cond_0
    iget-object v9, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyEnglish()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34English()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_1
    :goto_0
    move v7, v0

    .line 1638
    :cond_2
    :goto_1
    return v7

    .line 1575
    :cond_3
    sget-object v9, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_BYPASS:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v10, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v10}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v10

    if-eq v9, v10, :cond_1

    .line 1579
    iget-object v9, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9, p1}, Lcom/samsung/inputmethod/SamsungIME;->needHideSoftKeyboard(Landroid/view/KeyEvent;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1580
    iget-object v9, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->hideSoftKeyboard()V

    .line 1586
    :cond_4
    const/4 v9, 0x4

    if-ne v6, v9, :cond_5

    .line 1587
    iget-object v9, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v9

    if-nez v9, :cond_5

    move v7, v0

    .line 1591
    goto :goto_1

    .line 1595
    :cond_5
    if-eqz v4, :cond_7

    .line 1597
    if-nez p2, :cond_6

    .line 1598
    const/4 v1, 0x1

    .line 1621
    :cond_6
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processFuncKey(Landroid/view/KeyEvent;Z)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1622
    const/4 v0, 0x1

    goto :goto_0

    .line 1602
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyProcessedWhenLong(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1606
    if-gtz v2, :cond_2

    .line 1609
    if-nez p2, :cond_8

    move v1, v7

    :goto_3
    goto :goto_2

    :cond_8
    move v1, v8

    goto :goto_3

    .line 1610
    :cond_9
    const/16 v9, 0x3b

    if-eq v6, v9, :cond_a

    const/16 v9, 0x3c

    if-ne v6, v9, :cond_b

    .line 1612
    :cond_a
    const/4 v1, 0x1

    goto :goto_2

    .line 1613
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isHardKeyProcessedWhenUp(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1614
    if-nez p2, :cond_c

    move v1, v7

    :goto_4
    goto :goto_2

    :cond_c
    move v1, v8

    goto :goto_4

    .line 1617
    :cond_d
    move v1, p2

    goto :goto_2

    .line 1623
    :cond_e
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9QwertyEnglish()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1625
    invoke-virtual {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processT9QwertyKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_0

    .line 1626
    :cond_f
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyEnglish()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9On()Z

    move-result v7

    if-nez v7, :cond_10

    .line 1629
    invoke-virtual {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processQwertyKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto/16 :goto_0

    .line 1630
    :cond_10
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT934English()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1632
    invoke-virtual {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processT934key(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto/16 :goto_0

    .line 1635
    :cond_11
    invoke-virtual {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->process34key(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private processStatePredict(Landroid/view/KeyEvent;Z)Z
    .locals 10
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v6, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1705
    const/4 v1, 0x0

    .line 1706
    .local v1, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 1707
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 1710
    .local v2, keyChar:I
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 1716
    sparse-switch v3, :sswitch_data_0

    .line 1778
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeAlpha(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1779
    if-eqz p2, :cond_0

    .line 1780
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 1781
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v5, v5, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    int-to-char v6, v2

    invoke-virtual {v5, v6, v8}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->addSplChar(CZ)V

    .line 1782
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/SamsungIME;->chooseAndUpdate(I)V

    .line 1784
    :cond_0
    const/4 v1, 0x1

    .line 1830
    :cond_1
    :goto_0
    return v1

    .line 1718
    :sswitch_0
    if-eqz p2, :cond_2

    .line 1719
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1721
    :cond_2
    const/4 v1, 0x1

    .line 1722
    goto :goto_0

    .line 1724
    :sswitch_1
    if-eqz p2, :cond_3

    .line 1725
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processEnterKey()V

    .line 1726
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1728
    :cond_3
    const/4 v1, 0x1

    .line 1729
    goto :goto_0

    .line 1731
    :sswitch_2
    if-eqz p2, :cond_4

    .line 1733
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpaceKeyInputAssociate()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, p1}, Lcom/samsung/inputmethod/SamsungIME;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1734
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 1735
    if-lez v2, :cond_4

    .line 1736
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 1737
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1738
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1739
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyEnglish()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1740
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->autoPeriod()V

    .line 1752
    .end local v4           #result:Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v1, 0x1

    .line 1753
    goto :goto_0

    .line 1747
    :cond_5
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getDefaultCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v0

    .line 1748
    .local v0, activeCandNo:I
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v0}, Lcom/samsung/inputmethod/SamsungIME;->onChoiceTouched(I)V

    goto :goto_1

    .line 1758
    .end local v0           #activeCandNo:I
    :sswitch_3
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1760
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    invoke-virtual {v5, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1761
    const/4 v1, 0x1

    goto :goto_0

    .line 1766
    :sswitch_4
    if-eqz p2, :cond_6

    .line 1767
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/SamsungIME;->chooseCandidate(I)V

    .line 1768
    :cond_6
    const/4 v1, 0x1

    .line 1769
    goto :goto_0

    .line 1772
    :sswitch_5
    if-eqz p2, :cond_7

    .line 1773
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v6, ""

    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v5, v6, v2, v8, v7}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 1775
    :cond_7
    const/4 v1, 0x1

    .line 1776
    goto/16 :goto_0

    .line 1785
    :cond_8
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeNum(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1786
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1791
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    if-eq v5, v6, :cond_9

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v5, :cond_9

    .line 1794
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1796
    :cond_9
    if-eqz p2, :cond_a

    .line 1797
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->reset()V

    .line 1798
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 1799
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v5, v5, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    int-to-char v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->addSplChar(CZ)V

    .line 1800
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/SamsungIME;->chooseAndUpdate(I)V

    .line 1802
    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1805
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1806
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    if-eq v5, v6, :cond_c

    .line 1807
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    invoke-virtual {v5, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1809
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1812
    :cond_c
    if-eqz p2, :cond_d

    .line 1813
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 1814
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1815
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1817
    .end local v4           #result:Ljava/lang/String;
    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1820
    :cond_e
    if-lez v2, :cond_1

    .line 1821
    if-eqz p2, :cond_f

    .line 1822
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 1823
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1825
    .end local v4           #result:Ljava/lang/String;
    :cond_f
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1716
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

.method private processT9Period(ILandroid/view/inputmethod/InputConnection;)V
    .locals 3
    .parameter "keyCode"
    .parameter "ic"

    .prologue
    .line 868
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v0

    .line 870
    .local v0, keyChar:I
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v1, v2, :cond_0

    .line 871
    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->autoDelSpaceBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 874
    :cond_0
    if-eqz p2, :cond_1

    .line 875
    invoke-interface {p2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 876
    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 879
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_2

    .line 880
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 881
    :cond_2
    return-void
.end method

.method private setCapsLockState(Z)V
    .locals 0
    .parameter "bCapsLockState"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mCapsLockState:Z

    .line 123
    return-void
.end method


# virtual methods
.method public autoDelSpaceBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 4
    .parameter "ic"
    .parameter "keyLabel"

    .prologue
    .line 1211
    sget-object v2, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->endPunctuationArray:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1212
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1213
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1214
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1215
    const/16 v2, 0x43

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->simulateKeyEventDownUp(I)V

    .line 1218
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public clearFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    .line 100
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    .line 101
    return-void
.end method

.method public getCommitHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    return-object v0
.end method

.method protected process34key(Landroid/view/KeyEvent;Z)Z
    .locals 9
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1238
    const/4 v0, 0x0

    .line 1239
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 1240
    .local v4, keyCode:I
    const/4 v3, 0x0

    .line 1241
    .local v3, keyChar:I
    const/4 v2, 0x0

    .line 1242
    .local v2, isLongPressed:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1248
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isLongpressKey(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1250
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1456
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    if-lez v3, :cond_2

    .line 1457
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextUpperCaseWithSkb()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x61

    if-lt v3, v6, :cond_1

    const/16 v6, 0x7a

    if-gt v3, v6, :cond_1

    .line 1459
    sget v6, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mCharCaseGap:I

    add-int/2addr v3, v6

    .line 1461
    :cond_1
    int-to-char v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 1465
    .local v5, result:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeNum(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v6, 0x7

    if-eq v4, v6, :cond_1b

    .line 1467
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 1468
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->startCommitTimer(Landroid/view/inputmethod/InputConnection;)V

    .line 1475
    .end local v5           #result:Ljava/lang/String;
    :cond_2
    :goto_1
    return v0

    .line 1256
    :cond_3
    sparse-switch v4, :sswitch_data_0

    .line 1427
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeAlpha(I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1428
    if-eqz v2, :cond_4

    .line 1429
    const/4 p2, 0x1

    .line 1430
    :cond_4
    if-eqz p2, :cond_5

    .line 1431
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v3

    .line 1433
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 1259
    :sswitch_0
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v6, :cond_0

    .line 1260
    if-eqz p2, :cond_6

    .line 1261
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStarKey()V

    .line 1263
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 1269
    :sswitch_1
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v6, :cond_0

    .line 1270
    if-eqz p2, :cond_7

    .line 1271
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processPoundKey()V

    .line 1273
    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    .line 1279
    :sswitch_2
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1280
    if-eqz p2, :cond_8

    .line 1281
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processBackKey()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1282
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1283
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 1286
    :cond_8
    const/4 v0, 0x1

    goto :goto_0

    .line 1302
    :sswitch_3
    if-eqz v2, :cond_9

    .line 1303
    const/4 p2, 0x1

    .line 1304
    :cond_9
    if-eqz p2, :cond_a

    .line 1305
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1306
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 1307
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processEnterKey()V

    .line 1309
    :cond_a
    const/4 v0, 0x1

    .line 1311
    goto/16 :goto_0

    .line 1313
    :sswitch_4
    if-eqz v2, :cond_b

    .line 1314
    const/4 p2, 0x1

    .line 1315
    :cond_b
    if-eqz p2, :cond_c

    .line 1317
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1318
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 1323
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_d

    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v6, :cond_d

    .line 1324
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-interface {v1, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1332
    :cond_c
    :goto_2
    const/4 v0, 0x1

    .line 1334
    goto/16 :goto_0

    .line 1326
    :cond_d
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->simulateKeyEventDownUp(I)V

    goto :goto_2

    .line 1345
    :sswitch_5
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1347
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    invoke-virtual {v6, v4, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1348
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1365
    :sswitch_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    if-eq v6, v8, :cond_e

    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v6, :cond_e

    .line 1368
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1370
    :cond_e
    if-eqz v2, :cond_f

    .line 1371
    const/4 p2, 0x1

    .line 1372
    :cond_f
    if-eqz p2, :cond_10

    .line 1373
    sget-object v6, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mEn34KeyMap:[[I

    aget-object v6, v6, v7

    aget v3, v6, v7

    .line 1375
    :cond_10
    const/4 v0, 0x1

    .line 1378
    goto/16 :goto_0

    .line 1395
    :sswitch_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    if-eq v6, v8, :cond_11

    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v6, :cond_11

    .line 1398
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1400
    :cond_11
    if-eqz v2, :cond_12

    .line 1401
    const/4 p2, 0x1

    .line 1402
    :cond_12
    if-eqz p2, :cond_14

    .line 1403
    iget v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    if-eq v6, v4, :cond_15

    .line 1405
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1406
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 1408
    iput v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    .line 1416
    :goto_3
    const/16 v6, 0xe

    if-eq v6, v4, :cond_13

    const/16 v6, 0x10

    if-ne v6, v4, :cond_16

    .line 1417
    :cond_13
    sget-object v6, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mEn34KeyMap:[[I

    add-int/lit8 v7, v4, -0x7

    aget-object v6, v6, v7

    iget v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    rem-int/lit8 v7, v7, 0x4

    aget v3, v6, v7

    .line 1422
    :cond_14
    :goto_4
    const/4 v0, 0x1

    .line 1425
    goto/16 :goto_0

    .line 1411
    :cond_15
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1412
    iget v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    goto :goto_3

    .line 1419
    :cond_16
    sget-object v6, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mEn34KeyMap:[[I

    add-int/lit8 v7, v4, -0x7

    aget-object v6, v6, v7

    iget v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    rem-int/lit8 v7, v7, 0x3

    aget v3, v6, v7

    goto :goto_4

    .line 1435
    :cond_17
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v3

    .line 1436
    if-lez v3, :cond_1a

    .line 1437
    const/4 v0, 0x1

    .line 1438
    if-eqz v2, :cond_18

    .line 1439
    const/4 p2, 0x1

    .line 1440
    :cond_18
    if-eqz p2, :cond_19

    .line 1441
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1442
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_0

    .line 1444
    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1448
    :cond_1a
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1449
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_0

    .line 1470
    .restart local v5       #result:Ljava/lang/String;
    :cond_1b
    if-eqz v1, :cond_1c

    .line 1471
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 1472
    :cond_1c
    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_1

    .line 1256
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xa -> :sswitch_7
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0xd -> :sswitch_7
        0xe -> :sswitch_7
        0xf -> :sswitch_7
        0x10 -> :sswitch_7
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x15 -> :sswitch_5
        0x16 -> :sswitch_5
        0x17 -> :sswitch_5
        0x42 -> :sswitch_3
        0x43 -> :sswitch_4
    .end sparse-switch
.end method

.method protected processDockCapsLockKey()V
    .locals 2

    .prologue
    .line 1691
    invoke-direct {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getCapsLockState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1121

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 1696
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1697
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 1700
    :goto_1
    return-void

    .line 1694
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1111

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_0

    .line 1699
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->updateXT9Status()V

    goto :goto_1
.end method

.method public processKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1649
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public processKeyUp(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1657
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public processLongPressKey(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1665
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1667
    .local v0, keyCode:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyProcessedWhenLong(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1672
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    .line 1673
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT934English()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1675
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v1, v2, :cond_1

    .line 1677
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processLongPressKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1678
    const/4 v1, 0x1

    .line 1686
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processLongPressKey(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected processQwerty34Key(Landroid/view/KeyEvent;Z)Z
    .locals 1
    .parameter "event"
    .parameter "isPressedDown"

    .prologue
    .line 1227
    const/4 v0, 0x0

    .line 1230
    .local v0, bProcessed:Z
    return v0
.end method

.method protected processQwertyKey(Landroid/view/KeyEvent;Z)Z
    .locals 7
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 890
    const/4 v0, 0x0

    .line 891
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 892
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 893
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 902
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeAlpha(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return v0

    .line 910
    :cond_1
    sparse-switch v3, :sswitch_data_0

    .line 1015
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeAlpha(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1016
    if-eqz p2, :cond_3

    .line 1017
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 1019
    const/16 v5, 0x3b

    iget v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    if-eq v5, v6, :cond_2

    const/16 v5, 0x3c

    iget v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    if-ne v5, v6, :cond_3

    .line 1023
    :cond_2
    sget v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mCharCaseGap:I

    add-int/2addr v2, v5

    .line 1026
    :cond_3
    const/4 v0, 0x1

    .line 1049
    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    if-lez v2, :cond_6

    .line 1050
    if-eqz p2, :cond_5

    .line 1052
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 1053
    .local v4, result:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->commiteText(Ljava/lang/String;)V

    .line 1056
    .end local v4           #result:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeNum(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1057
    invoke-virtual {p0, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processShift(Z)V

    .line 1064
    :cond_6
    :goto_2
    iput v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    goto :goto_0

    .line 913
    :sswitch_0
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_6

    .line 914
    if-eqz p2, :cond_7

    .line 915
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStarKey()V

    .line 917
    :cond_7
    const/4 v0, 0x1

    goto :goto_2

    .line 923
    :sswitch_1
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_6

    .line 924
    if-eqz p2, :cond_8

    .line 925
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processPoundKey()V

    .line 927
    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    .line 933
    :sswitch_2
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 934
    if-eqz p2, :cond_6

    .line 935
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processBackKey()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 936
    const/4 v0, 0x1

    goto :goto_2

    .line 949
    :sswitch_3
    if-eqz p2, :cond_9

    .line 950
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processEnterKey()V

    .line 952
    :cond_9
    const/4 v0, 0x1

    .line 954
    goto :goto_2

    .line 956
    :sswitch_4
    if-eqz p2, :cond_a

    .line 960
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_b

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v5, :cond_b

    .line 961
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 969
    :cond_a
    :goto_3
    const/4 v0, 0x1

    .line 971
    goto :goto_2

    .line 963
    :cond_b
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->simulateKeyEventDownUp(I)V

    goto :goto_3

    .line 973
    :sswitch_5
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 974
    if-lez v2, :cond_c

    .line 975
    if-eqz p2, :cond_c

    .line 976
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 977
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->autoPeriod()V

    .line 984
    .end local v4           #result:Ljava/lang/String;
    :cond_c
    const/4 v0, 0x1

    .line 986
    goto :goto_2

    .line 998
    :sswitch_6
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1002
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    invoke-virtual {v5, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1004
    const/4 v0, 0x1

    goto :goto_2

    .line 1027
    :cond_d
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeNum(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1028
    if-eqz p2, :cond_e

    .line 1029
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 1031
    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1034
    :cond_f
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 1035
    if-lez v2, :cond_4

    .line 1037
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 910
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x13 -> :sswitch_6
        0x14 -> :sswitch_6
        0x15 -> :sswitch_6
        0x16 -> :sswitch_6
        0x17 -> :sswitch_6
        0x3e -> :sswitch_5
        0x42 -> :sswitch_3
        0x43 -> :sswitch_4
    .end sparse-switch
.end method

.method protected processState34Idle(Landroid/view/KeyEvent;Z)Z
    .locals 7
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v6, 0x0

    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 524
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 525
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 528
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    sparse-switch v3, :sswitch_data_0

    .line 615
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 616
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeNum(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 621
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v5, :cond_7

    .line 624
    const/4 v0, 0x0

    .line 642
    :cond_0
    :goto_0
    return v0

    .line 537
    :sswitch_0
    if-eqz p2, :cond_1

    .line 538
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 539
    if-lez v2, :cond_1

    .line 540
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 541
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 542
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 548
    .end local v4           #result:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    .line 550
    goto :goto_0

    .line 552
    :sswitch_1
    if-eqz p2, :cond_2

    .line 553
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processEnterKey()V

    .line 555
    :cond_2
    const/4 v0, 0x1

    .line 557
    goto :goto_0

    .line 559
    :sswitch_2
    if-eqz p2, :cond_3

    .line 561
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_4

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v5, :cond_4

    .line 562
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    invoke-interface {v1, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 569
    :goto_1
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 571
    :cond_3
    const/4 v0, 0x1

    .line 573
    goto :goto_0

    .line 564
    :cond_4
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->simulateKeyEventDownUp(I)V

    goto :goto_1

    .line 575
    :sswitch_3
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 580
    :cond_5
    if-eqz p2, :cond_6

    .line 581
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 582
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    .line 586
    :cond_6
    const/4 v0, 0x1

    .line 589
    goto :goto_0

    .line 600
    :sswitch_4
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 602
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    invoke-virtual {v5, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 603
    const/4 v0, 0x1

    goto :goto_0

    .line 626
    :cond_7
    const-string v5, "EnglishKeyProcessor"

    const-string v6, "--- send to imes"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    if-eqz p2, :cond_8

    .line 628
    invoke-virtual {p0, v2, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processSurfaceChange(II)Z

    .line 629
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 631
    :cond_9
    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 632
    if-eqz p2, :cond_a

    .line 633
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 634
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 636
    .end local v4           #result:Ljava/lang/String;
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 528
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x3e -> :sswitch_0
        0x42 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method protected processState34Input(Landroid/view/KeyEvent;Z)Z
    .locals 9
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 650
    const/4 v1, 0x0

    .line 651
    .local v1, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 652
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 658
    .local v2, keyChar:I
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 660
    sparse-switch v3, :sswitch_data_0

    .line 728
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeNum(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 733
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    if-eq v5, v7, :cond_6

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v5, :cond_6

    .line 736
    const/4 v1, 0x0

    .line 765
    :cond_0
    :goto_0
    return v1

    .line 662
    :sswitch_0
    if-eqz p2, :cond_1

    .line 663
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 664
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    .line 666
    :cond_1
    const/4 v1, 0x1

    .line 668
    goto :goto_0

    .line 679
    :sswitch_1
    if-eqz p2, :cond_2

    .line 680
    invoke-virtual {p0, v2, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processSurfaceChange(II)Z

    .line 681
    :cond_2
    const/4 v1, 0x1

    .line 682
    goto :goto_0

    .line 684
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 685
    if-eqz p2, :cond_3

    .line 686
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnterNoramlState()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 687
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v6, v6, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 688
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 695
    :cond_3
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 690
    :cond_4
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v6, v6, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processEnterKey()V

    .line 692
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    .line 700
    :sswitch_3
    if-eqz p2, :cond_5

    .line 701
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getDefaultCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v0

    .line 702
    .local v0, activeCandNo:I
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v0}, Lcom/samsung/inputmethod/SamsungIME;->onChoiceTouched(I)V

    .line 704
    .end local v0           #activeCandNo:I
    :cond_5
    const/4 v1, 0x1

    .line 706
    goto :goto_0

    .line 714
    :sswitch_4
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 716
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    invoke-virtual {v5, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 717
    const/4 v1, 0x1

    goto :goto_0

    .line 724
    :sswitch_5
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v6, ""

    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v5, v6, v2, v8, v7}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto/16 :goto_0

    .line 737
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    if-eq v5, v7, :cond_9

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_9

    .line 739
    if-eqz p2, :cond_7

    .line 740
    const/4 v5, 0x7

    if-ne v3, v5, :cond_8

    .line 741
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getDefaultCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v0

    .line 743
    .restart local v0       #activeCandNo:I
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v0}, Lcom/samsung/inputmethod/SamsungIME;->onChoiceTouched(I)V

    .line 748
    .end local v0           #activeCandNo:I
    :cond_7
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 745
    :cond_8
    invoke-virtual {p0, v2, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processSurfaceChange(II)Z

    goto :goto_2

    .line 750
    :cond_9
    if-eqz p2, :cond_a

    .line 751
    invoke-virtual {p0, v2, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processSurfaceChange(II)Z

    .line 753
    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 755
    :cond_b
    if-lez v2, :cond_0

    .line 756
    if-eqz p2, :cond_c

    .line 757
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 758
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 760
    .end local v4           #result:Ljava/lang/String;
    :cond_c
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 660
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x37 -> :sswitch_5
        0x38 -> :sswitch_5
        0x3e -> :sswitch_3
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x4c -> :sswitch_1
    .end sparse-switch
.end method

.method protected processStateAppCompletion(Landroid/view/KeyEvent;Z)Z
    .locals 6
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 178
    .local v3, keyCode:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 182
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    sparse-switch v3, :sswitch_data_0

    .line 237
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 238
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processState34Idle(Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 190
    :sswitch_0
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 193
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    const/4 v0, 0x1

    goto :goto_0

    .line 204
    :sswitch_1
    if-eqz p2, :cond_1

    .line 206
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_2

    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v4, :cond_2

    .line 207
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 215
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 217
    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->simulateKeyEventDownUp(I)V

    goto :goto_1

    .line 219
    :sswitch_2
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 220
    if-eqz p2, :cond_3

    .line 221
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 222
    .local v2, keyChar:I
    if-eqz v1, :cond_3

    .line 223
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 224
    int-to-char v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 227
    .end local v2           #keyChar:I
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 230
    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processState34Idle(Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 233
    goto :goto_0

    .line 243
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStateQwertyIdle(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_0

    .line 182
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method protected processStateQwertyIdle(Landroid/view/KeyEvent;Z)Z
    .locals 9
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 257
    .local v4, keyCode:I
    const/4 v3, 0x0

    .line 258
    .local v3, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 263
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    sparse-switch v4, :sswitch_data_0

    .line 350
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v3

    .line 352
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeAlpha(I)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-nez v6, :cond_8

    .line 353
    if-eqz p2, :cond_0

    .line 355
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v6, v6, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    int-to-char v7, v3

    invoke-virtual {v6, v7, v8}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->addSplChar(CZ)V

    .line 356
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->chooseAndUpdate(I)V

    .line 357
    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processShift(Z)V

    .line 359
    :cond_0
    const/4 v0, 0x1

    .line 385
    :cond_1
    :goto_0
    return v0

    .line 265
    :sswitch_0
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 270
    :cond_2
    if-eqz p2, :cond_3

    .line 271
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 272
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    .line 276
    :cond_3
    const/4 v0, 0x1

    .line 279
    goto :goto_0

    .line 288
    :sswitch_1
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v3

    .line 289
    if-lez v3, :cond_4

    .line 290
    if-eqz p2, :cond_4

    .line 291
    int-to-char v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, result:Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 293
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 294
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->autoPeriod()V

    .line 301
    .end local v5           #result:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    .line 303
    goto :goto_0

    .line 305
    :sswitch_2
    if-eqz p2, :cond_5

    .line 306
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processEnterKey()V

    .line 308
    :cond_5
    const/4 v0, 0x1

    .line 310
    goto :goto_0

    .line 312
    :sswitch_3
    if-eqz p2, :cond_6

    .line 314
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_7

    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v6, :cond_7

    .line 315
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-interface {v2, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 322
    :goto_1
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 324
    :cond_6
    const/4 v0, 0x1

    .line 326
    goto :goto_0

    .line 317
    :cond_7
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->simulateKeyEventDownUp(I)V

    goto :goto_1

    .line 334
    :sswitch_4
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 337
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    invoke-virtual {v6, v4, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 338
    const/4 v0, 0x1

    goto :goto_0

    .line 360
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 362
    invoke-static {v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v1

    .line 363
    .local v1, fullwidth_char:C
    if-eqz v1, :cond_a

    .line 364
    if-eqz p2, :cond_9

    .line 365
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 366
    .restart local v5       #result:Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 368
    .end local v5           #result:Ljava/lang/String;
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 370
    :cond_a
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeAlpha(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 371
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 374
    .end local v1           #fullwidth_char:C
    :cond_b
    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 375
    if-eqz p2, :cond_c

    .line 376
    int-to-char v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 377
    .restart local v5       #result:Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 379
    .end local v5           #result:Ljava/lang/String;
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 263
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x3e -> :sswitch_1
        0x42 -> :sswitch_2
        0x43 -> :sswitch_3
    .end sparse-switch
.end method

.method protected processStateQwertyInput(Landroid/view/KeyEvent;Z)Z
    .locals 9
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 394
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 399
    .local v2, keyChar:I
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 401
    sparse-switch v3, :sswitch_data_0

    .line 471
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeAlpha(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 472
    if-eqz p2, :cond_1

    .line 473
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextUpperCaseWithSkb()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 474
    sget v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mCharCaseGap:I

    sub-int/2addr v2, v5

    .line 476
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processSurfaceChange(II)Z

    .line 478
    :cond_1
    const/4 v1, 0x1

    .line 514
    :cond_2
    :goto_0
    return v1

    .line 403
    :sswitch_0
    if-eqz p2, :cond_3

    .line 404
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 405
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    .line 407
    :cond_3
    const/4 v1, 0x1

    .line 409
    goto :goto_0

    .line 420
    :sswitch_1
    if-eqz p2, :cond_4

    .line 421
    invoke-virtual {p0, v2, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processSurfaceChange(II)Z

    .line 423
    :cond_4
    const/4 v1, 0x1

    .line 425
    goto :goto_0

    .line 427
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 428
    if-eqz p2, :cond_5

    .line 429
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnterNoramlState()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 430
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v6, v6, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 431
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 438
    :cond_5
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 433
    :cond_6
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v6, v6, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processEnterKey()V

    .line 435
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    .line 443
    :sswitch_3
    if-eqz p2, :cond_7

    .line 444
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getDefaultCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v0

    .line 445
    .local v0, activeCandNo:I
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v0}, Lcom/samsung/inputmethod/SamsungIME;->onChoiceTouched(I)V

    .line 447
    .end local v0           #activeCandNo:I
    :cond_7
    const/4 v1, 0x1

    .line 449
    goto :goto_0

    .line 456
    :sswitch_4
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 458
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    invoke-virtual {v5, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 459
    const/4 v1, 0x1

    goto :goto_0

    .line 467
    :sswitch_5
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v6, ""

    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v5, v6, v2, v8, v7}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto/16 :goto_0

    .line 479
    :cond_8
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeNum(I)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-nez v5, :cond_c

    .line 481
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_9

    .line 482
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    invoke-virtual {v5, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 486
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 489
    :cond_9
    if-eqz p2, :cond_b

    .line 491
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 492
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v6, v6, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 494
    :cond_a
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 496
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 498
    .end local v4           #result:Ljava/lang/String;
    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 502
    :cond_c
    if-lez v2, :cond_2

    .line 503
    if-eqz p2, :cond_d

    .line 504
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 505
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 507
    .end local v4           #result:Ljava/lang/String;
    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 401
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x37 -> :sswitch_5
        0x38 -> :sswitch_5
        0x3e -> :sswitch_3
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x4c -> :sswitch_1
    .end sparse-switch
.end method

.method protected processT934key(Landroid/view/KeyEvent;Z)Z
    .locals 8
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1076
    const/4 v0, 0x0

    .line 1077
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 1078
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 1079
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1084
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    const/16 v5, 0x8

    if-ne v5, v3, :cond_6

    .line 1089
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    if-eq v5, v7, :cond_1

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v5, :cond_1

    .line 1092
    const/4 v0, 0x0

    .line 1205
    :cond_0
    :goto_0
    return v0

    .line 1093
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    if-eq v5, v7, :cond_4

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_4

    .line 1096
    if-eqz p2, :cond_2

    .line 1098
    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    if-eq v5, v3, :cond_3

    .line 1100
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1101
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 1102
    iput v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    .line 1109
    :goto_1
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mEn34KeyMap:[[I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    rem-int/lit8 v6, v6, 0x3

    aget v2, v5, v6

    .line 1110
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 1111
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 1112
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->startCommitTimer(Landroid/view/inputmethod/InputConnection;)V

    .line 1115
    .end local v4           #result:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1104
    :cond_3
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1105
    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    goto :goto_1

    .line 1118
    :cond_4
    if-eqz p2, :cond_5

    .line 1119
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 1120
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 1121
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1123
    .end local v4           #result:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 1126
    :cond_6
    if-eqz p2, :cond_7

    .line 1128
    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    if-eqz v5, :cond_7

    .line 1129
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1130
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 1133
    :cond_7
    sparse-switch v3, :sswitch_data_0

    .line 1181
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$1;->$SwitchMap$com$samsung$inputmethod$SamsungIME$ImeState:[I

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME$ImeState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 1183
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processState34Idle(Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 1184
    goto/16 :goto_0

    .line 1136
    :sswitch_0
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_0

    .line 1137
    if-eqz p2, :cond_8

    .line 1138
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStarKey()V

    .line 1140
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1146
    :sswitch_1
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_0

    .line 1147
    if-eqz p2, :cond_9

    .line 1148
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processPoundKey()V

    .line 1150
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1156
    :sswitch_2
    if-eqz p2, :cond_a

    .line 1157
    invoke-direct {p0, v3, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processT9Period(ILandroid/view/inputmethod/InputConnection;)V

    .line 1159
    :cond_a
    const/4 v0, 0x1

    .line 1160
    goto/16 :goto_0

    .line 1169
    :sswitch_3
    if-eqz p2, :cond_c

    .line 1170
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 1171
    if-eqz v1, :cond_b

    .line 1172
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1173
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1175
    :cond_b
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_c

    .line 1176
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1178
    :cond_c
    const/4 v0, 0x1

    .line 1179
    goto/16 :goto_0

    .line 1186
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStateAppCompletion(Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 1187
    goto/16 :goto_0

    .line 1190
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processState34Input(Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 1191
    goto/16 :goto_0

    .line 1194
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStatePredict(Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 1195
    goto/16 :goto_0

    .line 1133
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x37 -> :sswitch_3
        0x38 -> :sswitch_2
        0x4c -> :sswitch_3
    .end sparse-switch

    .line 1181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected processT9QwertyKey(Landroid/view/KeyEvent;Z)Z
    .locals 6
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 776
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 777
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 783
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    sparse-switch v3, :sswitch_data_0

    .line 833
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$1;->$SwitchMap$com$samsung$inputmethod$SamsungIME$ImeState:[I

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME$ImeState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 859
    :cond_0
    :goto_0
    return v0

    .line 786
    :sswitch_0
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v4, :cond_0

    .line 787
    if-eqz p2, :cond_1

    .line 788
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStarKey()V

    .line 790
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 796
    :sswitch_1
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v4, :cond_0

    .line 797
    if-eqz p2, :cond_2

    .line 798
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processPoundKey()V

    .line 800
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 813
    :sswitch_2
    if-eqz p2, :cond_3

    .line 814
    invoke-direct {p0, v3, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processT9Period(ILandroid/view/inputmethod/InputConnection;)V

    .line 816
    :cond_3
    const/4 v0, 0x1

    .line 817
    goto :goto_0

    .line 821
    :sswitch_3
    if-eqz p2, :cond_5

    .line 822
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 823
    if-eqz v1, :cond_4

    .line 824
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 825
    int-to-char v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 827
    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v4

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v4, v5, :cond_5

    .line 828
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 830
    :cond_5
    const/4 v0, 0x1

    .line 831
    goto :goto_0

    .line 835
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStateQwertyIdle(Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 836
    goto :goto_0

    .line 838
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStateAppCompletion(Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 839
    goto :goto_0

    .line 842
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStateQwertyInput(Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 843
    goto :goto_0

    .line 847
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStatePredict(Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 848
    goto :goto_0

    .line 783
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x37 -> :sswitch_3
        0x38 -> :sswitch_2
        0x4c -> :sswitch_3
    .end sparse-switch

    .line 833
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 93
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->finishCompsingEngText(Landroid/view/inputmethod/InputConnection;)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->clearFlags()V

    .line 95
    return-void
.end method
