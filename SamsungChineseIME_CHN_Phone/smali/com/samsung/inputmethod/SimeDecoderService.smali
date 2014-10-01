.class public Lcom/samsung/inputmethod/SimeDecoderService;
.super Landroid/app/Service;
.source "SimeDecoderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;,
        Lcom/samsung/inputmethod/SimeDecoderService$XT9IMEMODE;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeDecoderService"

.field public static USER_UDB_HK_LIB:Ljava/lang/String;

.field public static USER_UDB_SIMPLE_LIB:Ljava/lang/String;

.field public static USER_UDB_TRADITION_LIB:Ljava/lang/String;

.field public static XT9PLIDChineseHongkong:I

.field public static XT9PLIDChineseSimplified:I

.field public static XT9PLIDChineseSingapore:I

.field public static XT9PLIDChineseTraditional:I

.field public static mIsHandwriteInit:Z


# instance fields
.field private final mBinder:Lcom/samsung/inputmethod/ISamsungIMEDecoderService$Stub;

.field private mIMEXT9Info:Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 58
    const/16 v3, 0xe0

    sput v3, Lcom/samsung/inputmethod/SimeDecoderService;->XT9PLIDChineseTraditional:I

    .line 60
    const/16 v3, 0xe1

    sput v3, Lcom/samsung/inputmethod/SimeDecoderService;->XT9PLIDChineseSimplified:I

    .line 62
    const/16 v3, 0xe2

    sput v3, Lcom/samsung/inputmethod/SimeDecoderService;->XT9PLIDChineseHongkong:I

    .line 64
    const/16 v3, 0xe3

    sput v3, Lcom/samsung/inputmethod/SimeDecoderService;->XT9PLIDChineseSingapore:I

    .line 67
    const-string v3, "simple.lib"

    sput-object v3, Lcom/samsung/inputmethod/SimeDecoderService;->USER_UDB_SIMPLE_LIB:Ljava/lang/String;

    .line 68
    const-string v3, "tradition.lib"

    sput-object v3, Lcom/samsung/inputmethod/SimeDecoderService;->USER_UDB_TRADITION_LIB:Ljava/lang/String;

    .line 69
    const-string v3, "traditionHk.lib"

    sput-object v3, Lcom/samsung/inputmethod/SimeDecoderService;->USER_UDB_HK_LIB:Ljava/lang/String;

    .line 469
    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/inputmethod/SimeDecoderService;->mIsHandwriteInit:Z

    .line 486
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getLibraryDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/lib/libjni_secime.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, sysLibPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, sysLibFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 489
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 497
    .end local v0           #sysLibFile:Ljava/io/File;
    :goto_0
    return-void

    .line 491
    .restart local v0       #sysLibFile:Ljava/io/File;
    :cond_0
    const-string v3, "jni_secime"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    .end local v0           #sysLibFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 495
    .local v2, ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "SimeDecoderService"

    const-string v4, "WARNING: Could not load libjni_secime natives"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 812
    new-instance v0, Lcom/samsung/inputmethod/SimeDecoderService$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/SimeDecoderService$1;-><init>(Lcom/samsung/inputmethod/SimeDecoderService;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeDecoderService;->mBinder:Lcom/samsung/inputmethod/ISamsungIMEDecoderService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/SimeDecoderService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeDecoderService;->storeUdbToFile()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/SimeDecoderService;)Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;

    return-object v0
.end method

