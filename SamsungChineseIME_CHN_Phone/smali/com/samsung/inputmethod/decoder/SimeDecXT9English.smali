.class public Lcom/samsung/inputmethod/decoder/SimeDecXT9English;
.super Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
.source "SimeDecXT9English.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final ENG_STRING_MAX:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SimeDecXT9English"


# instance fields
.field private mActiveCmpsDisplayLen:I

.field private mAddChar:C

.field private mComposingStrDisplay:Ljava/lang/String;

.field private mCursorPos:I

.field public mIsDel:Z

.field private mStickToSplType:Z

.field private mSurface:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 1
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 49
    iput-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mStickToSplType:Z

    .line 58
    iput-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mIsDel:Z

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mSurface:Ljava/lang/StringBuffer;

    .line 71
    return-void
.end method


# virtual methods
.method public addSplChar(CZ)V
    .locals 3
    .parameter "ch"
    .parameter "reset"

    .prologue
    const/4 v2, 0x0

    .line 117
    iput-char p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mAddChar:C

    .line 118
    if-eqz p2, :cond_0

    .line 120
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mSurface:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 121
    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCursorPos:I

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v0}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWClearInput()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCursorPos:I

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mSurface:Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCursorPos:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 129
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCursorPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCursorPos:I

    .line 131
    :cond_1
    return-void

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public charBeforeCursorIsSeparator()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 339
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 340
    .local v0, len:I
    iget v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCursorPos:I

    if-le v2, v0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v1

    .line 342
    :cond_1
    iget v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCursorPos:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mSurface:Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCursorPos:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    .line 343
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public chooseDecodingCandidate(I)V
    .locals 6
    .parameter "candId"

    .prologue
    const/high16 v5, 0x30

    const/high16 v4, 0x20

    .line 208
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v2, v3, :cond_1

    .line 212
    if-gez p1, :cond_b

    .line 213
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->resetCommonCandidates()V

    .line 215
    iget-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mIsDel:Z

    if-eqz v2, :cond_2

    .line 216
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v2}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWDelSearch()I

    .line 223
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 225
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9QwertyEnglish()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    const/high16 v3, 0xf0

    and-int v1, v2, v3

    .line 228
    .local v1, upperCase:I
    if-ne v4, v1, :cond_3

    .line 230
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWSetShiftMode(I)I

    .line 269
    .end local v1           #upperCase:I
    :cond_0
    :goto_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCandId:I

    .line 271
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mIsDel:Z

    .line 272
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->prepareCandidatesList()V

    .line 273
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCommonCandidatesListEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 274
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->EMPTY:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mComposingStr:Ljava/lang/String;

    .line 283
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->updateComposingStrForDisplay()V

    .line 307
    :cond_1
    :goto_3
    return-void

    .line 220
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    iget-char v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mAddChar:C

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWSearch(C)I

    goto :goto_0

    .line 304
    :catch_0
    move-exception v2

    goto :goto_3

    .line 232
    .restart local v1       #upperCase:I
    :cond_3
    if-ne v5, v1, :cond_4

    .line 234
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWSetShiftMode(I)I

    .line 235
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mStickToSplType:Z

    goto :goto_1

    .line 239
    :cond_4
    iget-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mStickToSplType:Z

    if-eqz v2, :cond_5

    .line 240
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWSetShiftMode(I)I

    goto :goto_1

    .line 242
    :cond_5
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWSetShiftMode(I)I

    goto :goto_1

    .line 246
    .end local v1           #upperCase:I
    :cond_6
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT934English()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    const/high16 v3, 0xf0

    and-int v1, v2, v3

    .line 251
    .restart local v1       #upperCase:I
    if-ne v4, v1, :cond_7

    .line 253
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWSetShiftMode(I)I

    goto :goto_1

    .line 255
    :cond_7
    if-ne v5, v1, :cond_8

    .line 257
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWSetShiftMode(I)I

    .line 258
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mStickToSplType:Z

    goto :goto_1

    .line 262
    :cond_8
    iget-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mStickToSplType:Z

    if-eqz v2, :cond_9

    .line 263
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWSetShiftMode(I)I

    goto :goto_1

    .line 265
    :cond_9
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWSetShiftMode(I)I

    goto/16 :goto_1

    .line 276
    .end local v1           #upperCase:I
    :cond_a
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v2, v2, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDefaultActiveIndex()I

    move-result v0

    .line 277
    .local v0, index:I
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v2, v2, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mComposingStr:Ljava/lang/String;

    .line 280
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v2, v2, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->preparePage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 288
    .end local v0           #index:I
    :cond_b
    :try_start_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v2, p1}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWChooseCand(I)I

    .line 291
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mStickToSplType:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 301
    :goto_4
    :try_start_2
    iput p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCandId:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 293
    :catch_1
    move-exception v2

    goto :goto_4
.end method

.method public choosePredictChoice(I)V
    .locals 3
    .parameter "choiceId"

    .prologue
    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v1, p1}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWChooseCand(I)I

    .line 321
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mStickToSplType:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    iput p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCandId:I

    .line 328
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SimeDecXT9English"

    const-string v2, "JNI calling failed in choosePredictChoice()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getActiveCmpsDisplayLen()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mActiveCmpsDisplayLen:I

    return v0
.end method

.method public getComposingStrForDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mComposingStrDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigianlSplStr()Ljava/lang/StringBuffer;
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mSurface:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mSurface:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public isSplStrFull()Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareDeleteBeforeCursor()V
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCursorPos:I

    if-lez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mSurface:Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCursorPos:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 142
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCursorPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCursorPos:I

    .line 147
    :cond_0
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCursorPos:I

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->resetCommonCandidates()V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->reset()V

    .line 154
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mIsDel:Z

    .line 155
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->reset()V

    .line 82
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mSurface:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v0}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWClearInput()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCursorPos:I

    .line 91
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->EMPTY:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mComposingStr:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->EMPTY:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mComposingStrDisplay:Ljava/lang/String;

    .line 94
    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mActiveCmpsLen:I

    .line 95
    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mActiveCmpsDisplayLen:I

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCandId:I

    .line 97
    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mStickToSplType:Z

    .line 101
    return-void

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCapsLock()V
    .locals 1

    .prologue
    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v0}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWSetCapsLock()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setShift()V
    .locals 1

    .prologue
    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v0}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWSetShift()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUnShift()V
    .locals 1

    .prologue
    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v0}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->XT9AWSetUnShift()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public surfaceLength()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    return v0
.end method

.method public updateComposingStrForDisplay()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mComposingStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mComposingStrDisplay:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mActiveCmpsDisplayLen:I

    .line 193
    return-void
.end method
