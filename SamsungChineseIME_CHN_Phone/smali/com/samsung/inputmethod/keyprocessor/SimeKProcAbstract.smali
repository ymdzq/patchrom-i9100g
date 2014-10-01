.class public abstract Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;
.super Ljava/lang/Object;
.source "SimeKProcAbstract.java"


# static fields
.field private static final DEBUG:Z = false

.field protected static final SIMULATE_KEY_DELETE:Z = true

.field private static final TAG:Ljava/lang/String; = "AbsKeyProcessor"


# instance fields
.field protected mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

.field protected mImeService:Lcom/samsung/inputmethod/SamsungIME;

.field protected mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field protected mLastKeyCode:I

.field protected mLastRealKeyCode:Ljava/lang/String;

.field protected mOldKeyCode:I

.field protected mkeyCount:I

.field protected spaceInputted:Z

.field protected timeOver:Z


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 1
    .parameter "ime"

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mLastKeyCode:I

    .line 49
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mkeyCount:I

    .line 50
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mOldKeyCode:I

    .line 51
    iput-boolean v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->timeOver:Z

    .line 56
    iput-object p1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    .line 57
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 58
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    .line 60
    return-void
.end method


# virtual methods
.method public autoDelSpaceBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 0
    .parameter "ic"
    .parameter "keyLabel"

    .prologue
    .line 507
    return-void
.end method

