.class public Lcom/samsung/inputmethod/SimeLanguageMgr;
.super Ljava/lang/Object;
.source "SimeLanguageMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/SimeLanguageMgr$1;,
        Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;,
        Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;,
        Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final LANGCNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SimeLanguageMgr"

.field private static final mSupportedLangList:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;


# instance fields
.field mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

.field mCurLangIdx:I

.field mLangChangeNotifier:Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;

.field mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_TW:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_HK:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_SCHN:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_KOR:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mSupportedLangList:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLangIdx:I

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangChangeNotifier:Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;

    .line 92
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    sget-object v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_TW:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const-string v4, "CH_TW"

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;-><init>(Lcom/samsung/inputmethod/SimeLanguageMgr;Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    sget-object v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_HK:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const-string v4, "CH_HK"

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;-><init>(Lcom/samsung/inputmethod/SimeLanguageMgr;Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 94
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    const/4 v1, 0x2

    new-instance v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    sget-object v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_SCHN:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const-string v4, "CH_CN"

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;-><init>(Lcom/samsung/inputmethod/SimeLanguageMgr;Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 95
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    sget-object v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_KOR:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const-string v4, "Korean"

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;-><init>(Lcom/samsung/inputmethod/SimeLanguageMgr;Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 96
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    const/4 v1, 0x4

    new-instance v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    sget-object v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const-string v4, "EN_US"

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;-><init>(Lcom/samsung/inputmethod/SimeLanguageMgr;Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 98
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->initialize()V

    .line 99
    return-void
.end method

.method public static getSupportedLang()[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mSupportedLangList:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    return-object v0
.end method


# virtual methods
.method protected findCurLangIdx()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->findLangIdx(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLangIdx:I

    .line 306
    return-void
.end method

.method protected findLangIdx(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I
    .locals 3
    .parameter "eLang"

    .prologue
    .line 313
    const/4 v1, -0x1

    .line 314
    .local v1, langIdx:I
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq p1, v2, :cond_0

    .line 315
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v2, p1, :cond_1

    .line 317
    move v1, v0

    .line 322
    .end local v0           #i:I
    :cond_0
    return v1

    .line 315
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCurLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    return-object v0
.end method

.method public getCurLangStr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, langStr:Ljava/lang/String;
    iget v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLangIdx:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLangIdx:I

    if-ltz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    iget v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLangIdx:I

    aget-object v1, v1, v2

    iget-object v0, v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLangStr:Ljava/lang/String;

    .line 394
    :cond_0
    return-object v0
.end method

.method public getNextLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getNextLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v0

    return-object v0
.end method

.method protected getNextLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 6
    .parameter "aLang"

    .prologue
    .line 400
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 404
    .local v2, nextLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    sget-object v4, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq p1, v4, :cond_3

    .line 405
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->findLangIdx(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I

    move-result v1

    .line 407
    .local v1, langIdx:I
    const/4 v3, -0x1

    .line 408
    .local v3, nextLangIdx:I
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    .line 409
    const/4 v0, 0x1

    .line 411
    .local v0, i:I
    :cond_0
    add-int v3, v1, v0

    .line 412
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 413
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v4, v4

    sub-int/2addr v3, v4

    .line 415
    :cond_1
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v4, v4, v3

    iget-boolean v4, v4, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-eqz v4, :cond_4

    .line 421
    :goto_0
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v4, v4

    if-lt v0, v4, :cond_2

    .line 422
    const/4 v3, -0x1

    .line 426
    .end local v0           #i:I
    :cond_2
    :goto_1
    if-ltz v3, :cond_3

    .line 427
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v4, v4, v3

    iget-object v2, v4, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 432
    .end local v1           #langIdx:I
    .end local v3           #nextLangIdx:I
    :cond_3
    return-object v2

    .line 418
    .restart local v0       #i:I
    .restart local v1       #langIdx:I
    .restart local v3       #nextLangIdx:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 419
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v4, v4

    if-lt v0, v4, :cond_0

    goto :goto_0

    .line 424
    .end local v0           #i:I
    :cond_5
    const/4 v3, -0x1

    goto :goto_1
.end method

.method protected getOrderedLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 5
    .parameter "aLang"

    .prologue
    .line 454
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 458
    .local v1, orderLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    sget-object v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq p1, v3, :cond_2

    .line 459
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->findLangIdx(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I

    move-result v0

    .line 460
    .local v0, langIdx:I
    const/4 v2, 0x0

    .line 461
    .local v2, orderLangIdx:I
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 462
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 465
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-eqz v3, :cond_3

    if-eq v2, v0, :cond_3

    .line 472
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 473
    const/4 v2, -0x1

    .line 477
    :cond_1
    :goto_1
    if-ltz v2, :cond_2

    .line 478
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v2

    iget-object v1, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 483
    .end local v0           #langIdx:I
    .end local v2           #orderLangIdx:I
    :cond_2
    return-object v1

    .line 469
    .restart local v0       #langIdx:I
    .restart local v2       #orderLangIdx:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    :cond_4
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getPreLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getPrelang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v0

    return-object v0
.end method

.method protected getPrelang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 5
    .parameter "aLang"

    .prologue
    .line 490
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 493
    .local v1, preLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    sget-object v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq p1, v3, :cond_3

    .line 494
    const/4 v2, -0x1

    .line 495
    .local v2, preLangIdx:I
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    .line 496
    const/4 v0, 0x1

    .line 498
    .local v0, i:I
    :cond_0
    iget v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLangIdx:I

    sub-int v2, v3, v0

    .line 499
    if-gez v2, :cond_1

    .line 500
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v3, v3

    add-int/2addr v2, v3

    .line 502
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-eqz v3, :cond_4

    .line 508
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v3, v3

    if-lt v0, v3, :cond_2

    .line 509
    const/4 v2, -0x1

    .line 513
    .end local v0           #i:I
    :cond_2
    :goto_1
    if-ltz v2, :cond_3

    .line 514
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v2

    iget-object v1, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 519
    .end local v2           #preLangIdx:I
    :cond_3
    return-object v1

    .line 505
    .restart local v0       #i:I
    .restart local v2       #preLangIdx:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 506
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    goto :goto_0

    .line 511
    .end local v0           #i:I
    :cond_5
    const/4 v2, -0x1

    goto :goto_1
.end method

.method protected initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 123
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$1;->$SwitchMap$com$samsung$inputmethod$SimeLanguageMgr$ImeLang:[I

    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 150
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    .line 122
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v1, v1, v0

    iput-boolean v3, v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    goto :goto_1

    .line 130
    :pswitch_1
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v1, v1, v0

    iput-boolean v3, v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    goto :goto_1

    .line 135
    :pswitch_2
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v1, v1, v0

    iput-boolean v3, v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    goto :goto_1

    .line 140
    :pswitch_3
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v1, v1, v0

    iput-boolean v3, v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    goto :goto_1

    .line 145
    :pswitch_4
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageEnglish()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v1, v1, v0

    iput-boolean v3, v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    goto :goto_1

    .line 154
    :cond_1
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isLangValid(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z
    .locals 4
    .parameter "eLang"

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, bRet:Z
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq p1, v2, :cond_0

    .line 333
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 334
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-ne v2, v3, :cond_1

    .line 336
    const/4 v0, 0x1

    .line 341
    .end local v1           #i:I
    :cond_0
    return v0

    .line 333
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isValidLangChanged()Z
    .locals 4

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, bRet:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 164
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_SCHN:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v2, v3, :cond_2

    .line 165
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-eq v2, v3, :cond_3

    .line 181
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 182
    const/4 v0, 0x1

    .line 185
    :cond_1
    return v0

    .line 167
    :cond_2
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_TW:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v2, v3, :cond_4

    .line 168
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-ne v2, v3, :cond_0

    .line 163
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_4
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_HK:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v2, v3, :cond_5

    .line 171
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 173
    :cond_5
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_KOR:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v2, v3, :cond_6

    .line 174
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 176
    :cond_6
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v2, v3, :cond_3

    .line 177
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageEnglish()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-eq v2, v3, :cond_3

    goto :goto_1
.end method

.method public reInitialize()Z
    .locals 3

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->resetStates()V

    .line 198
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->initialize()V

    .line 200
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->isLangValid(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getOrderedLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 203
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v1, v2, :cond_0

    .line 204
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->findCurLangIdx()V

    .line 206
    const/4 v0, 0x1

    .line 214
    :cond_1
    return v0
.end method

.method public reInitialize(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z
    .locals 3
    .parameter "newLang"

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 220
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->resetStates()V

    .line 222
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->initialize()V

    .line 224
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq p1, v1, :cond_6

    .line 226
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->isLangValid(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 228
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->findCurLangIdx()V

    .line 229
    const/4 v0, 0x1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->isLangValid(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$1;->$SwitchMap$com$samsung$inputmethod$SimeLanguageMgr$ImeLang:[I

    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 253
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 256
    :goto_1
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v1, v2, :cond_2

    .line 257
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 258
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->findCurLangIdx()V

    .line 259
    const/4 v0, 0x1

    goto :goto_0

    .line 237
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getNextLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_1

    .line 241
    :pswitch_1
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_SCHN:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_1

    .line 243
    :cond_3
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 244
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_TW:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_1

    .line 245
    :cond_4
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 246
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_HK:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_1

    .line 248
    :cond_5
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_1

    .line 263
    :cond_6
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->isLangValid(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$1;->$SwitchMap$com$samsung$inputmethod$SimeLanguageMgr$ImeLang:[I

    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 286
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 289
    :goto_2
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v1, v2, :cond_7

    .line 290
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 291
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->findCurLangIdx()V

    .line 292
    const/4 v0, 0x1

    goto :goto_0

    .line 270
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getNextLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_2

    .line 274
    :pswitch_3
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 275
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_SCHN:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_2

    .line 276
    :cond_8
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 277
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_TW:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_2

    .line 278
    :cond_9
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 279
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_HK:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_2

    .line 281
    :cond_a
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_2

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 266
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public registerCallBack(Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 554
    if-eqz p1, :cond_0

    .line 555
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangChangeNotifier:Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;

    .line 556
    :cond_0
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLangIdx:I

    .line 108
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->resetStates()V

    .line 109
    return-void
.end method

.method public resetLangCallBack()V
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangChangeNotifier:Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;

    .line 560
    return-void
.end method

.method protected resetStates()V
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method public setCurLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z
    .locals 4
    .parameter "curLang"

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq v2, p1, :cond_2

    .line 354
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->findLangIdx(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I

    move-result v1

    .line 355
    .local v1, langIdx:I
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-eqz v2, :cond_1

    .line 357
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 359
    iput v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLangIdx:I

    .line 361
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangChangeNotifier:Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangChangeNotifier:Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;->onLangChange(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)V

    .line 363
    :cond_0
    const/4 v0, 0x1

    .line 373
    .end local v1           #langIdx:I
    :cond_1
    :goto_0
    return v0

    .line 370
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public switchToNextLang()Z
    .locals 3

    .prologue
    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, bRet:Z
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 530
    .local v1, nextLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getNextLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v1

    .line 531
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq v1, v2, :cond_0

    .line 532
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->setCurLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z

    .line 533
    const/4 v0, 0x1

    .line 537
    :cond_0
    return v0
.end method

.method public switchToPreLang()Z
    .locals 3

    .prologue
    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, bRet:Z
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 543
    .local v1, preLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getPreLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v1

    .line 544
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq v1, v2, :cond_0

    .line 545
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->setCurLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z

    .line 546
    const/4 v0, 0x1

    .line 550
    :cond_0
    return v0
.end method
