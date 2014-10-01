.class public Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
.super Landroid/widget/RelativeLayout;
.source "SimeCandHorContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/samsung/inputmethod/candidate/ArrowUpdater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$1;,
        Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;
    }
.end annotation


# static fields
.field private static ANIMATION_TIME:I = 0x0

.field private static ARROW_ALPHA_DISABLED:I = 0x0

.field private static ARROW_ALPHA_ENABLED:I = 0x0

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CandidatesContainer"


# instance fields
.field private mCandDirectionGestureHandle:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;

.field private mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

.field private mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

.field private mCurrentArrowShowType:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

.field private mCurrentPage:I

.field private mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

.field private mDownArrowBtn:Landroid/widget/ImageButton;

.field private mFlipper:Landroid/widget/ViewFlipper;

.field private mGestureDetectorCandidates:Landroid/view/GestureDetector;

.field private mGestureListenerCandidates:Lcom/samsung/inputmethod/comm/SimeGestureListener;

.field private mInAnimInUse:Landroid/view/animation/Animation;

.field private mInAnimPushDown:Landroid/view/animation/Animation;

.field private mInAnimPushLeft:Landroid/view/animation/Animation;

.field private mInAnimPushRight:Landroid/view/animation/Animation;

.field private mInAnimPushUp:Landroid/view/animation/Animation;

.field private mLeftArrowBtn:Landroid/widget/ImageButton;

.field private mOutAnimInUse:Landroid/view/animation/Animation;

.field private mOutAnimPushDown:Landroid/view/animation/Animation;

.field private mOutAnimPushLeft:Landroid/view/animation/Animation;

.field private mOutAnimPushRight:Landroid/view/animation/Animation;

.field private mOutAnimPushUp:Landroid/view/animation/Animation;

.field private mRightArrowBtn:Landroid/widget/ImageButton;

.field private mUpArrowBtn:Landroid/widget/ImageButton;

.field private xOffsetForFlipper:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0xff

    sput v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ARROW_ALPHA_ENABLED:I

    .line 89
    const/16 v0, 0x40

    sput v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ARROW_ALPHA_DISABLED:I

    .line 94
    const/16 v0, 0xc8

    sput v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    .line 223
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeGestureListener;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/comm/SimeGestureListener;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mGestureListenerCandidates:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    .line 224
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$1;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandDirectionGestureHandle:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;

    .line 225
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mGestureListenerCandidates:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandDirectionGestureHandle:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/comm/SimeGestureListener;->setDirectionGestureHandle(Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;)V

    .line 226
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mGestureListenerCandidates:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mGestureDetectorCandidates:Landroid/view/GestureDetector;

    .line 229
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)Lcom/samsung/inputmethod/candidate/SimeCandManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)Lcom/samsung/inputmethod/candidate/SimeCandViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    return-object v0
.end method

