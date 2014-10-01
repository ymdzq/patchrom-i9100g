.class public Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;
.super Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
.source "SimeDecXT9Korean.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeDecXT9Korean"


# instance fields
.field public mChooseBuf:[C

.field public mChooseBufLen:I


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 1
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mChooseBufLen:I

    .line 22
    const/16 v0, 0x100

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mChooseBuf:[C

    .line 23
    return-void
.end method


# virtual methods
.method public chooseDecodingCandidate(I)V
    .locals 0
    .parameter "candId"

    .prologue
    .line 131
    return-void
.end method

.method public choosePredictChoice(I)V
    .locals 0
    .parameter "choiceId"

    .prologue
    .line 136
    return-void
.end method

.method public endJOHAB()V
    .locals 1

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v0}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imEndJOHAB()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getMadeCode(ZIIII)Ljava/lang/String;
    .locals 9
    .parameter "isJAEUM"
    .parameter "sipKey"
    .parameter "selMode"
    .parameter "keyboardType"
    .parameter "keyboardOption"

    .prologue
    .line 110
    const/4 v6, 0x0

    .line 111
    .local v6, spellBuf:[C
    const/4 v7, 0x0

    .line 113
    .local v7, spellBufLen:I
    :try_start_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imGetMadeCode(ZIIII)[C

    move-result-object v6

    .line 114
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v0}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imGetMadeCodeSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 117
    :goto_0
    const/4 v8, 0x0

    .line 120
    .local v8, str:Ljava/lang/String;
    if-lez v7, :cond_0

    .line 121
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 124
    :cond_0
    return-object v8

    .line 115
    .end local v8           #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getMakeCode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, spellBuf:[C
    const/4 v1, 0x0

    .line 86
    .local v1, spellBufLen:I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v3}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imGetMakeCode()[C

    move-result-object v0

    .line 87
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v3}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imGetMakeCodeSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 90
    :goto_0
    const/4 v2, 0x0

    .line 91
    .local v2, str:Ljava/lang/String;
    if-lez v1, :cond_0

    .line 92
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 96
    :cond_0
    return-object v2

    .line 88
    .end local v2           #str:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public initJOHAB()V
    .locals 1

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v0}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imInitJOHAB()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public processKorBackspace()Z
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 71
    .local v0, status:Z
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    invoke-interface {v1}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imKorProcessBackspace()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 74
    :goto_0
    return v0

    .line 72
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->reset()V

    .line 36
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->initJOHAB()V

    .line 37
    return-void
.end method

.method public resetChoose()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mChooseBufLen:I

    .line 28
    return-void
.end method
