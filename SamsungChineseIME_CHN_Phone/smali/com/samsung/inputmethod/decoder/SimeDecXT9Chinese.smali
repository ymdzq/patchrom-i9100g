.class public Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;
.super Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
.source "SimeDecXT9Chinese.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final PY_STRING_MAX:I = 0x20

.field private static final PY_STRING_MAX_FLOATING:I = 0x17

.field private static SPELL_TYPE_PREFIX:I = 0x0

.field private static SPELL_TYPE_SUFFIX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "T9DecodingInfo"

.field private static strCang:[C

.field private static strPy:[C

.field private static strZy:[C


# instance fields
.field public m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

.field private mActiveCmpsDisplayLen:I

.field private mAddChar:C

.field private mComposingStrDisplay:Ljava/lang/String;

.field private mCursorPos:I

.field private mFinishSelection:Z

.field private mRefinedSpell:Ljava/lang/String;

.field private mSurface:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x29

    .line 66
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->strPy:[C

    .line 72
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->strZy:[C

    .line 79
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->strCang:[C

    .line 86
    const/4 v0, 0x0

    sput v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->SPELL_TYPE_PREFIX:I

    .line 87
    const/4 v0, 0x1

    sput v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->SPELL_TYPE_SUFFIX:I

    return-void

    .line 66
    :array_0
    .array-data 0x2
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x2dt 0x0t
        0x71t 0x0t
        0x77t 0x0t
        0x65t 0x0t
        0x72t 0x0t
        0x74t 0x0t
        0x79t 0x0t
        0x75t 0x0t
        0x69t 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x61t 0x0t
        0x73t 0x0t
        0x64t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x3bt 0x0t
        0x7at 0x0t
        0x78t 0x0t
        0x63t 0x0t
        0x76t 0x0t
        0x62t 0x0t
        0x6et 0x0t
        0x6dt 0x0t
        0x2ct 0x0t
        0x2et 0x0t
        0x2ft 0x0t
    .end array-data

    .line 72
    nop

    :array_1
    .array-data 0x2
        0x5t 0x31t
        0x9t 0x31t
        0xc7t 0x2t
        0xcbt 0x2t
        0x13t 0x31t
        0xcat 0x2t
        0xd9t 0x2t
        0x1at 0x31t
        0x1et 0x31t
        0x22t 0x31t
        0x26t 0x31t
        0x6t 0x31t
        0xat 0x31t
        0xdt 0x31t
        0x10t 0x31t
        0x14t 0x31t
        0x17t 0x31t
        0x27t 0x31t
        0x1bt 0x31t
        0x1ft 0x31t
        0x23t 0x31t
        0x7t 0x31t
        0xbt 0x31t
        0xet 0x31t
        0x11t 0x31t
        0x15t 0x31t
        0x18t 0x31t
        0x28t 0x31t
        0x1ct 0x31t
        0x20t 0x31t
        0x24t 0x31t
        0x8t 0x31t
        0xct 0x31t
        0xft 0x31t
        0x12t 0x31t
        0x16t 0x31t
        0x19t 0x31t
        0x29t 0x31t
        0x1dt 0x31t
        0x21t 0x31t
        0x25t 0x31t
    .end array-data

    .line 79
    nop

    :array_2
    .array-data 0x2
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x2dt 0x0t
        0x4bt 0x62t
        0x30t 0x75t
        0x34t 0x6ct
        0xe3t 0x53t
        0xfft 0x5et
        0x5ct 0x53t
        0x71t 0x5ct
        0x8t 0x62t
        0xbat 0x4et
        0xc3t 0x5ft
        0xe5t 0x65t
        0x38t 0x5ct
        0x28t 0x67t
        0x6bt 0x70t
        0x1ft 0x57t
        0xf9t 0x7at
        0x41t 0x53t
        0x27t 0x59t
        0x2dt 0x4et
        0x3bt 0x0t
        0x7at 0x0t
        0xe3t 0x96t
        0xd1t 0x91t
        0x73t 0x59t
        0x8t 0x67t
        0x13t 0x5ft
        0x0t 0x4et
        0x2ct 0x0t
        0x2et 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 1
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 91
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-direct {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    .line 93
    return-void
.end method

.method private bpmfConvert(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "spellString"

    .prologue
    const/16 v11, 0x27

    const/16 v10, 0x19

    const/4 v9, 0x0

    .line 331
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 332
    .local v1, mSpellBuf:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_8

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v1, v0

    .line 334
    aget-char v7, v1, v0

    if-ne v10, v7, :cond_2

    .line 335
    aput-char v11, v1, v0

    .line 350
    :cond_0
    :goto_1
    invoke-static {v1, v0}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v6

    .line 351
    .local v6, value:I
    const v7, 0xf200

    if-le v6, v7, :cond_1

    const v7, 0xf2ff

    if-ge v6, v7, :cond_1

    .line 352
    aget-char v7, v1, v0

    const v8, 0xc100

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v0

    .line 332
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    .end local v6           #value:I
    :cond_2
    const/16 v7, 0xb1

    aget-char v8, v1, v0

    if-ne v7, v8, :cond_3

    .line 337
    const/16 v7, 0x2c9

    aput-char v7, v1, v0

    goto :goto_1

    .line 338
    :cond_3
    const/16 v7, 0xb2

    aget-char v8, v1, v0

    if-ne v7, v8, :cond_4

    .line 339
    const/16 v7, 0x2ca

    aput-char v7, v1, v0

    goto :goto_1

    .line 340
    :cond_4
    const/16 v7, 0xb3

    aget-char v8, v1, v0

    if-ne v7, v8, :cond_5

    .line 341
    const/16 v7, 0x2c7

    aput-char v7, v1, v0

    goto :goto_1

    .line 342
    :cond_5
    const/16 v7, 0xb4

    aget-char v8, v1, v0

    if-ne v7, v8, :cond_6

    .line 343
    const/16 v7, 0x2cb

    aput-char v7, v1, v0

    goto :goto_1

    .line 344
    :cond_6
    const/16 v7, 0xb5

    aget-char v8, v1, v0

    if-ne v7, v8, :cond_7

    .line 345
    const/16 v7, 0x2d9

    aput-char v7, v1, v0

    goto :goto_1

    .line 346
    :cond_7
    const/16 v7, 0x1a

    aget-char v8, v1, v0

    if-ne v7, v8, :cond_0

    .line 347
    aput-char v11, v1, v0

    goto :goto_1

    .line 356
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v1, v9, v7}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, sBuf:Ljava/lang/String;
    if-eqz v2, :cond_c

    .line 359
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x7c

    invoke-direct {v3, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 360
    .local v3, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 361
    const/4 v4, 0x0

    .line 362
    .local v4, tmp:Ljava/lang/String;
    :cond_9
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 363
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 364
    invoke-virtual {v4, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    const/16 v8, 0x3105

    if-lt v7, v8, :cond_9

    .line 365
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 366
    .local v5, tmp1:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_b

    .line 367
    invoke-virtual {v4, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    if-ne v7, v10, :cond_a

    .line 366
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 370
    :cond_a
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 372
    :cond_b
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 376
    .end local v3           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v4           #tmp:Ljava/lang/String;
    .end local v5           #tmp1:Ljava/lang/StringBuffer;
    :goto_4
    return-object v7

    :cond_c
    const-string v7, ""

    goto :goto_4
.end method

.method private convertToBPMFSymbol(C)C
    .locals 3
    .parameter "c"

    .prologue
    const/16 v2, 0x29

    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, j:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 500
    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->strPy:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_2

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    if-ne v0, v2, :cond_3

    .line 506
    :cond_1
    :goto_1
    return p1

    .line 499
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_3
    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->strZy:[C

    aget-char p1, v1, v0

    goto :goto_1
.end method

.method private deleteSplChar()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 173
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    .line 174
    return-void
.end method

.method private pinyinConvert(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "spellString"

    .prologue
    .line 439
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 440
    .local v1, mSpellBuf:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 441
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v1, v0

    .line 443
    const/16 v2, 0x19

    aget-char v3, v1, v0

    if-eq v2, v3, :cond_0

    const/16 v2, 0x1a

    aget-char v3, v1, v0

    if-ne v2, v3, :cond_1

    .line 445
    :cond_0
    const/16 v2, 0x27

    aput-char v2, v1, v0

    .line 440
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private prepareSpellList(Ljava/util/List;I)V
    .locals 5
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, candidateList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 258
    .local v1, nCount:I
    :try_start_0
    sget v3, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->SPELL_TYPE_PREFIX:I

    if-ne p2, v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v3, p1}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNGetPrefixs(Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 269
    :cond_0
    :goto_0
    const-string v2, ""

    .line 270
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 271
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 272
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #str:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 273
    .restart local v2       #str:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->bpmfConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->add(Ljava/lang/String;)V

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    .end local v0           #i:I
    .end local v2           #str:Ljava/lang/String;
    :cond_1
    :try_start_1
    sget v3, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->SPELL_TYPE_SUFFIX:I

    if-ne p2, v3, :cond_0

    .line 261
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v3, p1}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNGetSuffixs(Ljava/util/List;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 276
    .restart local v2       #str:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 277
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #str:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 278
    .restart local v2       #str:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->add(Ljava/lang/String;)V

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 281
    :cond_3
    return-void

    .line 265
    .end local v0           #i:I
    .end local v2           #str:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private strokeConvert(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "spellString"

    .prologue
    const/4 v9, 0x0

    .line 381
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 382
    .local v1, mSpellBuf:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 383
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v1, v0

    .line 384
    const/16 v7, 0x19

    aget-char v8, v1, v0

    if-ne v7, v8, :cond_0

    .line 385
    const/16 v7, 0x27

    aput-char v7, v1, v0

    .line 387
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v6

    .line 388
    .local v6, value:I
    const v7, 0xf200

    if-le v6, v7, :cond_1

    const v7, 0xf2ff

    if-ge v6, v7, :cond_1

    .line 389
    aget-char v7, v1, v0

    const v8, 0xc100

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v0

    .line 382
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    .end local v6           #value:I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v1, v9, v7}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, sBuf:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 395
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x7c

    invoke-direct {v3, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 396
    .local v3, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 397
    const/4 v4, 0x0

    .line 398
    .local v4, tmp:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 399
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 400
    invoke-virtual {v4, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    const/16 v8, 0xa

    if-ge v7, v8, :cond_3

    .line 401
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 402
    .local v5, tmp1:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 404
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 424
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 402
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 406
    :pswitch_0
    const/16 v7, 0x4e00

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 409
    :pswitch_1
    const/16 v7, 0x4e28

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 412
    :pswitch_2
    const/16 v7, 0x4e3f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 415
    :pswitch_3
    const/16 v7, 0x4e36

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 418
    :pswitch_4
    const/16 v7, 0x4e5b

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 421
    :pswitch_5
    const v7, 0xff1f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 429
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 433
    .end local v3           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v4           #tmp:Ljava/lang/String;
    .end local v5           #tmp1:Ljava/lang/StringBuffer;
    :goto_3
    return-object v7

    :cond_5
    const-string v7, ""

    goto :goto_3

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateDecInfoForSearch()V
    .locals 2

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mFinishSelection:Z

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->preparePage(I)Z

    .line 616
    :cond_0
    return-void
.end method


# virtual methods
.method public addSplChar(CZ)V
    .locals 3
    .parameter "ch"
    .parameter "reset"

    .prologue
    const/4 v2, 0x0

    .line 141
    iput-char p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mAddChar:C

    .line 143
    if-eqz p2, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 146
    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v0}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v0, v1, :cond_2

    .line 156
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 158
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    .line 166
    :cond_1
    :goto_1
    return-void

    .line 161
    :cond_2
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 163
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public charBeforeCursorIsSeparator()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 656
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 657
    .local v0, len:I
    iget v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    if-le v2, v0, :cond_1

    .line 662
    :cond_0
    :goto_0
    return v1

    .line 659
    :cond_1
    iget v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    .line 660
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public charBeforeCursorIsTone()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 667
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 668
    .local v0, len:I
    iget v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    if-le v2, v0, :cond_1

    .line 673
    :cond_0
    :goto_0
    return v1

    .line 670
    :cond_1
    iget v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_0

    .line 671
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public chooseDecodingCandidate(I)V
    .locals 5
    .parameter "candId"

    .prologue
    const/4 v4, -0x1

    .line 518
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v2, v3, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    const/4 v1, 0x0

    .line 523
    .local v1, status:I
    if-gez p1, :cond_8

    .line 529
    if-ne p1, v4, :cond_5

    .line 531
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    iget-char v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mAddChar:C

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->convertToBPMFSymbol(C)C

    move-result v2

    iput-char v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mAddChar:C

    .line 533
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    iget-char v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mAddChar:C

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNAddOneChar(C)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 538
    :goto_1
    if-gtz v1, :cond_0

    .line 543
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 544
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->prepare34SplCandidatesList()V

    .line 561
    :cond_4
    :goto_2
    iput v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCandId:I

    .line 591
    :goto_3
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->prepareCandidatesList()V

    .line 592
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->updateDecInfoForSearch()V

    .line 593
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->updateComposingStrForDisplay()V

    goto :goto_0

    .line 549
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->processBackspace()I

    move-result v2

    if-nez v2, :cond_6

    .line 550
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 554
    :cond_6
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 555
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->prepare34SplCandidatesList()V

    goto :goto_2

    .line 566
    :cond_8
    const/4 v0, 0x0

    .line 568
    .local v0, ret:I
    :try_start_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v2, p1}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNChooseCand(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 572
    :goto_4
    if-lez v0, :cond_9

    .line 573
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->EMPTY:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mRefinedSpell:Ljava/lang/String;

    .line 575
    :try_start_2
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v2}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNGetRefinedSpell()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mRefinedSpell:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 579
    :goto_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mFinishSelection:Z

    goto :goto_3

    .line 582
    :cond_9
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mFinishSelection:Z

    .line 584
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 585
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->prepare34SplCandidatesList()V

    .line 587
    :cond_b
    iput p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCandId:I

    goto :goto_3

    .line 576
    :catch_0
    move-exception v2

    goto :goto_5

    .line 569
    :catch_1
    move-exception v2

    goto :goto_4

    .line 535
    .end local v0           #ret:I
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public choosePredictChoice(I)V
    .locals 4
    .parameter "choiceId"

    .prologue
    const/4 v3, 0x0

    .line 620
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    iput v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mFinishSelection:Z

    goto :goto_0
.end method

.method public delUdbPhrase(I)Z
    .locals 3
    .parameter "candIdx"

    .prologue
    .line 598
    const/4 v0, 0x0

    .line 600
    .local v0, bRet:Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v2, p1}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNDelUDBPhrase(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 607
    :goto_0
    return v0

    .line 601
    :catch_0
    move-exception v1

    .line 603
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getActiveCmpsDisplayLen()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mActiveCmpsDisplayLen:I

    return v0
.end method

.method public getComposingStrForDisplay()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x29

    .line 294
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 297
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 301
    .local v3, pyStrZhuyin:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    .line 302
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 303
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 304
    .local v0, c:C
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v5, :cond_0

    .line 305
    sget-object v4, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->strPy:[C

    aget-char v4, v4, v2

    if-ne v0, v4, :cond_2

    .line 308
    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 309
    if-ne v2, v5, :cond_3

    .line 313
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 309
    :cond_3
    sget-object v4, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->strZy:[C

    aget-char v0, v4, v2

    goto :goto_2

    .line 310
    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isCangjieMode()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQuickCangjieMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 311
    :cond_5
    if-ne v2, v5, :cond_6

    :goto_3
    goto :goto_2

    :cond_6
    sget-object v4, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->strCang:[C

    aget-char v0, v4, v2

    goto :goto_3

    .line 315
    .end local v0           #c:C
    .end local v2           #j:I
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 317
    .end local v1           #i:I
    .end local v3           #pyStrZhuyin:Ljava/lang/StringBuffer;
    :goto_4
    return-object v4

    :cond_8
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    goto :goto_4
.end method

.method public getCursorPos()I
    .locals 1

    .prologue
    .line 678
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    return v0
.end method

.method public getFixedLen()I
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x0

    return v0
.end method

.method public getOrigianlSplStr()Ljava/lang/StringBuffer;
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getRefinedSpell()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mRefinedSpell:Ljava/lang/String;

    return-object v0
.end method

.method public isFinishSelection()Z
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mFinishSelection:Z

    return v0
.end method

.method public isSplStrFull()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 125
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v1, v2, :cond_1

    .line 126
    iget v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mActiveCmpsDisplayLen:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_2

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mActiveCmpsDisplayLen:I

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_0

    .line 133
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveCursor(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 718
    return-void
.end method

.method public moveCursorToEdge(Z)V
    .locals 1
    .parameter "left"

    .prologue
    .line 683
    if-eqz p1, :cond_0

    .line 684
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    .line 687
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    goto :goto_0
.end method

.method public prepare34SplCandidatesList()V
    .locals 3

    .prologue
    .line 244
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 246
    .local v0, tmpCandidatesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->reset()V

    .line 248
    sget v1, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->SPELL_TYPE_PREFIX:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->prepareSpellList(Ljava/util/List;I)V

    .line 249
    sget v1, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->SPELL_TYPE_SUFFIX:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->prepareSpellList(Ljava/util/List;I)V

    .line 250
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setCandFetchOver(Z)V

    .line 252
    return-void
.end method

.method public prepareDeleteBeforeCursor()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public processBackspace()I
    .locals 2

    .prologue
    .line 645
    const/4 v0, 0x0

    .line 649
    .local v0, status:I
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v1}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNProcessBackspace()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 652
    :goto_0
    return v0

    .line 650
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->reset()V

    .line 100
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v0}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNReset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCursorPos:I

    .line 108
    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mFinishSelection:Z

    .line 109
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->EMPTY:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStr:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->EMPTY:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    .line 111
    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mActiveCmpsLen:I

    .line 112
    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mActiveCmpsDisplayLen:I

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCandId:I

    .line 114
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->reset()V

    .line 115
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reset34SplCandidates()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->reset()V

    .line 119
    return-void
.end method

.method public selectionFinished()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mFinishSelection:Z

    return v0
.end method

.method public setActivePrefix(I)I
    .locals 2
    .parameter "activeCandNo"

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, ret:I
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v1, p1}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNSetActivePrefix(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 235
    :goto_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->updateDecInfoForSearch()V

    .line 236
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->prepareCandidatesList()V

    .line 237
    return v0

    .line 232
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setActivePrefixSuffix(I)I
    .locals 4
    .parameter "activeCandNo"

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, nPrefixCount:I
    const/4 v1, 0x0

    .line 212
    .local v1, nRet:I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v2}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNGetPrefixCount()I

    move-result v0

    .line 213
    if-ge p1, v0, :cond_0

    .line 214
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v2, p1}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNSetActivePrefix(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 220
    :goto_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->updateDecInfoForSearch()V

    .line 221
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->prepareCandidatesList()V

    .line 223
    return v1

    .line 216
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    sub-int v3, p1, v0

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNSetActiveSuffix(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 217
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setFinishSelection(Z)V
    .locals 0
    .parameter "finish"

    .prologue
    .line 631
    iput-boolean p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mFinishSelection:Z

    .line 633
    return-void
.end method

.method public surfaceLength()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    return v0
.end method

.method public updateComposingStrForDisplay()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->EMPTY:Ljava/lang/String;

    .line 460
    .local v0, spellString:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v1}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNGetSpell()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 465
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->bpmfConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    .line 478
    :goto_1
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mActiveCmpsDisplayLen:I

    .line 479
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->setComposingStr(Ljava/lang/String;)V

    .line 480
    return-void

    .line 475
    :cond_0
    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    goto :goto_1

    .line 462
    :catch_0
    move-exception v1

    goto :goto_0
.end method
