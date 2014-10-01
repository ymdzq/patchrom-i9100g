.class public Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;
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
    name = "ExpandCVChoiceNotifier"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpandCVChoiceNotifier"


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1971
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickChoice(I)Z
    .locals 4
    .parameter "choiceId"

    .prologue
    const/4 v3, 0x0

    .line 1983
    const/4 v0, 0x0

    .line 1986
    .local v0, bRet:Z
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 1987
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/SamsungIME;->onChoiceTouched(I)V

    .line 1988
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$400(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 1989
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$400(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryVibrate(I)V

    .line 1990
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(Z)V

    .line 1991
    const/4 v0, 0x1

    .line 1993
    :cond_0
    return v0
.end method

.method public onLongPressChoice(I)Z
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 1975
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectChoice(I)Z
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 1979
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;->onClickChoice(I)Z

    move-result v0

    return v0
.end method

.method public onToBottomGesture()Z
    .locals 1

    .prologue
    .line 2014
    const/4 v0, 0x0

    return v0
.end method

.method public onToLeftGesture()Z
    .locals 1

    .prologue
    .line 1999
    const/4 v0, 0x0

    return v0
.end method

.method public onToRightGesture()Z
    .locals 1

    .prologue
    .line 2006
    const/4 v0, 0x0

    return v0
.end method

.method public onToTopGesture()Z
    .locals 1

    .prologue
    .line 2010
    const/4 v0, 0x0

    return v0
.end method