.method protected autoPeriod()V
    .locals 13

    .prologue
    const/16 v12, 0x20

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 454
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getAutoFullStop()Z

    move-result v7

    if-nez v7, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 458
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 462
    invoke-interface {v2, v11, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 463
    .local v5, text:Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 467
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 469
    .local v3, length:I
    if-lt v3, v11, :cond_0

    .line 473
    invoke-interface {v5, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 474
    .local v0, firstChar:C
    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 475
    .local v4, secondChar:C
    invoke-interface {v5, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 476
    .local v6, thirdChar:C
    const-string v1, ". "

    .line 477
    .local v1, fullstop:Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 479
    :cond_2
    const/16 v7, 0x3002

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 482
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-eqz v7, :cond_0

    if-ne v4, v12, :cond_0

    if-ne v6, v12, :cond_0

    .line 483
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 484
    invoke-interface {v2, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 485
    invoke-interface {v2, v1, v9}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 486
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0
.end method

.method protected commiteText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method protected getIMEResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v0

    return-object v0
.end method

.method protected getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    return-object v0
.end method

.method public isHardKeyProcessedWhenUp(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, bRet:Z
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 413
    const/4 v0, 0x1

    .line 415
    :cond_0
    return v0
.end method

.method public isKeyCodeAlpha(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, bRet:Z
    const/16 v1, 0x1d

    if-lt p1, v1, :cond_0

    const/16 v1, 0x36

    if-gt p1, v1, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 84
    :cond_0
    return v0
.end method

.method public isKeyCodeNum(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, bRet:Z
    const/4 v1, 0x7

    if-lt p1, v1, :cond_0

    const/16 v1, 0x10

    if-gt p1, v1, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 96
    :cond_0
    return v0
.end method

.method public isKeyCodeZero(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, bRet:Z
    const/4 v1, 0x7

    if-ne v1, p1, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 104
    :cond_0
    return v0
.end method

.method public isKeyProcessedWhenLong(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 399
    .local v0, bRet:Z
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->isKeyCodeNum(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    const/4 v0, 0x1

    .line 405
    :cond_0
    :goto_0
    return v0

    .line 401
    :cond_1
    const/16 v1, 0x12

    if-eq p1, v1, :cond_2

    const/16 v1, 0x11

    if-ne p1, v1, :cond_0

    .line 403
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSoftKey(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, bRet:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 71
    :cond_0
    return v0
.end method

.method protected processBackKey()Z
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 160
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->handleBack(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    const/4 v0, 0x1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->miniSymbolScreenon:Z

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    .line 166
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected processClipBoardKey()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method protected processDownPageKey()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->processSwitchToNextSymbolPage()Z

    .line 254
    return-void
.end method

.method protected processEnterKey()V
    .locals 5

    .prologue
    const/16 v4, 0x42

    .line 128
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 135
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v3, 0xfff000

    and-int v1, v2, v3

    .line 137
    .local v1, inputType:I
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnterNoramlState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->sendKeyChar(C)V

    .line 151
    :goto_0
    return-void

    .line 142
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.baidu.netdisk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 145
    :cond_1
    const/high16 v2, 0x4

    if-eq v1, v2, :cond_2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 147
    :cond_2
    const-string v2, "\n"

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->commiteText(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->sendDownUpKeyEvents(I)V

    goto :goto_0
.end method

.method public abstract processKeyDown(Landroid/view/KeyEvent;)Z
.end method

.method public abstract processKeyUp(Landroid/view/KeyEvent;)Z
.end method

.method protected processLangKey()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 303
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/16 v5, -0xc

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 304
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 305
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getHWKeyboardConnection()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->changeInputModeByKeyboard()V

    .line 307
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 308
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 312
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 313
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, language:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getToast()Lcom/samsung/inputmethod/comm/SimeToast;

    move-result-object v1

    .line 326
    .local v1, languageToast:Lcom/samsung/inputmethod/comm/SimeToast;
    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/comm/SimeToast;->setText(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeToast;->show()V

    .line 329
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v6}, Lcom/samsung/inputmethod/SamsungIME;->setHWKeyboardLedState(Z)V

    .line 330
    return-void

    .line 315
    .end local v0           #language:Ljava/lang/String;
    .end local v1           #languageToast:Lcom/samsung/inputmethod/comm/SimeToast;
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 316
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #language:Ljava/lang/String;
    goto :goto_0

    .line 317
    .end local v0           #language:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 318
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #language:Ljava/lang/String;
    goto :goto_0

    .line 319
    .end local v0           #language:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 320
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #language:Ljava/lang/String;
    goto :goto_0

    .line 322
    .end local v0           #language:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #language:Ljava/lang/String;
    goto :goto_0
.end method

.method protected processLongPoundKey()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public processLongPressKey(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 425
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 426
    const/4 v2, 0x0

    .line 427
    .local v2, keyChar:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 431
    .local v3, keyCode:I
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->isKeyProcessedWhenLong(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 433
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->isKeyCodeNum(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 434
    add-int/lit8 v5, v3, -0x7

    add-int/lit8 v2, v5, 0x30

    .line 435
    const/4 v0, 0x1

    .line 438
    :cond_0
    if-eqz v2, :cond_1

    .line 439
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, result:Ljava/lang/String;
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 441
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 450
    .end local v2           #keyChar:I
    .end local v3           #keyCode:I
    .end local v4           #result:Ljava/lang/String;
    :cond_1
    return v0
.end method

.method protected processPoundKey()V
    .locals 4

    .prologue
    .line 284
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 285
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 287
    .local v1, inputType:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 289
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->sendDownUpKeyEvents(I)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->processToolBarShortCut()Z

    goto :goto_0
.end method

.method protected processShift(Z)V
    .locals 2
    .parameter "realAction"

    .prologue
    .line 174
    if-nez p1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextTempUpperCaseWithSkb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const v1, 0x12110001

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 190
    :goto_1
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode1()V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1211

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_1

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1111

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_1

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextTempUpperCaseWithSkb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 195
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const v1, 0x12030001

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 203
    :goto_2
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto/16 :goto_0

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1203

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_2

    .line 201
    :cond_6
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1113

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_2
.end method

.method protected processStarKey()V
    .locals 4

    .prologue
    .line 269
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 270
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 272
    .local v1, inputType:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->sendDownUpKeyEvents(I)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->processSwitchToSymbolToolbarMode()Z

    goto :goto_0
.end method

.method protected processSurfaceChange(II)Z
    .locals 8
    .parameter "keyChar"
    .parameter "keyCode"

    .prologue
    const/16 v7, 0x43

    const/16 v6, 0x39

    const/16 v5, 0x30

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 343
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->isSplStrFull()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->isSplStrFull()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-eq v7, p2, :cond_2

    .line 390
    :cond_1
    :goto_0
    return v3

    .line 351
    :cond_2
    const/16 v1, 0x61

    if-lt p1, v1, :cond_3

    const/16 v1, 0x7a

    if-le p1, v1, :cond_c

    :cond_3
    const/16 v1, 0x27

    if-eq p1, v1, :cond_c

    if-lt p1, v5, :cond_4

    if-le p1, v6, :cond_5

    :cond_4
    const/16 v1, 0x20

    if-ne p1, v1, :cond_6

    :cond_5
    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_COMPOSING:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v2

    if-eq v1, v2, :cond_c

    :cond_6
    if-lt p1, v5, :cond_7

    if-le p1, v6, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x2a

    if-ne p1, v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_9
    if-lt p1, v5, :cond_a

    if-le p1, v6, :cond_b

    :cond_a
    const/16 v1, 0x2d

    if-eq p1, v1, :cond_b

    const/16 v1, 0x3b

    if-eq p1, v1, :cond_b

    const/16 v1, 0x2f

    if-eq p1, v1, :cond_b

    const/16 v1, 0x2c

    if-eq p1, v1, :cond_b

    const/16 v1, 0x2e

    if-ne p1, v1, :cond_e

    :cond_b
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 358
    :cond_c
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9English()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 360
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    int-to-char v2, p1

    invoke-virtual {v1, v2, v4}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->addSplChar(CZ)V

    .line 366
    :goto_1
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->chooseAndUpdate(I)V

    .line 367
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processShift(Z)V

    goto :goto_0

    .line 364
    :cond_d
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    int-to-char v2, p1

    invoke-virtual {v1, v2, v4}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->addSplChar(CZ)V

    goto :goto_1

    .line 370
    :cond_e
    if-ne p2, v7, :cond_1

    .line 372
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9English()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 374
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->prepareDeleteBeforeCursor()V

    .line 380
    :goto_2
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->chooseAndUpdate(I)V

    .line 382
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 385
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 386
    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 378
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_f
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->prepareDeleteBeforeCursor()V

    goto :goto_2
.end method

.method protected processTapKey()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method protected processUpPageKey()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->processSwitchToPreviousSymbolPage()Z

    .line 260
    return-void
.end method

.method public abstract reset()V
.end method

.method protected setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V
    .locals 1
    .parameter "imeState"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/SamsungIME;->setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 116
    return-void
.end method

.method protected simulateKeyEventDownUp(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 334
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 337
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method
