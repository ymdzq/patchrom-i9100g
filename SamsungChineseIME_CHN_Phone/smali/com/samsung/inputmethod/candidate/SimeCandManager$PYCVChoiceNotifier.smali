.class public Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;
.super Landroid/os/Handler;
.source "SimeCandManager.java"

# interfaces
.implements Lcom/samsung/inputmethod/candidate/SimeCandViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/candidate/SimeCandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PYCVChoiceNotifier"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PYCVChoiceNotifier"


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1663
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private onPYChoiceTouched(I)V
    .locals 1
    .parameter "activeCandNo"

    .prologue
    .line 1846
    :try_start_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$600(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->setActivePrefixSuffix(I)I

    .line 1847
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$600(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->updateComposingStrForDisplay()V

    .line 1848
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->updateComposingViewDisplay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1851
    :goto_0
    return-void

    .line 1849
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onClickChoice(I)Z
    .locals 5
    .parameter "choiceId"

    .prologue
    .line 1676
    const/4 v0, 0x0

    .line 1679
    .local v0, bRet:Z
    if-ltz p1, :cond_2

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$600(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 1680
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$400(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1681
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$400(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 1682
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$400(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryVibrate(I)V

    .line 1685
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$600(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 1686
    .local v1, choice:Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 1687
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1689
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$700(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    .line 1693
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1694
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(Z)V

    .line 1695
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v4, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    .line 1705
    :goto_1
    const/4 v0, 0x1

    .line 1707
    .end local v1           #choice:Ljava/lang/String;
    :cond_2
    return v0

    .line 1691
    .restart local v1       #choice:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    goto :goto_0

    .line 1699
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$800(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v2, v3, :cond_5

    .line 1700
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v4, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    goto :goto_1

    .line 1702
    :cond_5
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v4, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    goto :goto_1
.end method

.method public onLongPressChoice(I)Z
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 1668
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectChoice(I)Z
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 1672
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->onClickChoice(I)Z

    move-result v0

    return v0
.end method

.method public onToBottomGesture()Z
    .locals 1

    .prologue
    .line 1831
    const/4 v0, 0x0

    return v0
.end method

.method public onToLeftGesture()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1713
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$700(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageForward(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1714
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$700(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v0

    .line 1715
    .local v0, candId:I
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$600(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1716
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$600(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3, v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 1718
    .local v1, choice:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 1720
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$700(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    .line 1721
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1722
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(Z)V

    .line 1723
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v5, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    .line 1739
    .end local v0           #candId:I
    .end local v1           #choice:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 1728
    .restart local v0       #candId:I
    .restart local v1       #choice:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$800(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v3, v4, :cond_2

    .line 1729
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v5, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    goto :goto_0

    .line 1732
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v5, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    goto :goto_0

    .line 1739
    .end local v0           #candId:I
    .end local v1           #choice:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onToRightGesture()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1747
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$700(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageBackward(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1748
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$700(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v0

    .line 1749
    .local v0, candId:I
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$600(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1751
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$600(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3, v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 1752
    .local v1, choice:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 1754
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$700(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    .line 1756
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1757
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(Z)V

    .line 1758
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v5, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    .line 1774
    .end local v0           #candId:I
    .end local v1           #choice:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 1763
    .restart local v0       #candId:I
    .restart local v1       #choice:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$800(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v3, v4, :cond_2

    .line 1764
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v5, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    goto :goto_0

    .line 1767
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v5, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    goto :goto_0

    .line 1774
    .end local v0           #candId:I
    .end local v1           #choice:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onToTopGesture()Z
    .locals 1

    .prologue
    .line 1802
    const/4 v0, 0x0

    return v0
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "index"
    .parameter "suggestion"

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1836
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->onPYChoiceTouched(I)V

    .line 1838
    :cond_0
    return-void
.end method
