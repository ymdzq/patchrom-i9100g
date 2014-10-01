.class Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;
.super Landroid/os/Handler;
.source "SimeCandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/candidate/SimeCandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrepareCandidatesTimer"
.end annotation


# static fields
.field private static final MAX_PAGE_CAND_SIZE:I = 0x14

.field private static final MAX_PAGE_CAND_SIZE_FIRST:I = 0x50

.field private static final MSG_DELAY_PREPARE_CANDIDATES:I = 0x0

.field private static final PREPARE_CANDIDATES_1ST_DELAYED:I = 0x1f4

.field private static final PREPARE_CANDIDATES_DELAYED:I = 0x64


# instance fields
.field private mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

.field final synthetic this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V
    .locals 1
    .parameter

    .prologue
    .line 2023
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2033
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    return-void
.end method

.method private startPrepareCandidatesTimer(Lcom/samsung/inputmethod/decoder/SimeDecManager;I)V
    .locals 3
    .parameter "mDI"
    .parameter "delayTime"

    .prologue
    .line 2037
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    .line 2038
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2039
    .local v0, msg:Landroid/os/Message;
    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2040
    return-void
.end method


# virtual methods
.method public PrepareCandidates(Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 1
    .parameter "mDI"

    .prologue
    .line 2053
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCandFetchOver()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2055
    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->prepareCandidatesList(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2056
    invoke-virtual {p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCandFetchOver()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2057
    const/16 v0, 0x1f4

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->startPrepareCandidatesTimer(Lcom/samsung/inputmethod/decoder/SimeDecManager;I)V

    .line 2062
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    if-eqz v0, :cond_1

    .line 2071
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->prepareCandidatesList(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 2072
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCandFetchOver()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2074
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->startPrepareCandidatesTimer(Lcom/samsung/inputmethod/decoder/SimeDecManager;I)V

    .line 2077
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$1000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->AppendExpandCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V

    .line 2080
    :cond_1
    return-void
.end method

.method public stopPrepareCandidatesTimer()V
    .locals 1

    .prologue
    .line 2045
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->removeMessages(I)V

    .line 2046
    return-void
.end method
