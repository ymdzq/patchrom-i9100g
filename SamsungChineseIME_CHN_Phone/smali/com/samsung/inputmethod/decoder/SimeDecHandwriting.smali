.class public Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;
.super Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
.source "SimeDecHandwriting.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HandwriteDecodingInfo"


# instance fields
.field public mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 1
    .parameter "mIme"
    .parameter "decMgr"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 140
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-direct {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 141
    return-void
.end method


# virtual methods
.method public chooseDecodingCandidate(I)V
    .locals 5
    .parameter "candId"

    .prologue
    const/4 v4, 0x0

    .line 450
    sget-boolean v1, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HandwriteDecodingInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIme.getIMEState()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "chooseDecodingCandidate candId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_2

    .line 458
    if-gez p1, :cond_3

    .line 459
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->predictChoice(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1, v4}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mComposingStr:Ljava/lang/String;

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 472
    :cond_2
    :goto_0
    return-void

    .line 463
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getTopCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v0

    .line 464
    .local v0, activeCand:I
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v2, v2, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mComposingStr:Ljava/lang/String;

    .line 467
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 469
    sget-boolean v1, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "HandwriteDecodingInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mComposingStr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public choosePredictChoice(I)V
    .locals 3
    .parameter "choiceId"

    .prologue
    .line 476
    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, tmp:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->resetCommonCandidates()V

    .line 484
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->add(Ljava/lang/String;)V

    .line 485
    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mComposingStr:Ljava/lang/String;

    goto :goto_0
.end method

.method public isHandwritePinyinMode()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public predictChoice(I)Z
    .locals 7
    .parameter "activeCandId"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 860
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->resetCommonCandidates()V

    .line 861
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v1

    .line 862
    .local v1, size:I
    if-lez v1, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_2

    :cond_0
    move v2, v3

    .line 875
    :cond_1
    :goto_0
    return v2

    .line 864
    :cond_2
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v4, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, choice:Ljava/lang/String;
    sget-boolean v4, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 866
    const-string v4, "HandwriteDecodingInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the choice string is ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->isHandwritePinyinMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 869
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    if-eqz v4, :cond_1

    .line 870
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v4, v0, v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->handwritePinyinDecode(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 873
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->preparePredicts(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->reset()V

    .line 161
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->reset()V

    .line 162
    return-void
.end method

.method public resetHWRecgCandidates()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->reset()V

    .line 167
    return-void
.end method
