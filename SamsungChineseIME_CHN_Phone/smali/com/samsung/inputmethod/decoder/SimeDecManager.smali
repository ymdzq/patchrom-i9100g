.class public Lcom/samsung/inputmethod/decoder/SimeDecManager;
.super Ljava/lang/Object;
.source "SimeDecManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_CAND_NUM:I = 0xc8

.field private static final MAX_CAND_NUM_FIRST:I = 0xc

.field private static final TAG:Ljava/lang/String; = "DecodingInfoMgr"


# instance fields
.field public mActiveDecType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

.field private mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field public mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

.field private mContactCount:I

.field public mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

.field private mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field public mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

.field public mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

.field public mT9KorDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

.field public mTotalCandidatesNum:I


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 1
    .parameter "imeService"

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mContactCount:I

    .line 86
    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mTotalCandidatesNum:I

    .line 90
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 92
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    invoke-direct {v0, p1, p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9KorDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    .line 93
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-direct {v0, p1, p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    .line 94
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-direct {v0, p1, p0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    .line 95
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-direct {v0, p1, p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    .line 96
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-direct {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 97
    sget-object v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->DEFDECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mActiveDecType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    .line 98
    return-void
.end method

.method private isHandwriteInputMode()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 308
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public candidatesFromApp()Z
    .locals 2

    .prologue
    .line 518
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableFullSentence(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v1, p1}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNEnableFullSentence(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 300
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DecodingInfoMgr"

    const-string v2, "enable full sentence  failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public errorCorrectEnable(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v1, p1}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNEnableErrorCorrect(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DecodingInfoMgr"

    const-string v2, "enable error correction  failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    .locals 2

    .prologue
    .line 148
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9English()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    .line 163
    .local v0, mActiveDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    :goto_0
    return-object v0

    .line 151
    .end local v0           #mActiveDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Korean()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKorean()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9KorDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    .restart local v0       #mActiveDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    goto :goto_0

    .line 154
    .end local v0           #mActiveDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->isHandwritePinyinMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    .restart local v0       #mActiveDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    goto :goto_0

    .line 160
    .end local v0           #mActiveDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    .restart local v0       #mActiveDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    goto :goto_0
.end method

.method public getActiveDecType()Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9English()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9AWINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mActiveDecType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mActiveDecType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Korean()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKorean()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    :cond_1
    sget-object v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9KORDECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mActiveDecType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->isHandwritePinyinMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    :cond_3
    sget-object v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9DECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mActiveDecType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    goto :goto_0

    .line 181
    :cond_4
    sget-object v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->HWDECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mActiveDecType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    goto :goto_0
.end method

.method public getAppCompletions()[Landroid/view/inputmethod/CompletionInfo;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    return-object v0
.end method

.method public getDecoderService()Lcom/samsung/inputmethod/ISamsungIMEDecoderService;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    return-object v0
.end method

.method public getHWDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    return-object v0
.end method

.method public getT9AWDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9English;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    return-object v0
.end method

.method public getT9DecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    return-object v0
.end method

.method public getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9KorDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    return-object v0
.end method

.method public handwritePinyinDecode(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "spelling"
    .parameter "update"

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 131
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->reset()V

    .line 132
    if-nez p1, :cond_0

    .line 141
    :goto_0
    return v1

    .line 134
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 135
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->addSplChar(CZ)V

    .line 136
    if-eqz p2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->chooseAndUpdate(I)V

    .line 134
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->chooseDecodingCandidate(I)V

    goto :goto_2

    .line 141
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public imXT9CHNAddOneWordToCandsList(Ljava/lang/String;I)Z
    .locals 2
    .parameter "wordStr"
    .parameter "type"

    .prologue
    .line 402
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-direct {v0, p1, p2}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>(Ljava/lang/String;I)V

    .line 403
    .local v0, candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->add(Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;)V

    .line 405
    const/4 v1, 0x1

    return v1
.end method

.method public isCandFetchOver()Z
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->isCandFetchOver()Z

    move-result v0

    return v0
.end method

.method public isCommonCandidatesListEmpty()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->isCandidatesListEmpty()Z

    move-result v0

    return v0
.end method

.method public mohuPinyinEnable(I)V
    .locals 3
    .parameter "maskcode"

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v1, p1}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNPYEnableMohuPairs(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DecodingInfoMgr"

    const-string v2, "enable mohu pinyin  failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public prepareAppCompletions([Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 9
    .parameter "completions"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->resetCommonCandidates()V

    .line 314
    if-eqz p1, :cond_0

    array-length v5, p1

    if-gtz v5, :cond_1

    :cond_0
    move v5, v6

    .line 350
    :goto_0
    return v5

    .line 316
    :cond_1
    const/4 v2, 0x0

    .line 317
    .local v2, j:I
    invoke-virtual {p1}, [Landroid/view/inputmethod/CompletionInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/view/inputmethod/CompletionInfo;

    iput-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 318
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 320
    aget-object v0, p1, v1

    .line 321
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 324
    .local v4, s:Ljava/lang/CharSequence;
    if-eqz v4, :cond_2

    .line 325
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->add(Ljava/lang/String;)V

    .line 326
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    iget-object v8, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v8, v8, v1

    aput-object v8, v5, v2

    move v2, v3

    .line 318
    .end local v3           #j:I
    .end local v4           #s:Ljava/lang/CharSequence;
    .restart local v2       #j:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 330
    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_3
    move v1, v2

    :goto_2
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 332
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    const/4 v8, 0x0

    aput-object v8, v5, v1

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 337
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    if-ne v5, v8, :cond_5

    .line 338
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->setFinishSelection(Z)V

    .line 340
    :cond_5
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setCandidatesFromApp(Z)V

    .line 343
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setCandFetchOver(Z)V

    .line 345
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v5

    iput v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mTotalCandidatesNum:I

    .line 347
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v5

    if-gtz v5, :cond_6

    move v5, v6

    .line 348
    goto :goto_0

    :cond_6
    move v5, v7

    .line 350
    goto :goto_0
.end method

.method public prepareCandidatesList(I)I
    .locals 11
    .parameter "candNum"

    .prologue
    const/16 v10, 0xc8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 416
    const/4 v3, 0x0

    .line 421
    .local v3, retCnt:I
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->isCandFetchOver()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    move v4, v3

    .line 514
    .end local v3           #retCnt:I
    .local v4, retCnt:I
    :goto_1
    return v4

    .line 426
    .end local v4           #retCnt:I
    .restart local v3       #retCnt:I
    :cond_1
    if-gtz p1, :cond_2

    move v4, v3

    .line 428
    .end local v3           #retCnt:I
    .restart local v4       #retCnt:I
    goto :goto_1

    .line 432
    .end local v4           #retCnt:I
    .restart local v3       #retCnt:I
    :cond_2
    sget-boolean v7, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CONTACT_ACCESS_FEATURE:Z

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLinkToContacts()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 435
    iget v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mTotalCandidatesNum:I

    if-nez v7, :cond_3

    .line 436
    iput v9, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mContactCount:I

    .line 439
    :cond_3
    iget v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mTotalCandidatesNum:I

    .line 440
    .local v6, startIdx:I
    move v2, p1

    .line 443
    .local v2, fetchCnt:I
    sget-boolean v7, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CONTACT_ACCESS_FEATURE:Z

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLinkToContacts()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 446
    iget v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mContactCount:I

    sub-int/2addr v6, v7

    .line 451
    :cond_4
    add-int v7, p1, v6

    if-lt v7, v10, :cond_5

    .line 452
    rsub-int v2, v6, 0xc8

    .line 453
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setCandFetchOver(Z)V

    .line 459
    :cond_5
    :try_start_0
    sget-boolean v7, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CONTACT_ACCESS_FEATURE:Z

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLinkToContacts()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_7

    .line 462
    const/4 v5, 0x0

    .line 463
    .local v5, spellString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 466
    .local v0, contactCandNum:I
    :try_start_1
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9English()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 467
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWGetNthCandidate(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 474
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_6

    iget v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mTotalCandidatesNum:I

    if-nez v7, :cond_6

    .line 475
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v5}, Lcom/samsung/inputmethod/SamsungIME;->updateContactInfoToCandidate(Ljava/lang/String;)I

    move-result v0

    .line 477
    :cond_6
    if-lez v0, :cond_7

    .line 478
    iget v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mTotalCandidatesNum:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mTotalCandidatesNum:I

    .line 481
    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mContactCount:I

    .line 487
    .end local v0           #contactCandNum:I
    .end local v5           #spellString:Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9English()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 489
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    iget-object v8, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCandidatesList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWCandidatesList(Ljava/util/List;)V

    .line 490
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v7

    iput v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mTotalCandidatesNum:I

    .line 491
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget-object v8, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v8}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWGetActiveIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setDefaultActiveIndex(I)V

    .line 492
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setCandFetchOver(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "DecodingInfoMgr"

    const-string v8, "prepareCandidatesList is fail-- (7)"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 469
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #contactCandNum:I
    .restart local v5       #spellString:Ljava/lang/String;
    :cond_8
    :try_start_3
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v7}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNGetSpell()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    goto :goto_2

    .line 496
    .end local v0           #contactCandNum:I
    .end local v5           #spellString:Ljava/lang/String;
    :cond_9
    :try_start_4
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    iget-object v8, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCandidatesList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8, v6, v2}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNGetCandsList(Ljava/util/List;II)I

    move-result v3

    .line 499
    iget v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mTotalCandidatesNum:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mTotalCandidatesNum:I

    .line 500
    if-ge v3, v2, :cond_a

    .line 501
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setCandFetchOver(Z)V

    goto/16 :goto_0

    .line 503
    :cond_a
    iget v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mTotalCandidatesNum:I

    if-lt v7, v10, :cond_0

    .line 504
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setCandFetchOver(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 470
    .restart local v0       #contactCandNum:I
    .restart local v5       #spellString:Ljava/lang/String;
    :catch_1
    move-exception v7

    goto/16 :goto_2
.end method

.method public prepareCandidatesList()V
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->resetCommonCandidates()V

    .line 375
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->prepareCandidatesList(I)I

    .line 396
    return-void
.end method

.method public preparePredicts(Ljava/lang/CharSequence;Z)V
    .locals 8
    .parameter "history"
    .parameter "isKor"

    .prologue
    .line 524
    if-nez p1, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->resetCommonCandidates()V

    .line 528
    const-wide/16 v4, 0x0

    .line 529
    .local v4, timeStart:J
    const-wide/16 v2, 0x0

    .line 533
    .local v2, timeEnd:J
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, preEdit:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 540
    if-nez p2, :cond_2

    .line 541
    :try_start_0
    iget-object v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCandidatesList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNGetPredictionList(Ljava/lang/String;Ljava/util/List;)I

    .line 545
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 548
    iget-object v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setCandFetchOver(Z)V

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 543
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCandidatesList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9KORGetPredictionList(Ljava/lang/String;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9KorDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->reset()V

    .line 122
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->reset()V

    .line 123
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->reset()V

    .line 124
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->reset()V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->resetCommonCandidates()V

    .line 126
    return-void
.end method

.method public resetCommonCandidates()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->reset()V

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mTotalCandidatesNum:I

    .line 360
    return-void
.end method

.method public setISamsungDecoderService(Lcom/samsung/inputmethod/ISamsungIMEDecoderService;)V
    .locals 1
    .parameter "server"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9KorDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->setISamsungDecoderService(Lcom/samsung/inputmethod/ISamsungIMEDecoderService;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->setISamsungDecoderService(Lcom/samsung/inputmethod/ISamsungIMEDecoderService;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->setISamsungDecoderService(Lcom/samsung/inputmethod/ISamsungIMEDecoderService;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->setISamsungDecoderService(Lcom/samsung/inputmethod/ISamsungIMEDecoderService;)V

    .line 106
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    .line 107
    return-void
.end method

.method public setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 1
    .parameter "inputModeSwitcher"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9KorDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 115
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 116
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 117
    return-void
.end method

.method public setMdbProrityHigh(Z)V
    .locals 3
    .parameter "bHigh"

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v1, p1}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNSetMdbPriorityHigh(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DecodingInfoMgr"

    const-string v2, "set mdb prority  failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setXT9InputMode(IZ)V
    .locals 5
    .parameter "inputMode"
    .parameter "phonepad"

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isHandwriteInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->isHandwritePinyinMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9SetInputMode(IZ)V

    .line 242
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbHeight(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9SetSKBValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_1
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 245
    const-string v1, "DecodingInfoMgr"

    const-string v2, "set inputmode  failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setXT9Language(Ljava/lang/String;)V
    .locals 3
    .parameter "language"

    .prologue
    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    if-nez v1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v1, p1}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9SetLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DecodingInfoMgr"

    const-string v2, "set Language failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public strokeEnableComponent(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v1, p1}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9CHNSTREnableComponent(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DecodingInfoMgr"

    const-string v2, "enable component  failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
