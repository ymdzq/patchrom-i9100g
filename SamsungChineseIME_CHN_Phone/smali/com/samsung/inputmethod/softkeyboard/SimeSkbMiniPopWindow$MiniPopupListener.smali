.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;
.super Landroid/os/Handler;
.source "SimeSkbMiniPopWindow.java"

# interfaces
.implements Lcom/samsung/inputmethod/candidate/SimeCandViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MiniPopupListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickChoice(I)Z
    .locals 8
    .parameter "choiceId"

    .prologue
    const v7, 0x62011000

    const v6, 0x61021000

    const v5, 0x61011000

    .line 485
    const/4 v0, 0x0

    .line 487
    .local v0, bRet:Z
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mDataHander:[Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lt p1, v3, :cond_1

    :cond_0
    move v1, v0

    .line 541
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 490
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mDataHander:[Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, p1

    .line 491
    .local v2, choice:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 492
    const-string v3, "?#*"

    if-ne v2, v3, :cond_d

    .line 493
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    .line 494
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v4

    #setter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$202(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;Lcom/samsung/inputmethod/SimeInputModeSwitcher;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 495
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v4

    #setter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    invoke-static {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$402(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    .line 496
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanLanguage()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 497
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 498
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 530
    :goto_1
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$400(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 535
    :goto_2
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-eq v3, v4, :cond_3

    .line 536
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    .line 539
    :cond_3
    const/4 v0, 0x1

    move v1, v0

    .line 541
    .restart local v1       #bRet:I
    goto :goto_0

    .line 500
    .end local v1           #bRet:I
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 501
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_1

    .line 504
    :cond_5
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_1

    .line 507
    :cond_6
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 509
    :cond_7
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 510
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    const v4, 0x62021000

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_1

    .line 512
    :cond_8
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 513
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto/16 :goto_1

    .line 516
    :cond_9
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto/16 :goto_1

    .line 520
    :cond_a
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 521
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto/16 :goto_1

    .line 523
    :cond_b
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 524
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto/16 :goto_1

    .line 527
    :cond_c
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto/16 :goto_1

    .line 533
    :cond_d
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->commitResultText(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$500(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onLongPressChoice(I)Z
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectChoice(I)Z
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 481
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->onClickChoice(I)Z

    move-result v0

    return v0
.end method

.method public onToBottomGesture()Z
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public onToLeftGesture()Z
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public onToRightGesture()Z
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    return v0
.end method

.method public onToTopGesture()Z
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    return v0
.end method