.class public Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;
.super Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;
.source "SimeKProcSpecial.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SpecialInputProcessor"


# instance fields
.field fullSymbolMap:[[I

.field halfSymbolMap:[[I


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 8
    .parameter "ime"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x9

    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->halfSymbolMap:[[I

    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->fullSymbolMap:[[I

    .line 90
    return-void

    .line 45
    :array_0
    .array-data 0x4
        0x2ct 0x0t 0x0t 0x0t
        0x2t 0x30t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x1t 0x30t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x0t 0x30t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x3at 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x18t 0x20t 0x0t 0x0t
        0x19t 0x20t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x1ct 0x20t 0x0t 0x0t
        0x1dt 0x20t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xat 0xdt 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0x2t 0x25t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x5bt 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x26t 0x20t 0x0t 0x0t
        0xat 0x30t 0x0t 0x0t
        0xbt 0x30t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0xet 0x30t 0x0t 0x0t
        0xft 0x30t 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x10t 0x30t 0x0t 0x0t
        0x11t 0x30t 0x0t 0x0t
        0x3bt 0x20t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0xa9t 0x20t 0x0t 0x0t
        0xe5t 0xfft 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0xact 0x20t 0x0t 0x0t
        0xe1t 0xfft 0x0t 0x0t
    .end array-data

    .line 72
    :array_6
    .array-data 0x4
        0x2t 0x30t 0x0t 0x0t
        0xct 0xfft 0x0t 0x0t
        0x1at 0xfft 0x0t 0x0t
        0x1bt 0xfft 0x0t 0x0t
        0x1ft 0xfft 0x0t 0x0t
        0x1t 0xfft 0x0t 0x0t
        0x1ct 0x20t 0x0t 0x0t
        0x1dt 0x20t 0x0t 0x0t
        0x1t 0x30t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0xat 0xfft 0x0t 0x0t
        0x20t 0xfft 0x0t 0x0t
        0x6t 0xfft 0x0t 0x0t
        0x3t 0xfft 0x0t 0x0t
        0x18t 0x20t 0x0t 0x0t
        0x19t 0x20t 0x0t 0x0t
        0x5ct 0xfft 0x0t 0x0t
        0x5t 0xfft 0x0t 0x0t
        0x3et 0xfft 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x8t 0xfft 0x0t 0x0t
        0x9t 0xfft 0x0t 0x0t
        0x10t 0x30t 0x0t 0x0t
        0xat 0x30t 0x0t 0x0t
        0xbt 0x30t 0x0t 0x0t
        0x11t 0x30t 0x0t 0x0t
        0x26t 0x20t 0x0t 0x0t
        0x14t 0x20t 0x0t 0x0t
        0x5et 0xfft 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0xbt 0xfft 0x0t 0x0t
        0xdt 0xfft 0x0t 0x0t
        0x1dt 0xfft 0x0t 0x0t
        0xd7t 0x0t 0x0t 0x0t
        0xf7t 0x0t 0x0t 0x0t
        0x60t 0x22t 0x0t 0x0t
        0x1ct 0xfft 0x0t 0x0t
        0x1et 0xfft 0x0t 0x0t
        0xb1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0xe5t 0xfft 0x0t 0x0t
        0x4t 0xfft 0x0t 0x0t
        0xe1t 0xfft 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
        0x3t 0x21t 0x0t 0x0t
        0x9t 0x21t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0xaet 0x0t 0x0t 0x0t
        0x22t 0x21t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x5bt 0xfft 0x0t 0x0t
        0x5dt 0xfft 0x0t 0x0t
        0x1et 0x22t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0xcft 0x25t 0x0t 0x0t
        0x1at 0x22t 0x0t 0x0t
        0x11t 0x22t 0x0t 0x0t
        0x40t 0x26t 0x0t 0x0t
    .end array-data
.end method

.method private getPage34Symbol()I
    .locals 3

    .prologue
    .line 346
    const/4 v1, 0x0

    .line 348
    .local v1, page:I
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    new-instance v0, Lcom/samsung/inputmethod/SimeInputModeDef;

    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>(I)V

    .line 350
    .local v0, curInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->symbolNumType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 370
    const/4 v1, 0x0

    .line 374
    .end local v0           #curInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    :cond_0
    :goto_0
    return v1

    .line 352
    .restart local v0       #curInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    :sswitch_0
    const/4 v1, 0x1

    .line 353
    goto :goto_0

    .line 355
    :sswitch_1
    const/4 v1, 0x2

    .line 356
    goto :goto_0

    .line 358
    :sswitch_2
    const/4 v1, 0x3

    .line 359
    goto :goto_0

    .line 361
    :sswitch_3
    const/4 v1, 0x4

    .line 362
    goto :goto_0

    .line 364
    :sswitch_4
    const/4 v1, 0x5

    .line 365
    goto :goto_0

    .line 367
    :sswitch_5
    const/4 v1, 0x6

    .line 368
    goto :goto_0

    .line 350
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x3000 -> :sswitch_2
        0x4000 -> :sswitch_3
        0x5000 -> :sswitch_4
        0x6000 -> :sswitch_5
    .end sparse-switch
.end method

.method private process123Symbol(Landroid/view/KeyEvent;Z)Z
    .locals 7
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 441
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 442
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v4

    .line 445
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 446
    .local v2, keyCode:I
    const/4 v1, 0x0

    .line 448
    .local v1, keyChar:I
    const/4 v6, 0x7

    if-lt v2, v6, :cond_6

    const/16 v6, 0x10

    if-gt v2, v6, :cond_6

    .line 449
    if-nez p2, :cond_2

    move v4, v5

    .line 450
    goto :goto_0

    .line 451
    :cond_2
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbol()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 456
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 457
    invoke-direct {p0, v2, v5, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->process34Symbol(IZZ)Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v5

    .line 458
    goto :goto_0

    .line 460
    :cond_3
    invoke-direct {p0, v2, v4, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->process34Symbol(IZZ)Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v5

    .line 461
    goto :goto_0

    .line 464
    :cond_4
    add-int/lit8 v6, v2, -0x7

    add-int/lit8 v1, v6, 0x30

    .line 482
    :cond_5
    :goto_1
    if-eqz v1, :cond_0

    .line 483
    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->commiteText(Ljava/lang/String;)V

    move v4, v5

    .line 485
    goto :goto_0

    .line 465
    .end local v3           #text:Ljava/lang/String;
    :cond_6
    const/16 v6, 0x47

    if-ne v2, v6, :cond_9

    .line 466
    if-nez p2, :cond_7

    move v4, v5

    goto :goto_0

    .line 468
    :cond_7
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseSymbolSkb()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 469
    const v1, 0xff08

    goto :goto_1

    .line 471
    :cond_8
    const/16 v1, 0x28

    goto :goto_1

    .line 473
    :cond_9
    const/16 v6, 0x48

    if-ne v2, v6, :cond_5

    .line 474
    if-nez p2, :cond_a

    move v4, v5

    goto :goto_0

    .line 476
    :cond_a
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseSymbolSkb()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 477
    const v1, 0xff09

    goto :goto_1

    .line 479
    :cond_b
    const/16 v1, 0x29

    goto :goto_1
.end method

.method private process34Symbol(IZZ)Z
    .locals 10
    .parameter "keyCode"
    .parameter "bFullWidth"
    .parameter "realAction"

    .prologue
    const/4 v6, 0x1

    .line 379
    const/4 v0, 0x0

    .line 382
    .local v0, bRet:Z
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 383
    const/4 v3, 0x0

    .line 384
    .local v3, keyChar:I
    const/4 v1, 0x0

    .line 385
    .local v1, currentPage:I
    invoke-direct {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->getPage34Symbol()I

    move-result v1

    .line 388
    if-ltz v1, :cond_4

    const/4 v7, 0x6

    if-gt v1, v7, :cond_4

    .line 389
    if-eqz p2, :cond_1

    .line 390
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->fullSymbolMap:[[I

    .line 394
    .local v5, symbolMap:[[I
    :goto_0
    const/4 v7, 0x7

    if-ne p1, v7, :cond_3

    .line 395
    if-nez p3, :cond_2

    .line 436
    .end local v1           #currentPage:I
    .end local v3           #keyChar:I
    .end local v5           #symbolMap:[[I
    :cond_0
    :goto_1
    return v6

    .line 392
    .restart local v1       #currentPage:I
    .restart local v3       #keyChar:I
    :cond_1
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->halfSymbolMap:[[I

    .restart local v5       #symbolMap:[[I
    goto :goto_0

    .line 397
    :cond_2
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/16 v9, -0xb

    invoke-virtual {v8, v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 398
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->UpdateSkbContainer()V

    goto :goto_1

    .line 400
    :cond_3
    const/16 v7, 0x8

    if-lt p1, v7, :cond_6

    const/16 v7, 0x10

    if-gt p1, v7, :cond_6

    .line 401
    if-eqz p3, :cond_0

    .line 402
    add-int/lit8 v2, p1, -0x8

    .line 403
    .local v2, index:I
    add-int/lit8 v6, v1, -0x1

    aget-object v6, v5, v6

    aget v3, v6, v2

    .line 405
    int-to-char v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, result:Ljava/lang/String;
    const/16 v6, 0xd0a

    if-ne v3, v6, :cond_5

    .line 408
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processEnterKey()V

    .line 413
    :goto_2
    const/4 v0, 0x1

    .end local v1           #currentPage:I
    .end local v2           #index:I
    .end local v3           #keyChar:I
    .end local v4           #result:Ljava/lang/String;
    .end local v5           #symbolMap:[[I
    :cond_4
    :goto_3
    move v6, v0

    .line 436
    goto :goto_1

    .line 412
    .restart local v1       #currentPage:I
    .restart local v2       #index:I
    .restart local v3       #keyChar:I
    .restart local v4       #result:Ljava/lang/String;
    .restart local v5       #symbolMap:[[I
    :cond_5
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-interface {v6, v4, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_2

    .line 415
    .end local v2           #index:I
    .end local v4           #result:Ljava/lang/String;
    :cond_6
    const/16 v7, 0x15

    if-ne p1, v7, :cond_7

    .line 416
    if-eqz p3, :cond_0

    .line 418
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/4 v8, -0x7

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 419
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->UpdateSkbContainer()V

    .line 420
    const/4 v0, 0x1

    goto :goto_3

    .line 422
    :cond_7
    const/16 v7, 0x16

    if-ne p1, v7, :cond_8

    .line 423
    if-eqz p3, :cond_0

    .line 425
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/4 v8, -0x8

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 426
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->UpdateSkbContainer()V

    .line 427
    const/4 v0, 0x1

    goto :goto_3

    .line 429
    :cond_8
    const/16 v7, 0x43

    if-ne p1, v7, :cond_4

    .line 430
    if-eqz p3, :cond_0

    .line 431
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v6, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 432
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private processDateTime(Landroid/view/KeyEvent;Z)Z
    .locals 6
    .parameter "event"
    .parameter "realAction"

    .prologue
    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 673
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 674
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 675
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 678
    .local v2, keyChar:I
    const/4 v5, 0x7

    if-lt v3, v5, :cond_1

    const/16 v5, 0x10

    if-gt v3, v5, :cond_1

    .line 679
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 680
    if-eqz p2, :cond_0

    .line 681
    add-int/lit8 v5, v3, -0x7

    add-int/lit8 v2, v5, 0x30

    .line 682
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 683
    .local v4, text:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->commiteText(Ljava/lang/String;)V

    .line 685
    .end local v4           #text:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    .line 691
    .end local v2           #keyChar:I
    .end local v3           #keyCode:I
    :cond_1
    return v0
.end method

.method private processFunctionKeys(Landroid/view/KeyEvent;Z)Z
    .locals 7
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 208
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    move v3, v5

    .line 341
    :cond_0
    :goto_0
    return v3

    .line 212
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 213
    .local v2, keyCode:I
    const/4 v1, 0x0

    .line 214
    .local v1, keyChar:I
    const-string v4, ""

    .line 215
    .local v4, text:Ljava/lang/String;
    const/4 v3, 0x0

    .line 217
    .local v3, result:Z
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 246
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 251
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTime()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 255
    const/4 v3, 0x1

    goto :goto_0

    .line 222
    :sswitch_1
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolbarSymbol(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    if-eqz p2, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processUpPageKey()V

    .line 227
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 234
    :sswitch_2
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolbarSymbol(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 236
    if-eqz p2, :cond_3

    .line 237
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processDownPageKey()V

    .line 239
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 256
    :cond_4
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonth()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 259
    const/4 v3, 0x0

    goto :goto_0

    .line 261
    :cond_5
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_0

    .line 262
    if-eqz p2, :cond_6

    .line 263
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processStarKey()V

    .line 265
    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    .line 274
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 280
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTime()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 284
    const/4 v3, 0x1

    goto :goto_0

    .line 285
    :cond_7
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonth()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 288
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 290
    :cond_8
    if-eqz p2, :cond_9

    .line 291
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processPoundKey()V

    .line 293
    :cond_9
    const/4 v3, 0x1

    .line 298
    goto/16 :goto_0

    .line 300
    :sswitch_4
    if-nez p2, :cond_a

    move v3, v6

    goto/16 :goto_0

    .line 301
    :cond_a
    const/16 v1, 0x20

    .line 302
    int-to-char v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->commiteText(Ljava/lang/String;)V

    .line 304
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 305
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->autoPeriod()V

    .line 307
    :cond_b
    const/4 v3, 0x1

    .line 308
    goto/16 :goto_0

    .line 310
    :sswitch_5
    if-nez p2, :cond_c

    move v3, v6

    goto/16 :goto_0

    .line 313
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_d

    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v6, :cond_d

    .line 314
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 324
    :goto_1
    const/4 v3, 0x1

    .line 325
    goto/16 :goto_0

    .line 316
    :cond_d
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->simulateKeyEventDownUp(I)V

    goto :goto_1

    .line 327
    :sswitch_6
    if-nez p2, :cond_e

    move v3, v6

    goto/16 :goto_0

    .line 329
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processEnterKey()V

    .line 330
    const/4 v3, 0x1

    .line 331
    goto/16 :goto_0

    .line 333
    :sswitch_7
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v5}, Lcom/samsung/inputmethod/SamsungIME;->setHWKeyboardLedState(Z)V

    .line 334
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3e -> :sswitch_4
        0x42 -> :sswitch_6
        0x43 -> :sswitch_5
        0x73 -> :sswitch_7
    .end sparse-switch
.end method

.method private processKey(Landroid/view/KeyEvent;Z)Z
    .locals 7
    .parameter "event"
    .parameter "isPressedDown"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, bProcessed:Z
    const/4 v3, 0x0

    .line 143
    .local v3, isSoftKey:Z
    const/4 v1, 0x0

    .line 144
    .local v1, bRealAction:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 150
    .local v2, count:I
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 151
    const/4 v3, 0x1

    .line 155
    :cond_0
    if-eqz v3, :cond_4

    .line 157
    if-nez p2, :cond_3

    move v1, v4

    .line 183
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processFunctionKeys(Landroid/view/KeyEvent;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 184
    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v4, v0

    .line 200
    :cond_2
    return v4

    :cond_3
    move v1, v5

    .line 157
    goto :goto_0

    .line 162
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->isKeyProcessedWhenLong(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 166
    if-gtz v2, :cond_2

    .line 171
    if-nez p2, :cond_5

    move v1, v4

    :goto_2
    goto :goto_0

    :cond_5
    move v1, v5

    goto :goto_2

    .line 172
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->isHardKeyProcessedWhenUp(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 175
    if-nez p2, :cond_7

    move v1, v4

    :goto_3
    goto :goto_0

    :cond_7
    move v1, v5

    goto :goto_3

    .line 178
    :cond_8
    move v1, p2

    goto :goto_0

    .line 189
    :cond_9
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 190
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->process123Symbol(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_1

    .line 191
    :cond_a
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTime()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 192
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processDateTime(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_1

    .line 193
    :cond_b
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonth()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 194
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processMonth(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_1

    .line 195
    :cond_c
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 196
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processPhone(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_1

    .line 197
    :cond_d
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 198
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processNumOnly(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_1
.end method

.method private processMonth(Landroid/view/KeyEvent;Z)Z
    .locals 13
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/16 v12, 0x30

    const/4 v11, 0x2

    const/4 v6, 0x0

    const/16 v10, 0x14

    const/4 v7, 0x1

    .line 497
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 498
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 661
    :cond_0
    :goto_0
    return v6

    .line 502
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 506
    .local v3, keyCode:I
    new-instance v8, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v8}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v1, v8, v6}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 508
    .local v0, et:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 514
    const/4 v5, 0x0

    .line 515
    .local v5, textCharLen:I
    const/4 v2, 0x0

    .line 516
    .local v2, isNumEnv:Z
    const-string v4, ""

    .line 517
    .local v4, label:Ljava/lang/String;
    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 522
    if-lt v5, v11, :cond_2

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-lt v8, v12, :cond_2

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x39

    if-le v8, v9, :cond_3

    :cond_2
    if-ne v5, v7, :cond_4

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-lt v8, v12, :cond_4

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x39

    if-gt v8, v9, :cond_4

    .line 525
    :cond_3
    const/4 v2, 0x1

    .line 527
    :cond_4
    packed-switch v3, :pswitch_data_0

    .line 650
    :goto_1
    :pswitch_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 651
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 652
    if-lez v5, :cond_5

    .line 653
    invoke-interface {v1, v6, v5}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 654
    invoke-interface {v1, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 656
    :cond_5
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->commiteText(Ljava/lang/String;)V

    .line 657
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v6, v7

    .line 658
    goto :goto_0

    .line 530
    :pswitch_1
    if-nez p2, :cond_6

    move v6, v7

    .line 531
    goto :goto_0

    .line 532
    :cond_6
    if-eqz v2, :cond_7

    .line 533
    const-string v4, "01"

    goto :goto_1

    .line 535
    :cond_7
    invoke-static {v6, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 537
    goto :goto_1

    .line 540
    :pswitch_2
    if-nez p2, :cond_8

    move v6, v7

    .line 541
    goto :goto_0

    .line 542
    :cond_8
    if-eqz v2, :cond_9

    .line 543
    const-string v4, "02"

    goto :goto_1

    .line 545
    :cond_9
    invoke-static {v7, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 547
    goto :goto_1

    .line 550
    :pswitch_3
    if-nez p2, :cond_a

    move v6, v7

    .line 551
    goto :goto_0

    .line 552
    :cond_a
    if-eqz v2, :cond_b

    .line 553
    const-string v4, "03"

    goto :goto_1

    .line 555
    :cond_b
    invoke-static {v11, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 557
    goto :goto_1

    .line 560
    :pswitch_4
    if-nez p2, :cond_c

    move v6, v7

    .line 561
    goto/16 :goto_0

    .line 562
    :cond_c
    if-eqz v2, :cond_d

    .line 563
    const-string v4, "04"

    goto :goto_1

    .line 565
    :cond_d
    const/4 v8, 0x3

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 567
    goto :goto_1

    .line 570
    :pswitch_5
    if-nez p2, :cond_e

    move v6, v7

    .line 571
    goto/16 :goto_0

    .line 572
    :cond_e
    if-eqz v2, :cond_f

    .line 573
    const-string v4, "05"

    goto :goto_1

    .line 575
    :cond_f
    const/4 v8, 0x4

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 577
    goto :goto_1

    .line 580
    :pswitch_6
    if-nez p2, :cond_10

    move v6, v7

    .line 581
    goto/16 :goto_0

    .line 582
    :cond_10
    if-eqz v2, :cond_11

    .line 583
    const-string v4, "06"

    goto :goto_1

    .line 585
    :cond_11
    const/4 v8, 0x5

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 587
    goto :goto_1

    .line 590
    :pswitch_7
    if-nez p2, :cond_12

    move v6, v7

    .line 591
    goto/16 :goto_0

    .line 592
    :cond_12
    if-eqz v2, :cond_13

    .line 593
    const-string v4, "07"

    goto :goto_1

    .line 595
    :cond_13
    const/4 v8, 0x6

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 597
    goto/16 :goto_1

    .line 600
    :pswitch_8
    if-nez p2, :cond_14

    move v6, v7

    .line 601
    goto/16 :goto_0

    .line 602
    :cond_14
    if-eqz v2, :cond_15

    .line 603
    const-string v4, "08"

    goto/16 :goto_1

    .line 605
    :cond_15
    const/4 v8, 0x7

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 607
    goto/16 :goto_1

    .line 610
    :pswitch_9
    if-nez p2, :cond_16

    move v6, v7

    .line 611
    goto/16 :goto_0

    .line 612
    :cond_16
    if-eqz v2, :cond_17

    .line 613
    const-string v4, "09"

    goto/16 :goto_1

    .line 615
    :cond_17
    const/16 v8, 0x8

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 617
    goto/16 :goto_1

    .line 620
    :pswitch_a
    if-nez p2, :cond_18

    move v6, v7

    .line 621
    goto/16 :goto_0

    .line 622
    :cond_18
    if-eqz v2, :cond_19

    .line 623
    const-string v4, "10"

    goto/16 :goto_1

    .line 625
    :cond_19
    const/16 v8, 0x9

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 627
    goto/16 :goto_1

    .line 630
    :pswitch_b
    if-nez p2, :cond_1a

    move v6, v7

    .line 631
    goto/16 :goto_0

    .line 632
    :cond_1a
    if-eqz v2, :cond_1b

    .line 633
    const-string v4, "11"

    goto/16 :goto_1

    .line 635
    :cond_1b
    const/16 v8, 0xa

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 637
    goto/16 :goto_1

    .line 640
    :pswitch_c
    if-nez p2, :cond_1c

    move v6, v7

    .line 641
    goto/16 :goto_0

    .line 642
    :cond_1c
    if-eqz v2, :cond_1d

    .line 643
    const-string v4, "12"

    goto/16 :goto_1

    .line 645
    :cond_1d
    const/16 v8, 0xb

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private processNumOnly(Landroid/view/KeyEvent;Z)Z
    .locals 6
    .parameter "event"
    .parameter "realAction"

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 738
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v0, 0x0

    .line 740
    .local v0, bRet:Z
    if-eqz v1, :cond_2

    .line 741
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 742
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 744
    .local v2, keyChar:I
    const/4 v5, 0x7

    if-lt v3, v5, :cond_1

    const/16 v5, 0x10

    if-gt v3, v5, :cond_1

    .line 745
    if-eqz p2, :cond_0

    .line 746
    add-int/lit8 v5, v3, -0x7

    add-int/lit8 v2, v5, 0x30

    .line 748
    :cond_0
    const/4 v0, 0x1

    .line 754
    :cond_1
    if-eqz v2, :cond_2

    .line 757
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 758
    .local v4, result:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->commiteText(Ljava/lang/String;)V

    .line 764
    .end local v2           #keyChar:I
    .end local v3           #keyCode:I
    .end local v4           #result:Ljava/lang/String;
    :cond_2
    return v0
.end method

.method private processPhone(Landroid/view/KeyEvent;Z)Z
    .locals 6
    .parameter "event"
    .parameter "realAction"

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 698
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v0, 0x0

    .line 700
    .local v0, bRet:Z
    if-eqz v1, :cond_2

    .line 701
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 702
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 704
    .local v2, keyChar:I
    const/4 v5, 0x7

    if-lt v3, v5, :cond_3

    const/16 v5, 0x10

    if-gt v3, v5, :cond_3

    .line 705
    if-eqz p2, :cond_0

    .line 706
    add-int/lit8 v5, v3, -0x7

    add-int/lit8 v2, v5, 0x30

    .line 708
    :cond_0
    const/4 v0, 0x1

    .line 720
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 723
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 724
    .local v4, result:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->commiteText(Ljava/lang/String;)V

    .line 730
    .end local v2           #keyChar:I
    .end local v3           #keyCode:I
    .end local v4           #result:Ljava/lang/String;
    :cond_2
    return v0

    .line 709
    .restart local v2       #keyChar:I
    .restart local v3       #keyCode:I
    :cond_3
    const/16 v5, 0x37

    if-eq v3, v5, :cond_4

    const/16 v5, 0x4a

    if-eq v3, v5, :cond_4

    const/16 v5, 0x11

    if-eq v3, v5, :cond_4

    const/16 v5, 0x12

    if-ne v3, v5, :cond_1

    .line 711
    :cond_4
    if-eqz p2, :cond_5

    .line 712
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 714
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public processKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public processKeyUp(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public processLongPressKey(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 110
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 113
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v1, 0x0

    .line 114
    .local v1, keyChar:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 116
    .local v2, keyCode:I
    const/4 v4, 0x7

    if-ne v2, v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->isKeyProcessedWhenLong(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    if-nez v0, :cond_1

    .line 122
    const/4 v4, 0x0

    .line 132
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v1           #keyChar:I
    .end local v2           #keyCode:I
    :goto_0
    return v4

    .line 124
    .restart local v0       #ic:Landroid/view/inputmethod/InputConnection;
    .restart local v1       #keyChar:I
    .restart local v2       #keyCode:I
    :cond_1
    const/16 v1, 0x2b

    .line 125
    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, result:Ljava/lang/String;
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 127
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 128
    const/4 v4, 0x1

    goto :goto_0

    .line 132
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v1           #keyChar:I
    .end local v2           #keyCode:I
    .end local v3           #result:Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processLongPressKey(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method
