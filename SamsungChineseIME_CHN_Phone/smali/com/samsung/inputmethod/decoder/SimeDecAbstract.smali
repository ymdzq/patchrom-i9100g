.class public abstract Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
.super Ljava/lang/Object;
.source "SimeDecAbstract.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsDecodingInfo"


# instance fields
.field EMPTY:Ljava/lang/String;

.field mActiveCmpsLen:I

.field mCandId:I

.field protected mComposingStr:Ljava/lang/String;

.field protected mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

.field protected mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

.field protected mIme:Lcom/samsung/inputmethod/SamsungIME;

.field protected mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 1
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->EMPTY:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 58
    iput-object p2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    .line 60
    return-void
.end method


# virtual methods
.method public abstract chooseDecodingCandidate(I)V
.end method

.method public abstract choosePredictChoice(I)V
.end method

.method public getComposingStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mComposingStr:Ljava/lang/String;

    return-object v0
.end method

.method public getComposingStrActivePart()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    sget-boolean v0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mActiveCmpsLen:I

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mComposingStr:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mActiveCmpsLen:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->EMPTY:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mComposingStr:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mActiveCmpsLen:I

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mCandId:I

    .line 90
    return-void
.end method

.method public setComposingStr(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mComposingStr:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setISamsungDecoderService(Lcom/samsung/inputmethod/ISamsungIMEDecoderService;)V
    .locals 0
    .parameter "server"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mISamsungDecoderService:Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    .line 64
    return-void
.end method

.method public setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 0
    .parameter "inputModeSwitcher"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 68
    return-void
.end method
