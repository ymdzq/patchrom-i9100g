.class Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;
.super Landroid/os/Handler;
.source "SimeComposingWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/composing/SimeComposingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposingWindowTimer"
.end annotation


# instance fields
.field private mParentLocation:[I

.field final synthetic this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;


# direct methods
.method private constructor <init>(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)V
    .locals 1
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->mParentLocation:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/inputmethod/composing/SimeComposingWindow;Lcom/samsung/inputmethod/composing/SimeComposingWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;-><init>(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)V

    return-void
.end method


# virtual methods
.method cancelShowing()V
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0, p0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    invoke-static {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$200(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    invoke-static {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$200(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->dismiss()V

    .line 184
    :cond_0
    return-void
.end method

.method postShowFloatingWindow()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 163
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mComposingViewContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$100(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 170
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    invoke-static {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$200(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mComposingViewContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$100(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->setWidth(I)V

    .line 172
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    invoke-static {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$200(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mComposingViewContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$100(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->setHeight(I)V

    .line 174
    invoke-virtual {p0, p0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, candHeigh:I
    const/4 v2, 0x0

    .line 189
    .local v2, skbHeight:I
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v3}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$300(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isShowOneItem()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v3}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$300(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getDefaultCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->mParentLocation:[I

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getLocationInWindow([I)V

    .line 192
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v3}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$300(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getDefaultCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getHeight()I

    move-result v1

    .line 200
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v3}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$300(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 201
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_2

    .line 202
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v4}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$300(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v4

    #setter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mParentView:Landroid/view/View;
    invoke-static {v3, v4}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$402(Lcom/samsung/inputmethod/composing/SimeComposingWindow;Landroid/view/View;)Landroid/view/View;

    .line 203
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mParentView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$400(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 204
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->mParentLocation:[I

    add-int v4, v2, v1

    aput v4, v3, v8

    .line 228
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    invoke-static {v3}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$200(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_5

    .line 232
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    invoke-static {v3}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$200(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mParentView:Landroid/view/View;
    invoke-static {v4}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$400(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x53

    iget-object v6, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->mParentLocation:[I

    aget v6, v6, v7

    iget-object v7, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->mParentLocation:[I

    aget v7, v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->showAtLocation(Landroid/view/View;III)V

    .line 244
    :goto_2
    return-void

    .line 195
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v3}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$300(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->mParentLocation:[I

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getLocationInWindow([I)V

    .line 197
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v3}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$300(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v1

    goto :goto_0

    .line 205
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_3

    .line 206
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v4}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$300(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getDummyInputView()Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    move-result-object v4

    #setter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mParentView:Landroid/view/View;
    invoke-static {v3, v4}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$402(Lcom/samsung/inputmethod/composing/SimeComposingWindow;Landroid/view/View;)Landroid/view/View;

    .line 207
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v3}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$300(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 208
    .local v0, anchorLocation:Landroid/graphics/Point;
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v2

    .line 209
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->mParentLocation:[I

    iget v4, v0, Landroid/graphics/Point;->x:I

    aput v4, v3, v7

    .line 210
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->mParentLocation:[I

    add-int v4, v2, v1

    iget v5, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    aput v4, v3, v8

    goto/16 :goto_1

    .line 212
    .end local v0           #anchorLocation:Landroid/graphics/Point;
    :cond_3
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_0

    .line 213
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v4}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$300(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getOneHandContainer()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    move-result-object v4

    #setter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mParentView:Landroid/view/View;
    invoke-static {v3, v4}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$402(Lcom/samsung/inputmethod/composing/SimeComposingWindow;Landroid/view/View;)Landroid/view/View;

    .line 214
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mParentView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$400(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 215
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->mParentLocation:[I

    add-int v4, v2, v1

    aput v4, v3, v8

    goto/16 :goto_1

    .line 219
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v4}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$300(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    #setter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mParentView:Landroid/view/View;
    invoke-static {v3, v4}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$402(Lcom/samsung/inputmethod/composing/SimeComposingWindow;Landroid/view/View;)Landroid/view/View;

    .line 220
    const/4 v2, 0x0

    .line 221
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->mParentLocation:[I

    add-int v4, v2, v1

    aput v4, v3, v8

    goto/16 :goto_1

    .line 240
    :cond_5
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    invoke-static {v3}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$200(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->mParentLocation:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->mParentLocation:[I

    aget v5, v5, v8

    iget-object v6, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    invoke-static {v6}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$200(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->this$0:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    #getter for: Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    invoke-static {v7}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->access$200(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->getHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->update(IIII)V

    goto/16 :goto_2
.end method
