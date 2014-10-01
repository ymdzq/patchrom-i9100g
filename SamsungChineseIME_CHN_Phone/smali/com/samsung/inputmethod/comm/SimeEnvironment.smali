.class public Lcom/samsung/inputmethod/comm/SimeEnvironment;
.super Ljava/lang/Object;
.source "SimeEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;,
        Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;
    }
.end annotation


# static fields
.field public static final CANDIDATES_AREA_HEIGHT_RATIO_LANDSCAPE:F = 0.125f

.field public static final CANDIDATES_AREA_HEIGHT_RATIO_PORTRAIT:F = 0.085f

.field private static final COUNTRY_CODE:Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static final FUNCTION_BALLOON_TEXT_SIZE_RATIO:F = 0.085f

.field private static final FUNCTION_KEY_TEXT_SIZE_RATIO:F = 0.055f

.field public static final HW_EN_INPUT_RANGE_ALL:C = '\u00ff'

.field public static final HW_EN_INPUT_RANGE_DEFAULT:C = '\u00f7'

.field public static final HW_EN_INPUT_RANGE_EN:C = '\u00c3'

.field public static final HW_EN_INPUT_RANGE_GESTURE:C = ' '

.field public static final HW_EN_INPUT_RANGE_SYM:C = '\u0010'

.field public static final HW_INPUT_RANGE_NUM:C = '\u0004'

.field public static final HW_KO_INPUT_RANGE_ALL:C = '\u043c'

.field public static final HW_KO_INPUT_RANGE_DEFAULT:C = '\u0437'

.field public static final HW_KO_INPUT_RANGE_EN:C = '\u0003'

.field public static final HW_KO_INPUT_RANGE_GESTURE:C = ' '

.field public static final HW_KO_INPUT_RANGE_HANGUL:C = '\u0400'

.field public static final HW_KO_INPUT_RANGE_SYM:C = '\u0010'

.field public static final HW_ZH_CH_INPUT_RANGE_TR_CHAR:C = '\u4000'

.field public static final HW_ZH_HK_INPUT_RANGE_ALL:C = '\uebff'

.field public static final HW_ZH_HK_INPUT_RANGE_DEFAULT:C = '\ue0ff'

.field public static final HW_ZH_HK_INPUT_RANGE_DEFAULT_INC_CH:C = '\ue6ff'

.field public static final HW_ZH_HK_INPUT_RANGE_STROKE:C = '\ue000'

.field public static final HW_ZH_HK_INPUT_RANGE_STROKE_INC_CH:C = '\ue600'

.field public static final HW_ZH_INPUT_RANGE_ALL:C = '\u6eff'

.field public static final HW_ZH_INPUT_RANGE_DEFAULT:C = '\u06ff'

.field public static final HW_ZH_INPUT_RANGE_DEFAULT_INC_TR:C = '\u46ff'

.field public static final HW_ZH_INPUT_RANGE_EN:C = '\u0003'

.field public static final HW_ZH_INPUT_RANGE_GESTURE:C = '\u0080'

.field public static final HW_ZH_INPUT_RANGE_PINYIN:C = '\u2000'

.field public static final HW_ZH_INPUT_RANGE_STROKE:C = '\u0600'

.field public static final HW_ZH_INPUT_RANGE_STROKE_INC_TR:C = '\u4600'

.field public static final HW_ZH_INPUT_RANGE_SYM:C = 'x'

.field public static final HW_ZH_TR_INPUT_RANGE_CH_CHAR:C = '\u0600'

.field public static final HW_ZH_TR_INPUT_RANGE_EN:C = '\u0003'

.field public static final HW_ZH_TR_INPUT_RANGE_GESTURE:C = '\u0080'

.field public static final HW_ZH_TR_INPUT_RANGE_SYM:C = 'x'

.field public static final HW_ZH_TW_INPUT_RANGE_ALL:C = '\ucbff'

.field public static final HW_ZH_TW_INPUT_RANGE_DEFAULT:C = '\uc0ff'

.field public static final HW_ZH_TW_INPUT_RANGE_DEFAULT_INC_CH:C = '\uc6ff'

.field public static final HW_ZH_TW_INPUT_RANGE_STROKE:C = '\uc000'

.field public static final HW_ZH_TW_INPUT_RANGE_STROKE_INC_CH:C = '\uc600'

.field private static final KEY_BALLOON_HEIGHT_PLUS_RATIO:F = 0.05f

.field private static final KEY_BALLOON_WIDTH_PLUS_RATIO:F = 0.05f

.field public static final KEY_HEIGHT_RATIO_LANDSCAPE:F = 0.13f

