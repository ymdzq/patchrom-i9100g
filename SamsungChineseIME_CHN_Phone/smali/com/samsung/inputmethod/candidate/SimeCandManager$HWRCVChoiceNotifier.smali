.class public Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;
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
    name = "HWRCVChoiceNotifier"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HWRCVChoiceNotifier"


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1854
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private predictChoice(IZ)V
    .locals 5
    .parameter "choiceId"
    .parameter "onTouch"

    .prologue
    const/4 v4, 0x1

    .line 1924
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$900(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1926
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$900(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 1928
    .local v0, choice:Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1929
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1931
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 1932
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$800(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWTopHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-ne v2, v3, :cond_1

    if-eqz p2, :cond_1

    .line 1933
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1934
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1959
    .end local v0           #choice:Ljava/lang/String;
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-void

    .line 1939
    .restart local v0       #choice:Ljava/lang/String;
    .restart local v1       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$900(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->predictChoice(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1940
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1941
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(Z)V

    .line 1942
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v4, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    goto :goto_0

    .line 1947
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$800(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v2, v3, :cond_3

    .line 1948
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v4, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    goto :goto_0

    .line 1951
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v4, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    goto :goto_0
.end method


# virtual methods
.method public onClickChoice(I)Z
    .locals 6
    .parameter "choiceId"

    .prologue
    const/4 v5, 0x0

    .line 1866
    const/4 v0, 0x0

    .line 1867
    .local v0, bRet:Z
    if-ltz p1, :cond_3

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$900(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 1868
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$400(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1869
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$400(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 1870
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$400(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryVibrate(I)V

    .line 1875
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$900(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 1876
    .local v1, choice:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1877
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 1879
    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1882
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$900(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->predictChoice(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1883
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/SamsungIME;->changeToStatePredict(Z)V

    .line 1884
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    .line 1887
    :cond_2
    const/4 v0, 0x1

    .line 1896
    .end local v1           #choice:Ljava/lang/String;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_3
    return v0
.end method

.method public onLongPressChoice(I)Z
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 1858
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectChoice(I)Z
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 1862
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->onClickChoice(I)Z

    move-result v0

    return v0
.end method

.method public onToBottomGesture()Z
    .locals 1

    .prologue
    .line 1966
    const/4 v0, 0x0

    return v0
.end method

.method public onToLeftGesture()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1902
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$700(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageForward(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1903
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$700(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v0

    .line 1904
    .local v0, choiceId:I
    invoke-direct {p0, v0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->predictChoice(IZ)V

    .line 1907
    .end local v0           #choiceId:I
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onToRightGesture()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1914
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$700(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageBackward(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1915
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$700(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v0

    .line 1916
    .local v0, choiceId:I
    invoke-direct {p0, v0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->predictChoice(IZ)V

    .line 1919
    .end local v0           #choiceId:I
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onToTopGesture()Z
    .locals 1

    .prologue
    .line 1962
    const/4 v0, 0x0

    return v0
.end method
