.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;
.super Ljava/lang/Object;
.source "SimeSkbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$1;,
        Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeSkbManager"

.field private static mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;


# instance fields
.field MAX_X:I

.field MAX_Y:I

.field MIN_X:I

.field MIN_Y:I

.field private mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

.field private mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

.field private mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

.field private mDefaultCandidatesContainer:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

.field private mDummyCandView:Lcom/samsung/inputmethod/floating/SimeDummyCandView;

.field private mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

.field private mFloatingAnchor:Landroid/graphics/Point;

.field private mFloatingCandWindow:Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;

.field private mFloatingInputWindow:Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;

.field private mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

.field private mMoveHander:Lcom/samsung/inputmethod/floating/SimeMoveHandler;

.field private mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

.field private mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 2
    .parameter "service"

    .prologue
    const/4 v1, -0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    check-cast p1, Lcom/samsung/inputmethod/SamsungIME;

    .end local p1
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 110
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    .line 111
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    .line 112
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->initFloaitnAnchorLoaction()V

    .line 113
    return-void
.end method

.method public static getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    return-object v0
.end method

.method private initFloaitnAnchorLoaction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 301
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 303
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 306
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 308
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->MAX_X:I

    .line 309
    iput v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->MIN_X:I

    .line 311
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getMoveHandlerHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->MAX_Y:I

    .line 312
    iput v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->MIN_Y:I

    .line 318
    return-void
.end method