.field public static final KEY_HEIGHT_RATIO_PORTRAIT:F = 0.1f

.field public static final MAX_DEFINE_POINT_NUMBER:I = 0xff

.field public static final MAX_DEFINE_TMP_NUMBER:I = 0x19

.field private static final NORMAL_BALLOON_TEXT_SIZE_RATIO:F = 0.14f

.field private static final NORMAL_KEY_TEXT_SIZE_RATIO:F = 0.075f

.field private static final TAG:Ljava/lang/String; = "SimeEnvironment"

.field private static mFilesDir:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private static mlibDir:Ljava/lang/String;


# instance fields
.field private mCandidatesAreaHeight:I

.field private mConfig:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mDims:I

.field private mFloatingCandHeight:I

.field private mFloatingComposingWindowPadding:I

.field private mFloatingWindowHeight:I

.field private mFloatingWindowWidth:I

.field private mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

.field private mFunctionKeyTextSize:I

.field private mIsConfigureChanged:Z

.field private mKeyHeight:I

.field private mMoveHanderHeight:I

.field private mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

.field private mNormalKeyTextSize:I

.field private mOldLocale:Ljava/util/Locale;

.field private mOneHandKeyHeight:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSkbPaddingRect:Landroid/graphics/Rect;

.field private mTypefaceHelve:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->COUNTRY_CODE:Ljava/lang/String;

    .line 186
    sput-object v1, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mlibDir:Ljava/lang/String;

    .line 187
    sput-object v1, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFilesDir:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    .line 185
    iput-boolean v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mDebug:Z

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mSkbPaddingRect:Landroid/graphics/Rect;

    .line 202
    iput-boolean v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mIsConfigureChanged:Z

    .line 213
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mOldLocale:Ljava/util/Locale;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;-><init>(Lcom/samsung/inputmethod/comm/SimeEnvironment;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    .line 217
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;-><init>(Lcom/samsung/inputmethod/comm/SimeEnvironment;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    .line 218
    return-void

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getFilesDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFilesDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mInstance:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-direct {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mInstance:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 224
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mInstance:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    return-object v0
.end method

.method public static getLibraryDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mlibDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getSdkVersion()I
    .locals 1

    .prologue
    .line 562
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static isHKTWModelByCSC()Z
    .locals 2

    .prologue
    .line 603
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->COUNTRY_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "CHINA"

    sget-object v1, Lcom/samsung/inputmethod/comm/SimeEnvironment;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    const/4 v0, 0x0

    .line 607
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setFilesDir(Ljava/lang/String;)V
    .locals 0
    .parameter "filesDir"

    .prologue
    .line 521
    sput-object p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFilesDir:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public static setLibraryDir(Ljava/lang/String;)V
    .locals 0
    .parameter "libDir"

    .prologue
    .line 513
    sput-object p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mlibDir:Ljava/lang/String;

    .line 514
    return-void
.end method


# virtual methods
.method public getBalloonAttr(I)Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    .locals 1
    .parameter "keyTypeId"

    .prologue
    .line 479
    packed-switch p1, :pswitch_data_0

    .line 489
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    .line 492
    .local v0, skBalloonAtrr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    :goto_0
    return-object v0

    .line 483
    .end local v0           #skBalloonAtrr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    .line 484
    .restart local v0       #skBalloonAtrr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    goto :goto_0

    .line 486
    .end local v0           #skBalloonAtrr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    .line 487
    .restart local v0       #skBalloonAtrr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    goto :goto_0

    .line 479
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getConfigureState()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mIsConfigureChanged:Z

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDims()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mDims:I

    return v0
.end method

.method public getFloatingCandHeight()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingCandHeight:I

    return v0
.end method

.method public getFloatingComposingWindowPadding()I
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingComposingWindowPadding:I

    .line 420
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingComposingWindowPadding:I

    return v0
.end method

.method public getFloatingCoreHeight()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingWindowHeight:I

    return v0
.end method

.method public getFloatingWindowHeight()I
    .locals 3

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCoreHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getFloatingWindowWidth()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingWindowWidth:I

    return v0
.end method

.method public getHeightForCandidates()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mCandidatesAreaHeight:I

    return v0
.end method

.method public getHelveFont()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mTypefaceHelve:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mTypefaceHelve:Landroid/graphics/Typeface;

    .line 617
    :goto_0
    return-object v0

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/HelveticaNeueMedium.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mTypefaceHelve:Landroid/graphics/Typeface;

    .line 617
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mTypefaceHelve:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public getKeyHeight()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mKeyHeight:I

    return v0
.end method

.method public getKeyTextSize(Z)I
    .locals 1
    .parameter "isFunctionKey"

    .prologue
    .line 470
    if-eqz p1, :cond_0

    .line 471
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyTextSize:I

    .line 473
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyTextSize:I

    goto :goto_0
.end method

.method public getKeyXMarginFactor()F
    .locals 1

    .prologue
    .line 385
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getKeyYMarginFactor()F
    .locals 2

    .prologue
    .line 389
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 390
    const v0, 0x3f333333

    .line 392
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getMoveHandlerHeight()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mMoveHanderHeight:I

    return v0
.end method

.method public getNotificationBarHeight()I
    .locals 2

    .prologue
    .line 447
    const/4 v0, 0x0

    .line 449
    .local v0, height:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 463
    const/16 v0, 0x35

    .line 466
    :goto_0
    return v0

    .line 451
    :sswitch_0
    const/16 v0, 0x35

    .line 452
    goto :goto_0

    .line 454
    :sswitch_1
    const/16 v0, 0x26

    .line 455
    goto :goto_0

    .line 457
    :sswitch_2
    const/16 v0, 0x19

    .line 458
    goto :goto_0

    .line 460
    :sswitch_3
    const/16 v0, 0x13

    .line 461
    goto :goto_0

    .line 449
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_3
        0xa0 -> :sswitch_2
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_0
    .end sparse-switch
.end method

.method public getOneHandCoreHeight(I)I
    .locals 1
    .parameter "rowNumber"

    .prologue
    .line 407
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mOneHandKeyHeight:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    return v0
.end method

.method public getSkbCoreHeight(I)I
    .locals 1
    .parameter "rowNumber"

    .prologue
    .line 403
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mKeyHeight:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public getSkbHeight(I)I
    .locals 3
    .parameter "rowNumber"

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbCoreHeight(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getSkbPaddingRect()Landroid/graphics/Rect;
    .locals 10

    .prologue
    .line 437
    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 438
    .local v2, res:Landroid/content/res/Resources;
    const v5, 0x7f0a0044

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 439
    .local v1, left:F
    const v5, 0x7f0a0045

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 440
    .local v3, right:F
    const v5, 0x7f0a0042

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 441
    .local v4, top:F
    const v5, 0x7f0a0043

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 442
    .local v0, bottom:F
    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mSkbPaddingRect:Landroid/graphics/Rect;

    float-to-int v6, v1

    float-to-int v7, v4

    float-to-int v8, v3

    float-to-int v9, v0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 443
    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mSkbPaddingRect:Landroid/graphics/Rect;

    return-object v5
.end method

.method public hasHardKeyboard()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 496
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 498
    :cond_0
    const/4 v0, 0x0

    .line 500
    :cond_1
    return v0
.end method

.method public isHSw240dpiScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v1

    const/16 v2, 0xf0

    if-eq v1, v2, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 359
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    rem-int/lit16 v1, v1, 0x1e0

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    rem-int/lit16 v1, v1, 0x1e0

    if-nez v1, :cond_0

    .line 360
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHSw270dpiScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 347
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v1

    const/16 v2, 0xf0

    if-eq v1, v2, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 349
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    rem-int/lit16 v1, v1, 0x21c

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    rem-int/lit16 v1, v1, 0x21c

    if-nez v1, :cond_0

    .line 350
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLocaleChanged()Z
    .locals 2

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 546
    .local v0, newLocale:Ljava/util/Locale;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mOldLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 550
    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mOldLocale:Ljava/util/Locale;

    .line 551
    const/4 v1, 0x1

    .line 553
    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 547
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isNeedShadow()Z
    .locals 2

    .prologue
    .line 537
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mDims:I

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mDims:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_1

    .line 538
    :cond_0
    const/4 v0, 0x0

    .line 540
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPSeriesModel()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 529
    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v5, 0xf

    .line 530
    .local v2, screenType:I
    if-eq v2, v6, :cond_0

    if-ne v2, v6, :cond_1

    :cond_0
    move v1, v4

    .line 531
    .local v1, islargeScreen:Z
    :goto_0
    iget v5, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mDims:I

    const/16 v6, 0xa0

    if-ne v5, v6, :cond_2

    move v0, v4

    .line 532
    .local v0, isMediumDis:Z
    :goto_1
    and-int v3, v1, v0

    return v3

    .end local v0           #isMediumDis:Z
    .end local v1           #islargeScreen:Z
    :cond_1
    move v1, v3

    .line 530
    goto :goto_0

    .restart local v1       #islargeScreen:Z
    :cond_2
    move v0, v3

    .line 531
    goto :goto_1
.end method

.method public isPlatformKey()Z
    .locals 6

    .prologue
    .line 567
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 568
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 570
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 572
    .local v1, pis:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 573
    .local v3, sharedUserId:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "android.uid.system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 575
    const/4 v4, 0x1

    .line 585
    .end local v1           #pis:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #sharedUserId:Ljava/lang/String;
    :goto_0
    return v4

    .line 578
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 579
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 585
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isVoiceInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 589
    const/4 v2, 0x0

    .line 590
    .local v2, voiceInstalled:Z
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 591
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 592
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 594
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 596
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v2

    .restart local v0       #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    :cond_1
    move v2, v3

    .line 594
    goto :goto_0
.end method

.method public isXhSw360dpiScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v1

    const/16 v2, 0x140

    if-eq v1, v2, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v0

    .line 339
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    rem-int/lit16 v1, v1, 0x168

    if-nez v1, :cond_0

    .line 340
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isXhSw400dpiScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v1

    const/16 v2, 0x140

    if-eq v1, v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    rem-int/lit16 v1, v1, 0x190

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_0

    .line 330
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public needDebug()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mDebug:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V
    .locals 11
    .parameter "newConfig"
    .parameter "context"

    .prologue
    const v10, 0x3f4ccccd

    const v9, 0x3e0f5c29

    const v8, 0x3d99999a

    const v6, 0x3d6147ae

    const v7, 0x3d4ccccd

    .line 228
    iput-object p2, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    .line 229
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_0

    .line 230
    const-string v4, "window"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 232
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 233
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    .line 234
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    .line 236
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 237
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 238
    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mDims:I

    .line 241
    iget v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    iget v5, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    if-le v4, v5, :cond_4

    .line 244
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_2

    .line 245
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mKeyHeight:I

    .line 249
    :goto_0
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_3

    .line 250
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingWindowHeight:I

    .line 253
    :goto_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mOneHandKeyHeight:I

    .line 254
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingWindowWidth:I

    .line 255
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mCandidatesAreaHeight:I

    .line 256
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingCandHeight:I

    .line 258
    iget v2, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    .line 277
    .local v2, scale:I
    :goto_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mMoveHanderHeight:I

    .line 278
    int-to-float v4, v2

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyTextSize:I

    .line 279
    int-to-float v4, v2

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyTextSize:I

    .line 281
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 282
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a004f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->textSize:I

    .line 284
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->textSize:I

    .line 286
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0051

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    .line 288
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0052

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    .line 290
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0053

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    .line 292
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0054

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    .line 311
    .end local v0           #d:Landroid/view/Display;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #scale:I
    .end local v3           #wm:Landroid/view/WindowManager;
    :cond_0
    :goto_3
    if-eqz p1, :cond_1

    .line 312
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 314
    :cond_1
    return-void

    .line 247
    .restart local v0       #d:Landroid/view/Display;
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v3       #wm:Landroid/view/WindowManager;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mKeyHeight:I

    goto/16 :goto_0

    .line 252
    :cond_3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingWindowHeight:I

    goto/16 :goto_1

    .line 262
    :cond_4
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_5

    .line 263
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mKeyHeight:I

    .line 267
    :goto_4
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_6

    .line 268
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingWindowHeight:I

    .line 271
    :goto_5
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingWindowWidth:I

    .line 272
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mCandidatesAreaHeight:I

    .line 273
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingCandHeight:I

    .line 275
    iget v2, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    .restart local v2       #scale:I
    goto/16 :goto_2

    .line 265
    .end local v2           #scale:I
    :cond_5
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mKeyHeight:I

    goto :goto_4

    .line 270
    :cond_6
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingWindowHeight:I

    goto :goto_5

    .line 295
    .restart local v2       #scale:I
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw360dpiScreen()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 296
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v9

    mul-float/2addr v5, v10

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->textSize:I

    .line 297
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v9

    mul-float/2addr v5, v10

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->textSize:I

    .line 298
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    .line 299
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    .line 300
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    .line 301
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    goto/16 :goto_3

    .line 303
    :cond_8
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->textSize:I

    .line 304
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    const v6, 0x3dae147b

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->textSize:I

    .line 305
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    .line 306
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    .line 307
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    .line 308
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    goto/16 :goto_3
.end method

.method public setConfigureState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mIsConfigureChanged:Z

    if-eq v0, p1, :cond_0

    .line 205
    iput-boolean p1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mIsConfigureChanged:Z

    .line 207
    :cond_0
    return-void
.end method