.method public static cbBeautifyStrokes([II[II)Lcom/samsung/inputmethod/handwriting/ReturnInfo;
    .locals 1
    .parameter "pointData"
    .parameter "pointNum"
    .parameter "contourResult"
    .parameter "contourNum"

    .prologue
    .line 786
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBBeautifyStrokes([II[II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/handwriting/ReturnInfo;

    return-object v0
.end method

.method public static cbBeautifyText([IIIII[II)Lcom/samsung/inputmethod/handwriting/ReturnInfo;
    .locals 1
    .parameter "textData"
    .parameter "textNum"
    .parameter "beautifyFlag"
    .parameter "dispOffsetX"
    .parameter "dispOffsetY"
    .parameter "contourResult"
    .parameter "contourNum"

    .prologue
    .line 794
    invoke-static/range {p0 .. p6}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBBeautifyText([IIIII[II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/handwriting/ReturnInfo;

    return-object v0
.end method

.method public static cbCloseEngine()V
    .locals 0

    .prologue
    .line 733
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBCloseEngine()V

    .line 734
    return-void
.end method

.method public static cbGetSlantDirection()I
    .locals 1

    .prologue
    .line 798
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBGetSlantDir()I

    move-result v0

    return v0
.end method

.method public static cbGetStyleParam(II)I
    .locals 1
    .parameter "styleId"
    .parameter "styleParamIndex"

    .prologue
    .line 802
    invoke-static {p0, p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBGetStyleParam(II)I

    move-result v0

    return v0
.end method

.method public static cbGetStyleParams(I[I)I
    .locals 4
    .parameter "styleId"
    .parameter "styleParamValues"

    .prologue
    .line 806
    invoke-static {p0, p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBGetStyleParams(I[I)I

    move-result v0

    .line 807
    .local v0, err:I
    const-string v1, "SimeDecoderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cbGetStyleParams, styleId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v1, "SimeDecoderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cbGetStyleParams, Caoshu = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",bimai = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",qingbi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",lianmian = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",kuandu = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",yiyang = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return v0
.end method

.method public static cbInitEngine()I
    .locals 1

    .prologue
    .line 729
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBInitEngine()I

    move-result v0

    return v0
.end method

.method public static cbLoadGHB(I[B)I
    .locals 1
    .parameter "fileLen"
    .parameter "fileData"

    .prologue
    .line 749
    invoke-static {p0, p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBLoadGHB(I[B)I

    move-result v0

    return v0
.end method

.method public static cbLoadGHBEx(Landroid/content/res/AssetManager;)I
    .locals 1
    .parameter "assetManager"

    .prologue
    .line 757
    invoke-static {p0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBLoadGHBEx(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static cbLoadPDB(I[B)I
    .locals 1
    .parameter "fileLen"
    .parameter "fileData"

    .prologue
    .line 745
    invoke-static {p0, p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBLoadPDB(I[B)I

    move-result v0

    return v0
.end method

.method public static cbLoadPDBEx(Landroid/content/res/AssetManager;)I
    .locals 1
    .parameter "assetManager"

    .prologue
    .line 753
    invoke-static {p0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBLoadPDBEx(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static cbRealtimeDraw([II[II)Lcom/samsung/inputmethod/handwriting/ReturnInfo;
    .locals 1
    .parameter "pointData"
    .parameter "pointNum"
    .parameter "contourResult"
    .parameter "contourNum"

    .prologue
    .line 790
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBRealtimeDraw([II[II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/handwriting/ReturnInfo;

    return-object v0
.end method

.method public static cbSetGHBSize(I)I
    .locals 1
    .parameter "fileLen"

    .prologue
    .line 741
    invoke-static {p0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBSetGHBSize(I)I

    move-result v0

    return v0
.end method

.method public static cbSetLayout(IIIIIIIIIIIIIIII)I
    .locals 1
    .parameter "charHeight"
    .parameter "charWidth"
    .parameter "charSpace"
    .parameter "lineHeight"
    .parameter "lineSpace"
    .parameter "paragraphSpace"
    .parameter "PageMarginLeft"
    .parameter "PageMarginTop"
    .parameter "PageMarginRight"
    .parameter "PageMarginBottom"
    .parameter "DispLeft"
    .parameter "DispTop"
    .parameter "DispRight"
    .parameter "DispBottom"
    .parameter "LayoutDir"
    .parameter "WriteDir"

    .prologue
    .line 780
    invoke-static/range {p0 .. p15}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBSetLayout(IIIIIIIIIIIIIIII)I

    move-result v0

    return v0
.end method

.method public static cbSetPDBSize(I)I
    .locals 1
    .parameter "fileLen"

    .prologue
    .line 737
    invoke-static {p0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBSetPDBSize(I)I

    move-result v0

    return v0
.end method

.method public static cbSetRect(III)I
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "pixcelDensity"

    .prologue
    .line 761
    invoke-static {p0, p1, p2}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBSetCbRect(III)I

    move-result v0

    return v0
.end method

.method public static cbSetSlantValue(I)I
    .locals 1
    .parameter "slantValue"

    .prologue
    .line 765
    invoke-static {p0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBSetSlantValue(I)I

    move-result v0

    return v0
.end method

.method public static cbSetStyle(I)I
    .locals 1
    .parameter "styleId"

    .prologue
    .line 769
    invoke-static {p0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBSetStyle(I)I

    move-result v0

    return v0
.end method

.method public static cbSetStyleParam(II)I
    .locals 1
    .parameter "styleParamIndex"
    .parameter "styleParamValue"

    .prologue
    .line 773
    invoke-static {p0, p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeCBSetStyleParam(II)I

    move-result v0

    return v0
.end method

.method public static hwAddSelfDefineModel([IIC)I
    .locals 1
    .parameter "pointData"
    .parameter "pointNumber"
    .parameter "nDefineCode"

    .prologue
    .line 424
    invoke-static {p0, p1, p2}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeHWAddSelfDefineModel([IIC)I

    move-result v0

    return v0
.end method

.method public static hwCleanUserData()V
    .locals 0

    .prologue
    .line 460
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeHWCleanUserData()V

    .line 461
    return-void
.end method

.method public static hwDelSelfDefineModel(C)I
    .locals 1
    .parameter "nDefineCode"

    .prologue
    .line 433
    invoke-static {p0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeHWDelSelfDefineModel(C)I

    move-result v0

    return v0
.end method

.method public static hwEnableSelfAdapt(I)I
    .locals 1
    .parameter "nSelfAdapt"

    .prologue
    .line 388
    invoke-static {p0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeHWEnableSelfAdapt(I)I

    move-result v0

    return v0
.end method

.method public static hwEnableSelfDefine(I)I
    .locals 1
    .parameter "nSelfDefine"

    .prologue
    .line 397
    invoke-static {p0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeHWEnableSelfDefine(I)I

    move-result v0

    return v0
.end method

.method public static hwEnableTraSimConversion(I)I
    .locals 1
    .parameter "traSimTag"

    .prologue
    .line 371
    invoke-static {p0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeHWEnableTraSimConversion(I)I

    move-result v0

    return v0
.end method

.method public static hwInitEngine(Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;CCI)V
    .locals 6
    .parameter "language"
    .parameter "range"
    .parameter "speed"
    .parameter "simtraTag"

    .prologue
    .line 206
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 208
    .local v2, locale:Ljava/lang/String;
    sget-object v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->KOR:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    if-ne p0, v4, :cond_2

    .line 209
    const-string v2, "ko"

    .line 224
    :goto_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v3

    .line 225
    .local v3, width:I
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v1

    .line 226
    .local v1, height:I
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v0

    .line 227
    .local v0, dims:I
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->hwReleaseDB()I

    .line 228
    invoke-static {v2}, Lcom/samsung/inputmethod/SimeDecoderService;->hwLoadDB(Ljava/lang/String;)I

    .line 229
    invoke-static {p1, v2}, Lcom/samsung/inputmethod/SimeDecoderService;->hwSetRange(CLjava/lang/String;)I

    .line 230
    invoke-static {p2}, Lcom/samsung/inputmethod/SimeDecoderService;->hwSetSpeed(C)I

    .line 231
    int-to-float v4, v0

    const/high16 v5, 0x4020

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v1, v4}, Lcom/samsung/inputmethod/SimeDecoderService;->hwSetRect(III)I

    .line 232
    const-string v4, "zh_CN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "zh_HK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "zh_TW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    :cond_0
    invoke-static {p3}, Lcom/samsung/inputmethod/SimeDecoderService;->hwEnableTraSimConversion(I)I

    .line 235
    :cond_1
    return-void

    .line 210
    .end local v0           #dims:I
    .end local v1           #height:I
    .end local v3           #width:I
    :cond_2
    sget-object v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->ENG:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    if-ne p0, v4, :cond_3

    .line 211
    const-string v2, "en"

    goto :goto_0

    .line 214
    :cond_3
    sget-object v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN_HK:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    if-ne p0, v4, :cond_4

    .line 215
    const-string v2, "zh_HK"

    goto :goto_0

    .line 216
    :cond_4
    sget-object v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN_TW:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    if-ne p0, v4, :cond_5

    .line 217
    const-string v2, "zh_TW"

    goto :goto_0

    .line 221
    :cond_5
    const-string v2, "zh_CN"

    goto :goto_0
.end method

.method public static hwInitSamsungHandwriteUserDB(ZZI[C[[I[I)V
    .locals 4
    .parameter "isAdapt"
    .parameter "isDefine"
    .parameter "number"
    .parameter "unicodes"
    .parameter "points"
    .parameter "counts"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 238
    if-eqz p0, :cond_0

    .line 239
    invoke-static {v2}, Lcom/samsung/inputmethod/SimeDecoderService;->hwEnableSelfAdapt(I)I

    .line 243
    :goto_0
    if-eqz p1, :cond_1

    .line 244
    invoke-static {v2}, Lcom/samsung/inputmethod/SimeDecoderService;->hwEnableSelfDefine(I)I

    .line 249
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p2, :cond_2

    .line 251
    aget-char v1, p3, v0

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeDecoderService;->hwDelSelfDefineModel(C)I

    .line 252
    aget-object v1, p4, v0

    aget v2, p5, v0

    aget-char v3, p3, v0

    invoke-static {v1, v2, v3}, Lcom/samsung/inputmethod/SimeDecoderService;->hwAddSelfDefineModel([IIC)I

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 241
    .end local v0           #i:I
    :cond_0
    invoke-static {v1}, Lcom/samsung/inputmethod/SimeDecoderService;->hwEnableSelfAdapt(I)I

    goto :goto_0

    .line 246
    :cond_1
    invoke-static {v1}, Lcom/samsung/inputmethod/SimeDecoderService;->hwEnableSelfDefine(I)I

    goto :goto_1

    .line 254
    .restart local v0       #i:I
    :cond_2
    return-void
.end method

.method public static hwLoadDB(Ljava/lang/String;)I
    .locals 2
    .parameter "locale"

    .prologue
    .line 263
    const/4 v0, -0x1

    .line 264
    .local v0, error:I
    invoke-static {p0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeHWLoadDB(Ljava/lang/String;)I

    move-result v0

    .line 265
    if-nez v0, :cond_0

    .line 266
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/inputmethod/SimeDecoderService;->mIsHandwriteInit:Z

    .line 268
    :cond_0
    return v0
.end method

.method public static hwRecogChar([III[I[C)I
    .locals 1
    .parameter "pointData"
    .parameter "pointsNumber"
    .parameter "numberOfCandidate"
    .parameter "candType"
    .parameter "candidateResult"

    .prologue
    .line 321
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeHWRecogChar([III[I[C)I

    move-result v0

    return v0
.end method

.method public static hwRecogString([III[I[C)I
    .locals 1
    .parameter "pointData"
    .parameter "pointsNumber"
    .parameter "numberOfCandidate"
    .parameter "candType"
    .parameter "candidateResult"

    .prologue
    .line 336
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeHWRecogString([III[I[C)I

    move-result v0

    return v0
.end method

.method public static hwRecogText([III[I[C)I
    .locals 1
    .parameter "pointData"
    .parameter "pointsNumber"
    .parameter "numberOfCandidate"
    .parameter "candType"
    .parameter "candidateResult"

    .prologue
    .line 351
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeHWRecogText([III[I[C)I

    move-result v0

    return v0
.end method

.method public static hwReleaseDB()I
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/inputmethod/SimeDecoderService;->mIsHandwriteInit:Z

    .line 277
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeHWReleaseDB()I

    move-result v0

    return v0
.end method

.method public static hwSaveUserData()V
    .locals 0

    .prologue
    .line 453
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeHWSaveUserData()V

    .line 454
    return-void
.end method

.method public static hwSelfAdapt(C)I
    .locals 1
    .parameter "correctResult"

    .prologue
    .line 411
    invoke-static {p0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeHWSelfAdapt(C)I

    move-result v0

    return v0
.end method

.method public static hwSetRange(CLjava/lang/String;)I
    .locals 1
    .parameter "range"
    .parameter "locale"

    .prologue
    .line 287
    invoke-static {p0, p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeHWSetRange(CLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static hwSetRect(III)I
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "dims"

    .prologue
    .line 297
    invoke-static {p0, p1, p2}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeHWSetRect(III)I

    move-result v0

    return v0
.end method

.method public static hwSetSpeed(C)I
    .locals 1
    .parameter "speed"

    .prologue
    .line 306
    invoke-static {p0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeHWSetSpeed(C)I

    move-result v0

    return v0
.end method

.method public static imIsHKTWModel()Z
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 687
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_INCLUDE_HKTW_LANGUAGE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 688
    const/4 v0, 0x1

    .line 692
    :goto_0
    return v0

    .line 689
    :cond_0
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HKTW_DISTINGUISH_BY_CSC:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 690
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHKTWModelByCSC()Z

    move-result v0

    goto :goto_0

    .line 692
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImIsHKTWModel()Z

    move-result v0

    goto :goto_0
.end method

.method private initUdbFile()V
    .locals 14

    .prologue
    .line 524
    const/4 v6, 0x0

    .line 525
    .local v6, simplecache:[B
    const/4 v7, 0x0

    .line 526
    .local v7, traditionCache:[B
    const/4 v1, 0x0

    .line 527
    .local v1, hkCache:[B
    const/4 v0, 0x0

    .line 530
    .local v0, count:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFilesDir()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/samsung/inputmethod/SimeDecoderService;->USER_UDB_SIMPLE_LIB:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 531
    .local v5, simpleLibPath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    .local v4, simpleLibFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 535
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 537
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1b6

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v10, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 541
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 542
    sget-object v10, Lcom/samsung/inputmethod/SimeDecoderService;->USER_UDB_SIMPLE_LIB:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/samsung/inputmethod/SimeDecoderService;->readUdbFromFile(Ljava/lang/String;)[B

    move-result-object v6

    .line 543
    array-length v0, v6

    .line 545
    if-lez v0, :cond_1

    .line 546
    invoke-static {v6, v0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNOpenUdbCache([BI)Z

    move-result v10

    if-nez v10, :cond_1

    .line 547
    const-string v10, "SamsungDecoderService"

    const-string v11, "simple udb open fail"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFilesDir()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/samsung/inputmethod/SimeDecoderService;->USER_UDB_TRADITION_LIB:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 554
    .local v9, traditionLibPath:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 556
    .local v8, traditionLibFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 558
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 559
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1b6

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v10, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 563
    :cond_2
    :goto_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 564
    sget-object v10, Lcom/samsung/inputmethod/SimeDecoderService;->USER_UDB_TRADITION_LIB:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/samsung/inputmethod/SimeDecoderService;->readUdbFromFile(Ljava/lang/String;)[B

    move-result-object v7

    .line 565
    array-length v0, v7

    .line 566
    if-lez v0, :cond_3

    .line 567
    invoke-static {v7, v0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNOpenUdbCache([BI)Z

    move-result v10

    if-nez v10, :cond_3

    .line 568
    const-string v10, "SamsungDecoderService"

    const-string v11, "tradition udb open fail"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFilesDir()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/samsung/inputmethod/SimeDecoderService;->USER_UDB_HK_LIB:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, hkLibPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 577
    .local v2, hkLibFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    .line 579
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 581
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1b6

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v10, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 585
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 586
    sget-object v10, Lcom/samsung/inputmethod/SimeDecoderService;->USER_UDB_HK_LIB:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/samsung/inputmethod/SimeDecoderService;->readUdbFromFile(Ljava/lang/String;)[B

    move-result-object v1

    .line 587
    array-length v0, v1

    .line 589
    if-lez v0, :cond_5

    .line 590
    invoke-static {v1, v0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNOpenUdbCache([BI)Z

    move-result v10

    if-nez v10, :cond_5

    .line 591
    const-string v10, "SamsungDecoderService"

    const-string v11, "simple udb open fail"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_5
    const/4 v6, 0x0

    .line 596
    const/4 v7, 0x0

    .line 597
    const/4 v1, 0x0

    .line 598
    return-void

    .line 582
    :catch_0
    move-exception v10

    goto :goto_2

    .line 560
    .end local v2           #hkLibFile:Ljava/io/File;
    .end local v3           #hkLibPath:Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_1

    .line 538
    .end local v8           #traditionLibFile:Ljava/io/File;
    .end local v9           #traditionLibPath:Ljava/lang/String;
    :catch_2
    move-exception v10

    goto/16 :goto_0
.end method

.method private initXT9Engine()V
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeDecoderService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9Init(Landroid/content/res/AssetManager;)Z

    .line 505
    return-void
.end method

.method public static isHandwriteInit()Z
    .locals 1

    .prologue
    .line 464
    sget-boolean v0, Lcom/samsung/inputmethod/SimeDecoderService;->mIsHandwriteInit:Z

    return v0
.end method

.method static native nativeCBBeautifyStrokes([II[II)Ljava/lang/Object;
.end method

.method static native nativeCBBeautifyText([IIIII[II)Ljava/lang/Object;
.end method

.method static native nativeCBCloseEngine()V
.end method

.method static native nativeCBGetSlantDir()I
.end method

.method static native nativeCBGetStyleParam(II)I
.end method

.method static native nativeCBGetStyleParams(I[I)I
.end method

.method static native nativeCBInitEngine()I
.end method

.method static native nativeCBLoadGHB(I[B)I
.end method

.method static native nativeCBLoadGHBEx(Ljava/lang/Object;)I
.end method

.method static native nativeCBLoadPDB(I[B)I
.end method

.method static native nativeCBLoadPDBEx(Ljava/lang/Object;)I
.end method

.method static native nativeCBRealtimeDraw([II[II)Ljava/lang/Object;
.end method

.method static native nativeCBSetCbRect(III)I
.end method

.method static native nativeCBSetGHBSize(I)I
.end method

.method static native nativeCBSetLayout(IIIIIIIIIIIIIIII)I
.end method

.method static native nativeCBSetPDBSize(I)I
.end method

.method static native nativeCBSetSlantValue(I)I
.end method

.method static native nativeCBSetStyle(I)I
.end method

.method static native nativeCBSetStyleParam(II)I
.end method

.method static native nativeHWAddSelfDefineModel([IIC)I
.end method

.method static native nativeHWCleanUserData()V
.end method

.method static native nativeHWDelSelfDefineModel(C)I
.end method

.method static native nativeHWEnableSelfAdapt(I)I
.end method

.method static native nativeHWEnableSelfDefine(I)I
.end method

.method static native nativeHWEnableTraSimConversion(I)I
.end method

.method static native nativeHWLoadDB(Ljava/lang/String;)I
.end method

.method static native nativeHWRecogChar([III[I[C)I
.end method

.method static native nativeHWRecogString([III[I[C)I
.end method

.method static native nativeHWRecogText([III[I[C)I
.end method

.method static native nativeHWReleaseDB()I
.end method

.method static native nativeHWSaveUserData()V
.end method

.method static native nativeHWSelfAdapt(C)I
.end method

.method static native nativeHWSetRange(CLjava/lang/String;)I
.end method

.method static native nativeHWSetRect(III)I
.end method

.method static native nativeHWSetSpeed(C)I
.end method

.method static native nativeImEndJOHAB()V
.end method

.method static native nativeImGetMadeCode(ZIIII)[C
.end method

.method static native nativeImGetMadeCodeSize()I
.end method

.method static native nativeImGetMakeCode()[C
.end method

.method static native nativeImGetMakeCodeSize()I
.end method

.method static native nativeImInitJOHAB()V
.end method

.method static native nativeImIsCTCModel()Z
.end method

.method static native nativeImIsHKTWModel()Z
.end method

.method static native nativeImIsTDModel()Z
.end method

.method static native nativeImKorProcessBackspace()Z
.end method

.method static native nativeImXT9AWChoosePhrase(I)I
.end method

.method static native nativeImXT9AWGetDefaultActiveIndex()I
.end method

.method static native nativeImXT9AWReset()V
.end method

.method static native nativeImXT9CHNAddOneChar(C)I
.end method

.method static native nativeImXT9CHNChoosePhrase(I)I
.end method

.method static native nativeImXT9CHNDelUDBPhrase(I)Z
.end method

.method static native nativeImXT9CHNEnableErrorCorrect(Z)I
.end method

.method static native nativeImXT9CHNEnableFullSentence(Z)I
.end method

.method static native nativeImXT9CHNFreeUdbBuf()V
.end method

.method static native nativeImXT9CHNGetPhrase(I)Ljava/lang/String;
.end method

.method static native nativeImXT9CHNGetPhraseInfo(ILcom/samsung/inputmethod/candidate/SimeCandDetailInfo;)V
.end method

.method static native nativeImXT9CHNGetPrefix(I)Ljava/lang/String;
.end method

.method static native nativeImXT9CHNGetPrefixCount()I
.end method

.method static native nativeImXT9CHNGetRefinedSpell()Ljava/lang/String;
.end method

.method static native nativeImXT9CHNGetSpell()Ljava/lang/String;
.end method

.method static native nativeImXT9CHNGetSuffix(I)Ljava/lang/String;
.end method

.method static native nativeImXT9CHNGetSuffixCount()I
.end method

.method static native nativeImXT9CHNGetUdbCache(Ljava/lang/String;)[B
.end method

.method static native nativeImXT9CHNLoadLDBNum(I)V
.end method

.method static native nativeImXT9CHNOpenUdbCache([BI)Z
.end method

.method static native nativeImXT9CHNPYEnableMohuPairs(I)I
.end method

.method static native nativeImXT9CHNPreparePrediction(Ljava/lang/String;)I
.end method

.method static native nativeImXT9CHNProcessBackspace()I
.end method

.method static native nativeImXT9CHNReset()V
.end method

.method static native nativeImXT9CHNSTREnableComponent(Z)I
.end method

.method static native nativeImXT9CHNSetActivePrefix(I)I
.end method

.method static native nativeImXT9CHNSetActiveSuffix(I)I
.end method

.method static native nativeImXT9CHNSetInputMode(IZ)I
.end method

.method static native nativeImXT9CHNSetMdbPriorityHigh(Z)I
.end method

.method static native nativeImXT9CHNSetSKBValue(II)V
.end method

.method static native nativeImXT9Exit()Z
.end method

.method static native nativeImXT9Init(Landroid/content/res/AssetManager;)Z
.end method

.method static native nativeImXT9KORGetPredict(I)Ljava/lang/String;
.end method

.method static native nativeImXT9KORPreparePrediction(Ljava/lang/String;)I
.end method

.method static native nativeXT9AWClearInput()I
.end method

.method static native nativeXT9AWDelSearch()I
.end method

.method static native nativeXT9AWGetPhrase(I)Ljava/lang/String;
.end method

.method static native nativeXT9AWSearch(C)I
.end method

.method static native nativeXT9AWSetCapsLock()I
.end method

.method static native nativeXT9AWSetInputMode(IZ)I
.end method

.method static native nativeXT9AWSetSKBValue(II)V
.end method

.method static native nativeXT9AWSetShift()I
.end method

.method static native nativeXT9AWSetShiftMode(I)I
.end method

.method static native nativeXT9AWSetUnShift()I
.end method

.method private storeUdbToFile()V
    .locals 4

    .prologue
    .line 602
    const/4 v2, 0x0

    .line 603
    .local v2, simpleStoreBuf:[B
    const/4 v1, 0x0

    .line 604
    .local v1, TraditionStoreBuf:[B
    const/4 v0, 0x0

    .line 608
    .local v0, HkStoreBuf:[B
    const-string v3, "zh_CN"

    invoke-static {v3}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNGetUdbCache(Ljava/lang/String;)[B

    move-result-object v2

    .line 609
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 610
    sget-object v3, Lcom/samsung/inputmethod/SimeDecoderService;->USER_UDB_SIMPLE_LIB:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/inputmethod/SimeDecoderService;->writeUdbToFile([BLjava/lang/String;)V

    .line 618
    :cond_0
    const-string v3, "zh_TW"

    invoke-static {v3}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNGetUdbCache(Ljava/lang/String;)[B

    move-result-object v1

    .line 619
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 620
    sget-object v3, Lcom/samsung/inputmethod/SimeDecoderService;->USER_UDB_TRADITION_LIB:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/samsung/inputmethod/SimeDecoderService;->writeUdbToFile([BLjava/lang/String;)V

    .line 625
    :cond_1
    const-string v3, "zh_HK"

    invoke-static {v3}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNGetUdbCache(Ljava/lang/String;)[B

    move-result-object v0

    .line 626
    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    .line 627
    sget-object v3, Lcom/samsung/inputmethod/SimeDecoderService;->USER_UDB_HK_LIB:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/samsung/inputmethod/SimeDecoderService;->writeUdbToFile([BLjava/lang/String;)V

    .line 630
    :cond_2
    const/4 v2, 0x0

    .line 631
    const/4 v1, 0x0

    .line 632
    const/4 v0, 0x0

    .line 634
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeDecoderService;->mBinder:Lcom/samsung/inputmethod/ISamsungIMEDecoderService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 509
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 510
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeDecoderService;->initUdbFile()V

    .line 511
    new-instance v0, Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;-><init>(Lcom/samsung/inputmethod/SimeDecoderService;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;

    .line 512
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeDecoderService;->initXT9Engine()V

    .line 513
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 517
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9Exit()Z

    .line 518
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 519
    return-void
.end method

.method public readUdbFromFile(Ljava/lang/String;)[B
    .locals 5
    .parameter "path"

    .prologue
    .line 637
    const/4 v3, 0x0

    .line 638
    .local v3, myFileStream:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 641
    .local v2, inputBuffer:[B
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SimeDecoderService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 642
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 643
    .local v0, count:I
    new-array v2, v0, [B

    .line 644
    if-eqz v3, :cond_0

    .line 645
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v0}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 650
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 655
    .end local v0           #count:I
    :goto_0
    return-object v2

    .line 651
    .restart local v0       #count:I
    :catch_0
    move-exception v1

    .line 652
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 646
    .end local v0           #count:I
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 647
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 650
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 651
    :catch_2
    move-exception v1

    .line 652
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 649
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 650
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 653
    :goto_1
    throw v4

    .line 651
    :catch_3
    move-exception v1

    .line 652
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public writeUdbToFile([BLjava/lang/String;)V
    .locals 3
    .parameter "buf"
    .parameter "path"

    .prologue
    .line 659
    const/4 v1, 0x0

    .line 661
    .local v1, myFileStream:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v2}, Lcom/samsung/inputmethod/SimeDecoderService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 662
    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 672
    :cond_0
    if-eqz v1, :cond_1

    .line 673
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 680
    :cond_1
    :goto_0
    return-void

    .line 675
    :catch_0
    move-exception v0

    .line 677
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 665
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 667
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 672
    if-eqz v1, :cond_1

    .line 673
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 675
    :catch_2
    move-exception v0

    .line 677
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 671
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 672
    if-eqz v1, :cond_2

    .line 673
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 678
    :cond_2
    :goto_1
    throw v2

    .line 675
    :catch_3
    move-exception v0

    .line 677
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