.method private onKeyboardTypeChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$SimeSkbManager$KeyboardType:[I

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 134
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->setInputView(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesView(Landroid/view/View;)V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 142
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->initFloaitnAnchorLoaction()V

    .line 145
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->setInputView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyCandView:Lcom/samsung/inputmethod/floating/SimeDummyCandView;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesView(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingInputWindow:Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->setContentView(Landroid/view/View;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingCandWindow:Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->setContentView(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->setInputView(Landroid/view/View;)V

    .line 153
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyCandView:Lcom/samsung/inputmethod/floating/SimeDummyCandView;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesView(Landroid/view/View;)V

    goto :goto_0

    .line 165
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 166
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->setInputView(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesView(Landroid/view/View;)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createCandidateView()Landroid/view/View;
    .locals 6

    .prologue
    .line 226
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 228
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    .line 232
    new-instance v2, Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    .line 234
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->initialize(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/comm/SimeBalloonHint;)V

    .line 239
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDefaultCandidatesContainer:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    .line 242
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    .line 246
    :cond_0
    new-instance v2, Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-direct {v2, v3, v4}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    .line 249
    new-instance v2, Lcom/samsung/inputmethod/floating/SimeDummyCandView;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v2, v3}, Lcom/samsung/inputmethod/floating/SimeDummyCandView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyCandView:Lcom/samsung/inputmethod/floating/SimeDummyCandView;

    .line 250
    new-instance v2, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyCandView:Lcom/samsung/inputmethod/floating/SimeDummyCandView;

    invoke-direct {v2, v3, v4}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingCandWindow:Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;

    .line 251
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyCandView:Lcom/samsung/inputmethod/floating/SimeDummyCandView;

    invoke-virtual {v2, p0}, Lcom/samsung/inputmethod/floating/SimeDummyCandView;->setSkbmanager(Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;)V

    .line 254
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$SimeSkbManager$KeyboardType:[I

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 264
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    .line 267
    .local v0, candView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 257
    .end local v0           #candView:Landroid/view/View;
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    .line 258
    .restart local v0       #candView:Landroid/view/View;
    goto :goto_0

    .line 260
    .end local v0           #candView:Landroid/view/View;
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyCandView:Lcom/samsung/inputmethod/floating/SimeDummyCandView;

    .line 261
    .restart local v0       #candView:Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingCandWindow:Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createInputView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 183
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 188
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030010

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    .line 189
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->initialize(Landroid/inputmethodservice/InputMethodService;Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 192
    new-instance v2, Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v2, v3}, Lcom/samsung/inputmethod/floating/SimeDummyInputView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    .line 193
    new-instance v2, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    invoke-direct {v2, v3, v4}, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingInputWindow:Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;

    .line 194
    new-instance v2, Lcom/samsung/inputmethod/floating/SimeMoveHandler;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    invoke-direct {v2, v3, v4}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mMoveHander:Lcom/samsung/inputmethod/floating/SimeMoveHandler;

    .line 195
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    invoke-virtual {v2, p0}, Lcom/samsung/inputmethod/floating/SimeDummyInputView;->setSkbmanager(Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;)V

    .line 198
    const v2, 0x7f03000b

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    .line 200
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->initialize(Landroid/inputmethodservice/InputMethodService;)V

    .line 203
    new-instance v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    .line 204
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-static {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getInstance(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    .line 207
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$SimeSkbManager$KeyboardType:[I

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 219
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    .line 222
    .local v1, inputView:Landroid/view/View;
    :goto_0
    return-object v1

    .line 209
    .end local v1           #inputView:Landroid/view/View;
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    .line 210
    .restart local v1       #inputView:Landroid/view/View;
    goto :goto_0

    .line 212
    .end local v1           #inputView:Landroid/view/View;
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    .line 213
    .restart local v1       #inputView:Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingInputWindow:Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 216
    .end local v1           #inputView:Landroid/view/View;
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    .line 217
    .restart local v1       #inputView:Landroid/view/View;
    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dismissFloatingCandWindow()V
    .locals 5

    .prologue
    .line 395
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 396
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingCandWindow:Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->dismiss()V

    .line 400
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v1, v3, Landroid/graphics/Point;->x:I

    .line 401
    .local v1, handlerX:I
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v4

    add-int v2, v3, v4

    .line 403
    .local v2, handlerY:I
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mMoveHander:Lcom/samsung/inputmethod/floating/SimeMoveHandler;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mMoveHander:Lcom/samsung/inputmethod/floating/SimeMoveHandler;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->show(II)V

    .line 406
    :cond_0
    return-void
.end method

.method public dismissFloatingInputPanel()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingInputWindow:Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->dismiss()V

    .line 348
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingCandWindow:Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->dismiss()V

    .line 349
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->dismiss()V

    .line 350
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mMoveHander:Lcom/samsung/inputmethod/floating/SimeMoveHandler;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->dismiss()V

    .line 351
    return-void
.end method

.method public getCandBalloon()Lcom/samsung/inputmethod/comm/SimeBalloonHint;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    return-object v0
.end method

.method public getCandManager()Lcom/samsung/inputmethod/candidate/SimeCandManager;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    return-object v0
.end method

.method public getComposingWindow()Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    return-object v0
.end method

.method public getDefaultCandContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDefaultCandidatesContainer:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    return-object v0
.end method

.method public getDummyInputView()Lcom/samsung/inputmethod/floating/SimeDummyInputView;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    return-object v0
.end method

.method public getFloatingAnchorLocation()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    return-object v0
.end method

.method public getFloatingCandWindow()Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingCandWindow:Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;

    return-object v0
.end method

.method public getFloatingInputWindow()Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingInputWindow:Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;

    return-object v0
.end method

.method public getHWManager()Lcom/samsung/inputmethod/handwriting/SimeHWManager;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    return-object v0
.end method

.method public getMiniPopupWidnow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    return-object v0
.end method

.method public getNormalInputView()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    return-object v0
.end method

.method public getOneHandInputView()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    return-object v0
.end method

.method public initAndShowFloatingInputPanel()V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->initFloaitnAnchorLoaction()V

    .line 342
    return-void
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 2
    .parameter "inputView"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 177
    .local v0, vp:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 178
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #vp:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 180
    :cond_0
    return-void
.end method

.method public setKeyboardType(Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;)V
    .locals 1
    .parameter "newType"

    .prologue
    .line 116
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v0, p1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    sput-object p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    .line 120
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->onKeyboardTypeChange()V

    goto :goto_0
.end method

.method public showFloatingCandWindow()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 354
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 355
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v2, v4, Landroid/graphics/Point;->x:I

    .line 356
    .local v2, locationX:I
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v5

    add-int v3, v4, v5

    .line 358
    .local v3, locationY:I
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingCandWindow:Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->show(II)V

    .line 365
    const/4 v0, 0x0

    .line 367
    .local v0, candHeight:I
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 368
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCandHeight()I

    move-result v0

    .line 375
    :goto_0
    add-int/2addr v3, v0

    .line 382
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mMoveHander:Lcom/samsung/inputmethod/floating/SimeMoveHandler;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->show(II)V

    .line 385
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getMoveHandlerHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getNotificationBarHeight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_0

    .line 386
    invoke-virtual {p0, v7, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->updateFloatingPanel(II)V

    .line 389
    :cond_0
    return-void

    .line 370
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v0

    goto :goto_0
.end method

.method public showFloatingInputPanel()V
    .locals 6

    .prologue
    .line 321
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 323
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_0

    .line 328
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingInputWindow:Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->show(II)V

    .line 331
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v1, v3, Landroid/graphics/Point;->x:I

    .line 332
    .local v1, handlerX:I
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v4

    add-int v2, v3, v4

    .line 334
    .local v2, handlerY:I
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mMoveHander:Lcom/samsung/inputmethod/floating/SimeMoveHandler;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->show(II)V

    .line 336
    .end local v1           #handlerX:I
    .end local v2           #handlerY:I
    :cond_0
    return-void
.end method

.method public switchOneHandOrNormal()V
    .locals 2

    .prologue
    .line 275
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v0, v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isOneHandModeEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSkbInOneHandMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->setKeyboardType(Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;)V

    .line 283
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getRecentOneHandMode()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    if-ne v0, v1, :cond_2

    .line 287
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->changeRightHandMode()V

    goto :goto_0

    .line 288
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getRecentOneHandMode()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->LeftHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    if-ne v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->changeLeftHandMode()V

    goto :goto_0

    .line 295
    :cond_3
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->setKeyboardType(Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;)V

    goto :goto_0
.end method

.method public updateFloatingPanel(II)V
    .locals 7
    .parameter "moveX"
    .parameter "moveY"

    .prologue
    const/4 v6, 0x0

    .line 416
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 422
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 423
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, p2

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 426
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-gez v4, :cond_0

    .line 427
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iput v6, v4, Landroid/graphics/Point;->x:I

    .line 429
    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-gez v4, :cond_1

    .line 430
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iput v6, v4, Landroid/graphics/Point;->y:I

    .line 432
    :cond_1
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 433
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 435
    :cond_2
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingCandWindow:Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 436
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getMoveHandlerHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getNotificationBarHeight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_3

    .line 437
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getMoveHandlerHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getNotificationBarHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 443
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v2, v4, Landroid/graphics/Point;->x:I

    .line 444
    .local v2, locationX:I
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v3, v4, Landroid/graphics/Point;->y:I

    .line 446
    .local v3, locationY:I
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingInputWindow:Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->show(II)V

    .line 448
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 450
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingCandWindow:Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 451
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingCandWindow:Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->show(II)V

    .line 452
    const/4 v0, 0x0

    .line 454
    .local v0, candHeight:I
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 455
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCandHeight()I

    move-result v0

    .line 461
    :goto_1
    add-int/2addr v3, v0

    .line 464
    .end local v0           #candHeight:I
    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 465
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->showCompsingWindow(II)V

    .line 468
    :cond_5
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mMoveHander:Lcom/samsung/inputmethod/floating/SimeMoveHandler;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->show(II)V

    .line 469
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->show(II)V

    .line 470
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpand(II)V

    .line 471
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->showSymbolTable(II)V

    .line 472
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updatePopupSymbolsLocation(II)V

    .line 473
    return-void

    .line 439
    .end local v2           #locationX:I
    .end local v3           #locationY:I
    :cond_6
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getMoveHandlerHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getNotificationBarHeight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_3

    .line 440
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getMoveHandlerHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getNotificationBarHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 457
    .restart local v0       #candHeight:I
    .restart local v2       #locationX:I
    .restart local v3       #locationY:I
    :cond_7
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v0

    goto :goto_1
.end method
