.class public Lcom/samsung/inputmethod/candidate/SimeCandInfo;
.super Ljava/lang/Object;
.source "SimeCandInfo.java"


# static fields
.field public static final MAX_PAGE_SIZE_DISPLAY:I = 0x32


# instance fields
.field protected mBFetchCandOver:Z

.field protected mCandidatesFromApp:Z

.field protected mCnToPage:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultActiveIndex:I

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mPageStart:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mCnToPage:Ljava/util/Vector;

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    .line 42
    iput-boolean v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mCandidatesFromApp:Z

    .line 51
    iput-boolean v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mBFetchCandOver:Z

    .line 54
    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mDefaultActiveIndex:I

    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;)V
    .locals 1
    .parameter "candInfo"

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public add(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-direct {v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, newCand:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public candidatesFromApp()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mCandidatesFromApp:Z

    return v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 1
    .parameter "candId"

    .prologue
    .line 102
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCandidatesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getCnToPage()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mCnToPage:Ljava/util/Vector;

    return-object v0
.end method

.method public getCurrentPageSize(I)I
    .locals 2
    .parameter "currentPage"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-gt v0, v1, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public getCurrentPageStart(I)I
    .locals 2
    .parameter "currentPage"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 181
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultActiveIndex()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mDefaultActiveIndex:I

    return v0
.end method

.method public getDetailInfo(I)Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    .locals 1
    .parameter "candId"

    .prologue
    .line 109
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 110
    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    goto :goto_0
.end method

.method public getPageStart()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    return-object v0
.end method

.method public isCandFetchOver()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mBFetchCandOver:Z

    return v0
.end method

.method public isCandidatesListEmpty()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pageBackwardable(I)Z
    .locals 1
    .parameter "currentPage"

    .prologue
    .line 194
    if-lez p1, :cond_0

    .line 195
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pageForwardable(I)Z
    .locals 3
    .parameter "currentPage"

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v2, p1, 0x1

    if-gt v0, v2, :cond_0

    move v0, v1

    .line 190
    :goto_0
    return v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    move v0, v1

    .line 188
    goto :goto_0

    .line 190
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pageReady(I)Z
    .locals 3
    .parameter "pageNo"

    .prologue
    const/4 v0, 0x0

    .line 130
    if-gez p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    if-le v1, v2, :cond_0

    .line 138
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public preparePage(I)Z
    .locals 4
    .parameter "pageNo"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    if-gez p1, :cond_0

    move v0, v1

    .line 168
    :goto_0
    return v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    move v0, v1

    .line 148
    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v3, p1, 0x1

    if-le v0, v3, :cond_2

    move v0, v2

    .line 153
    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v3, v0

    const/16 v3, 0x32

    if-lt v0, v3, :cond_3

    move v0, v2

    .line 158
    goto :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    move v0, v1

    .line 164
    goto :goto_0

    :cond_4
    move v0, v2

    .line 168
    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 69
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mCnToPage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 71
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mCnToPage:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 72
    iput-boolean v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mCandidatesFromApp:Z

    .line 74
    iput-boolean v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mBFetchCandOver:Z

    .line 75
    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mDefaultActiveIndex:I

    .line 76
    return-void
.end method

.method public setCandFetchOver(Z)V
    .locals 0
    .parameter "isOver"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mBFetchCandOver:Z

    .line 87
    return-void
.end method

.method public setCandidatesFromApp(Z)V
    .locals 0
    .parameter "fromApp"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mCandidatesFromApp:Z

    .line 210
    return-void
.end method

.method public setDefaultActiveIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 58
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mDefaultActiveIndex:I

    .line 59
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