.method private createAnimation(FFFFFFJ)Landroid/view/animation/Animation;
    .locals 13
    .parameter "xFrom"
    .parameter "xTo"
    .parameter "yFrom"
    .parameter "yTo"
    .parameter "alphaFrom"
    .parameter "alphaTo"
    .parameter "duration"

    .prologue
    .line 745
    new-instance v12, Landroid/view/animation/AnimationSet;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v12, v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 746
    .local v12, animSet:Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x1

    move v4, p1

    move v6, p2

    move/from16 v8, p3

    move/from16 v10, p4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 750
    .local v2, trans:Landroid/view/animation/Animation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {v11, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 751
    .local v11, alpha:Landroid/view/animation/Animation;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 752
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 753
    move-wide/from16 v0, p7

    invoke-virtual {v12, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 754
    return-object v12
.end method

.method private enableArrow(Landroid/widget/ImageButton;Z)V
    .locals 1
    .parameter "arrowBtn"
    .parameter "enabled"

    .prologue
    .line 645
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 646
    if-eqz p2, :cond_0

    .line 647
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 657
    :goto_0
    return-void

    .line 650
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private showArrow(Landroid/widget/ImageButton;Z)V
    .locals 1
    .parameter "arrowBtn"
    .parameter "show"

    .prologue
    .line 660
    if-eqz p2, :cond_0

    .line 661
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 664
    :goto_0
    return-void

    .line 663
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private startAnimation()V
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 759
    return-void
.end method

.method private stopAnimation()V
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 763
    return-void
.end method


# virtual methods
.method public activeCurseBackward()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 461
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v2, :cond_1

    .line 462
    :cond_0
    const/4 v1, 0x0

    .line 472
    :goto_0
    return v1

    .line 465
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 467
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->activeCurseBackward()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 468
    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->invalidate()V

    goto :goto_0

    .line 472
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageBackward(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public activeCurseForward()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 477
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v2, :cond_1

    .line 478
    :cond_0
    const/4 v1, 0x0

    .line 488
    :goto_0
    return v1

    .line 481
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 483
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->activeCursorForward()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 484
    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->invalidate()V

    goto :goto_0

    .line 488
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageForward(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public enableActiveHighlight(Z)V
    .locals 2
    .parameter "isActiveHighlight"

    .prologue
    .line 378
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 381
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveHighlight(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->invalidate()V

    .line 385
    :cond_0
    return-void
.end method

.method public enableFootNoteDisplay(ZZ)V
    .locals 5
    .parameter "isFootNoteDisplay"
    .parameter "bDrawDirectly"

    .prologue
    .line 390
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 391
    .local v2, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setFootNoteDisplay(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->invalidate()V

    .line 395
    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 396
    .local v0, child:I
    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v1, v4, 0x2

    .line 397
    .local v1, childNext:I
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v4, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 398
    .local v3, cvNext:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setFootNoteDisplay(Z)Z

    .line 403
    return-void
.end method

.method public enableFootNoteHighlight(ZZ)V
    .locals 5
    .parameter "isHighlightColor"
    .parameter "bDrawDirectly"

    .prologue
    .line 409
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 410
    .local v2, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setFootNoteHighlight(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->invalidate()V

    .line 414
    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 415
    .local v0, child:I
    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v1, v4, 0x2

    .line 416
    .local v1, childNext:I
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v4, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 417
    .local v3, cvNext:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setFootNoteHighlight(Z)Z

    .line 423
    return-void
.end method

.method public getActiveCandiatePos()I
    .locals 2

    .prologue
    .line 605
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 607
    :goto_0
    return v1

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 607
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getActiveCandiatePosGlobal()I

    move-result v1

    goto :goto_0
.end method

.method public getArrowShowType()Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentArrowShowType:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    return-object v0
.end method

.method public getArrowWidth()F
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    return v0
.end method

.method public initialize(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Lcom/samsung/inputmethod/candidate/SimeCandManager;)V
    .locals 4
    .parameter "cvListener"
    .parameter "balloonHint"
    .parameter "candMgr"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    .line 234
    iput-object p3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    .line 236
    const v2, 0x7f0c0001

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    .line 237
    const v2, 0x7f0c0005

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    .line 238
    const v2, 0x7f0c0004

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    .line 239
    const v2, 0x7f0c0003

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    .line 241
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 244
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 246
    const v2, 0x7f0c0006

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    .line 247
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setMeasureAllChildren(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->invalidate()V

    .line 250
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->requestLayout()V

    .line 252
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 254
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mGestureDetectorCandidates:Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    invoke-virtual {v0, p0, p2, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->initialize(Lcom/samsung/inputmethod/candidate/ArrowUpdater;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Landroid/view/GestureDetector;Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v0           #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    :cond_0
    return-void
.end method

.method public isFirstPage()Z
    .locals 2

    .prologue
    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, bRet:Z
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    if-nez v1, :cond_0

    .line 495
    const/4 v0, 0x1

    .line 497
    :cond_0
    return v0
.end method

.method public loadAnimation(ZZ)V
    .locals 13
    .parameter "animLeftRight"
    .parameter "forward"

    .prologue
    const/high16 v12, -0x4080

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 695
    if-eqz p1, :cond_3

    .line 696
    if-eqz p2, :cond_1

    .line 697
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushLeft:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 698
    sget v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    int-to-long v7, v0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushLeft:Landroid/view/animation/Animation;

    .line 700
    sget v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v12

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v2

    invoke-direct/range {v3 .. v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimPushLeft:Landroid/view/animation/Animation;

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushLeft:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    .line 704
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimPushLeft:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimInUse:Landroid/view/animation/Animation;

    .line 737
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 739
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 740
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimInUse:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 741
    return-void

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushRight:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 707
    sget v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v12

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v1

    invoke-direct/range {v3 .. v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushRight:Landroid/view/animation/Animation;

    .line 709
    sget v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v2

    invoke-direct/range {v3 .. v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimPushRight:Landroid/view/animation/Animation;

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushRight:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    .line 713
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimPushRight:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimInUse:Landroid/view/animation/Animation;

    goto :goto_0

    .line 716
    :cond_3
    if-eqz p2, :cond_5

    .line 717
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushUp:Landroid/view/animation/Animation;

    if-nez v0, :cond_4

    .line 718
    sget v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v6, v1

    move v7, v2

    move v8, v2

    move v9, v1

    invoke-direct/range {v3 .. v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushUp:Landroid/view/animation/Animation;

    .line 720
    sget v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v12

    move v8, v1

    move v9, v2

    invoke-direct/range {v3 .. v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimPushUp:Landroid/view/animation/Animation;

    .line 723
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushUp:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    .line 724
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimPushUp:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimInUse:Landroid/view/animation/Animation;

    goto :goto_0

    .line 726
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushDown:Landroid/view/animation/Animation;

    if-nez v0, :cond_6

    .line 727
    sget v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v6, v12

    move v7, v2

    move v8, v2

    move v9, v1

    invoke-direct/range {v3 .. v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushDown:Landroid/view/animation/Animation;

    .line 729
    sget v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v1

    move v8, v1

    move v9, v2

    invoke-direct/range {v3 .. v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimPushDown:Landroid/view/animation/Animation;

    .line 732
    :cond_6
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushDown:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    .line 733
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimPushDown:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimInUse:Landroid/view/animation/Animation;

    goto/16 :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 775
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 778
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    .line 437
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 438
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    .line 439
    .local v2, measuredWidth:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getPaddingTop()I

    move-result v1

    .line 440
    .local v1, measuredHeight:I
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v3

    add-int/2addr v1, v3

    .line 442
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_2

    .line 443
    int-to-float v3, v2

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v2, v3

    .line 449
    :cond_0
    :goto_0
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 451
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 453
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 455
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    .line 456
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->xOffsetForFlipper:I

    .line 458
    :cond_1
    return-void

    .line 444
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_0

    .line 445
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v2

    .line 446
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCandHeight()I

    move-result v4

    add-int v1, v3, v4

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 667
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 668
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    invoke-interface {v0}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onToRightGesture()Z

    .line 680
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    invoke-interface {v0}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onToLeftGesture()Z

    goto :goto_0

    .line 673
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_3

    .line 675
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    invoke-interface {v0}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onToBottomGesture()Z

    goto :goto_0

    .line 676
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    invoke-interface {v0}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onToTopGesture()Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 688
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->xOffsetForFlipper:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 689
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 690
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->onTouchEventReal(Landroid/view/MotionEvent;)Z

    .line 691
    const/4 v1, 0x1

    return v1
.end method

.method public pageBackward(Z)Z
    .locals 9
    .parameter "animLeftRight"

    .prologue
    .line 502
    const/4 v1, 0x1

    .line 504
    .local v1, bRet:Z
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v6, :cond_1

    .line 505
    const/4 v1, 0x0

    .line 544
    :cond_0
    :goto_0
    return v1

    .line 506
    :cond_1
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    if-gtz v6, :cond_3

    .line 507
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 509
    :cond_3
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    .line 510
    .local v2, child:I
    add-int/lit8 v6, v2, 0x1

    rem-int/lit8 v3, v6, 0x2

    .line 511
    .local v3, childNext:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 512
    .local v4, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6, v3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 515
    .local v5, cvNext:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    .line 516
    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getActiveCandiatePosInPage()I

    move-result v0

    .line 517
    .local v0, activeCandInPage:I
    if-eqz p1, :cond_5

    .line 522
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_4

    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v6, v7, :cond_6

    .line 524
    :cond_4
    const/4 v1, 0x0

    .line 535
    :cond_5
    :goto_1
    if-eqz v1, :cond_0

    .line 536
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    invoke-virtual {v5, v6, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->showPage(II)V

    .line 537
    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->loadAnimation(ZZ)V

    .line 538
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->startAnimation()V

    .line 540
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->updateArrowStatus()V

    goto :goto_0

    .line 529
    :cond_6
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v6

    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v6

    iget v8, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    invoke-virtual {v6, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, v7, v6

    add-int/lit8 v0, v6, -0x1

    goto :goto_1
.end method

.method public pageForward(Z)Z
    .locals 8
    .parameter "animLeftRight"

    .prologue
    .line 549
    const/4 v1, 0x1

    .line 552
    .local v1, bRet:Z
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v6, :cond_1

    .line 553
    const/4 v1, 0x0

    .line 601
    :cond_0
    :goto_0
    return v1

    .line 554
    :cond_1
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 555
    const/4 v1, 0x0

    goto :goto_0

    .line 563
    :cond_2
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->isCandFetchOver()Z

    move-result v6

    if-nez v6, :cond_5

    .line 564
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->preparePageCands()Z

    move-result v6

    if-nez v6, :cond_3

    .line 566
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->preparePage(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 567
    const/4 v1, 0x0

    .line 580
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 581
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    .line 582
    .local v2, child:I
    add-int/lit8 v6, v2, 0x1

    rem-int/lit8 v3, v6, 0x2

    .line 583
    .local v3, childNext:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 584
    .local v4, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getActiveCandiatePosInPage()I

    move-result v0

    .line 588
    .local v0, activeCandInPage:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6, v3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 589
    .local v5, cvNext:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    .line 590
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 592
    :cond_4
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    invoke-virtual {v5, v6, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->showPage(II)V

    .line 593
    const/4 v6, 0x1

    invoke-virtual {p0, p1, v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->loadAnimation(ZZ)V

    .line 594
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->startAnimation()V

    .line 596
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->updateArrowStatus()V

    goto :goto_0

    .line 573
    .end local v0           #activeCandInPage:I
    .end local v2           #child:I
    .end local v3           #childNext:I
    .end local v4           #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    .end local v5           #cvNext:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    :cond_5
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->preparePage(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 574
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 636
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    .line 637
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 638
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 639
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->reset()V

    .line 637
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 642
    .end local v0           #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    :cond_0
    return-void
.end method

.method public setActiveCand(I)Z
    .locals 2
    .parameter "activeCandIndex"

    .prologue
    .line 271
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 272
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveCurse(I)Z

    move-result v1

    return v1
.end method

.method public setCandidateViewListener(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V
    .locals 3
    .parameter "cvListener"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    .line 261
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 263
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setCandidateViewListener(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    .end local v0           #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    :cond_0
    return-void
.end method

.method public showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V
    .locals 5
    .parameter "candsInfo"
    .parameter "arrowType"

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 280
    if-eqz p1, :cond_6

    .line 281
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 282
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    .line 283
    iput-object p2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentArrowShowType:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    .line 284
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->isCandidatesListEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 286
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 287
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 288
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 308
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 309
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 310
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setCandidatesInfo(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 290
    .end local v0           #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    .end local v1           #i:I
    :cond_1
    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-ne p2, v2, :cond_2

    .line 291
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 292
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 293
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 294
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_0

    .line 295
    :cond_2
    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->Down:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-eq p2, v2, :cond_3

    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-ne p2, v2, :cond_4

    .line 296
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 297
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 298
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 299
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_0

    .line 300
    :cond_4
    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-ne p2, v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 302
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 303
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 304
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 312
    .restart local v1       #i:I
    :cond_5
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->stopAnimation()V

    .line 314
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 315
    .restart local v0       #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDefaultActiveIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->showPage(II)V

    .line 317
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->updateArrowStatus()V

    .line 318
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->invalidate()V

    .line 320
    .end local v0           #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    .end local v1           #i:I
    :cond_6
    return-void
.end method

.method public showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V
    .locals 5
    .parameter "candsInfo"
    .parameter "arrowType"
    .parameter "isActiveHighlight"

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 326
    if-eqz p1, :cond_6

    .line 327
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 328
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    .line 329
    iput-object p2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentArrowShowType:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    .line 331
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->isCandidatesListEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 333
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 334
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 335
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 355
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 356
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 357
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setCandidatesInfo(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 337
    .end local v0           #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    .end local v1           #i:I
    :cond_1
    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-ne p2, v2, :cond_2

    .line 338
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 339
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 340
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 341
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_0

    .line 342
    :cond_2
    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->Down:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-eq p2, v2, :cond_3

    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-ne p2, v2, :cond_4

    .line 343
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 344
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 345
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 346
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_0

    .line 347
    :cond_4
    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-ne p2, v2, :cond_0

    .line 348
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 349
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 350
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 351
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 359
    .restart local v1       #i:I
    :cond_5
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->stopAnimation()V

    .line 361
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 363
    .restart local v0       #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0, p3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveHighlight(Z)Z

    .line 366
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDefaultActiveIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->showPage(II)V

    .line 368
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->updateArrowStatus()V

    .line 369
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->invalidate()V

    .line 371
    .end local v0           #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    .end local v1           #i:I
    :cond_6
    return-void
.end method

.method public updateArrowStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 613
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CANDIDATE_INDICATOR_SHOW:Z

    if-nez v2, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    if-ltz v2, :cond_0

    .line 616
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->pageForwardable(I)Z

    move-result v1

    .line 617
    .local v1, forwardEnabled:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->pageBackwardable(I)Z

    move-result v0

    .line 619
    .local v0, backwardEnabled:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentArrowShowType:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    sget-object v3, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentArrowShowType:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    sget-object v3, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-ne v2, v3, :cond_0

    .line 621
    :cond_2
    if-eqz v0, :cond_3

    .line 622
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableArrow(Landroid/widget/ImageButton;Z)V

    .line 626
    :goto_1
    if-eqz v1, :cond_4

    .line 627
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_0

    .line 624
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_1

    .line 629
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_0
.end method
