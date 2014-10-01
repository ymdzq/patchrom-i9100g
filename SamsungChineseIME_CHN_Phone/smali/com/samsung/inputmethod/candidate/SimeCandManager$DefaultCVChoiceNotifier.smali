.class public Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;
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
    name = "DefaultCVChoiceNotifier"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultChoiceNotifier"


# instance fields
.field private mActionChoiceId:I

.field final synthetic this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V
    .locals 1
    .parameter

    .prologue
    .line 1526
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1528
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->mActionChoiceId:I

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1526
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->mActionChoiceId:I

    return v0
.end method


# virtual methods
.method public onClickChoice(I)Z
    .locals 3
    .parameter "choiceId"

    .prologue
    .line 1606
    const/4 v0, 0x0

    .line 1610
    .local v0, bRet:Z
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->onSelectChoice(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1611
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$400(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1612
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$400(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 1613
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$400(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryVibrate(I)V

    .line 1615
    :cond_0
    const/4 v0, 0x1

    .line 1617
    :cond_1
    return v0
.end method

.method public onLongPressChoice(I)Z
    .locals 5
    .parameter "choiceId"

    .prologue
    const/4 v4, 0x7

    .line 1533
    const/4 v0, 0x0

    .line 1537
    .local v0, bRet:Z
    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 1538
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v2

    iget-object v1, v2, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 1541
    .local v1, curCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DEL_UDB_FEATURE:Z

    if-eqz v2, :cond_0

    .line 1542
    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDetailInfo(I)Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->isContentTypeUDB()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1546
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9DecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1547
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CONTACT_ACCESS_FEATURE:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLinkToContacts()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1548
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDetailInfo(I)Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->getContentType()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1550
    add-int/lit8 v2, p1, -0x1

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->mActionChoiceId:I

    .line 1563
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v2

    new-instance v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier$1UdbDelOkListener;

    invoke-direct {v3, p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier$1UdbDelOkListener;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;)V

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->showDelUdbDialog(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1564
    const/4 v0, 0x1

    .line 1572
    :cond_0
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CONTACT_ACCESS_FEATURE:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLinkToContacts()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1573
    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDetailInfo(I)Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->getContentType()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1575
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->mActionChoiceId:I

    .line 1582
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v2

    new-instance v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier$1UdbDelOkListener2;

    invoke-direct {v3, p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier$1UdbDelOkListener2;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;)V

    invoke-virtual {v2, v3, p1}, Lcom/samsung/inputmethod/SamsungIME;->showContactDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    .line 1583
    const/4 v0, 0x1

    .line 1588
    .end local v1           #curCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;
    :cond_1
    return v0

    .line 1552
    .restart local v1       #curCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;
    :cond_2
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->mActionChoiceId:I

    goto :goto_0

    .line 1554
    :cond_3
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->mActionChoiceId:I

    goto :goto_0
.end method

.method public onSelectChoice(I)Z
    .locals 3
    .parameter "choiceId"

    .prologue
    .line 1593
    const/4 v0, 0x0

    .line 1596
    .local v0, bRet:Z
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 1597
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/SamsungIME;->onChoiceTouched(I)V

    .line 1598
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1599
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(Z)V

    .line 1600
    :cond_0
    const/4 v0, 0x1

    .line 1602
    :cond_1
    return v0
.end method

.method public onToBottomGesture()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1656
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(Z)V

    .line 1657
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    .line 1658
    return v3
.end method

.method public onToLeftGesture()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1624
    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_COMPOSING:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1625
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 1627
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageForward(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1628
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    .line 1631
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onToRightGesture()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1638
    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_COMPOSING:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1639
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 1641
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageBackward(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1642
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    .line 1645
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onToTopGesture()Z
    .locals 3

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(Z)V

    .line 1650
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    .line 1651
    const/4 v0, 0x1

    return v0
.end method
