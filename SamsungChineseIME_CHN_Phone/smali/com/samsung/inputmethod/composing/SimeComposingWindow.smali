.class public Lcom/samsung/inputmethod/composing/SimeComposingWindow;
.super Landroid/widget/PopupWindow;
.source "SimeComposingWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/composing/SimeComposingWindow$1;,
        Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ComposingWindow"


# instance fields
.field private mComposingView:Lcom/samsung/inputmethod/composing/SimeCompView;

.field private mComposingViewContainer:Landroid/widget/LinearLayout;

.field private mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

.field private mCompsingWindowTimer:Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;

.field private mParentView:Landroid/view/View;

.field private mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .parameter "context"
    .parameter "parentView"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 77
    check-cast p1, Lcom/samsung/inputmethod/SamsungIME;

    .end local p1
    iput-object p1, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    .line 79
    iput-object p0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    .line 81
    iput-object p2, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mParentView:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mComposingViewContainer:Landroid/widget/LinearLayout;

    .line 89
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mComposingViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/composing/SimeCompView;

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mComposingView:Lcom/samsung/inputmethod/composing/SimeCompView;

    .line 91
    new-instance v0, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;

    invoke-direct {v0, p0, v2}, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;-><init>(Lcom/samsung/inputmethod/composing/SimeComposingWindow;Lcom/samsung/inputmethod/composing/SimeComposingWindow$1;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindowTimer:Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;

    .line 93
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->setClippingEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->setInputMethodMode(I)V

    .line 96
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mComposingViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->setContentView(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->setLayoutInScreenEnabled(Z)V

    .line 98
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    const/16 v1, 0x7dc

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->setWindowLayoutType(I)V

    .line 102
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mComposingViewContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Lcom/samsung/inputmethod/SamsungIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/composing/SimeComposingWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/inputmethod/composing/SimeComposingWindow;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mParentView:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public cancelShowing()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindowTimer:Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->cancelShowing()V

    .line 145
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mComposingView:Lcom/samsung/inputmethod/composing/SimeCompView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeCompView;->reset()V

    .line 146
    return-void
.end method

.method public showCompsingWindow()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mComposingView:Lcom/samsung/inputmethod/composing/SimeCompView;

    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/composing/SimeCompView;->setDecodingInfo(Lcom/samsung/inputmethod/decoder/SimeDecManager;Lcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mComposingView:Lcom/samsung/inputmethod/composing/SimeCompView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/composing/SimeCompView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mComposingView:Lcom/samsung/inputmethod/composing/SimeCompView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeCompView;->invalidate()V

    .line 127
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindowTimer:Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow$ComposingWindowTimer;->postShowFloatingWindow()V

    .line 128
    return-void
.end method

.method public showCompsingWindow(II)V
    .locals 3
    .parameter "locationX"
    .parameter "locationY"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getDummyInputView()Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mParentView:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mParentView:Landroid/view/View;

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->showAtLocation(Landroid/view/View;III)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->update(IIII)V

    goto :goto_0
.end method

.method public updateComposingViewDisplay()V
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 105
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mComposingViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 108
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mComposingView:Lcom/samsung/inputmethod/composing/SimeCompView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeCompView;->requestLayout()V

    .line 110
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mComposingViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->setWidth(I)V

    .line 111
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mComposingViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->setHeight(I)V

    .line 112
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->update(II)V

    .line 114
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->mComposingView:Lcom/samsung/inputmethod/composing/SimeCompView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeCompView;->invalidate()V

    .line 115
    return-void
.end method
