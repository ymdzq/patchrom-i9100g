.class public Lcom/samsung/inputmethod/candidate/SimeCandHorView;
.super Landroid/view/View;
.source "SimeCandHorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;,
        Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static MIN_ITEM_WIDTH:F = 0.0f

.field private static final SUSPENSION_POINTS:Ljava/lang/String; = "..."

.field private static final TAG:Ljava/lang/String; = "SimeCandHorView"


# instance fields
.field private mActiveCandInPage:I

.field private mActiveCandidateColor:I

.field private mActiveCellDrawable:Landroid/graphics/drawable/Drawable;

.field private mActiveCellRect:Landroid/graphics/RectF;

.field private mActiveFootNoteColor:I

.field private mArrowUpdater:Lcom/samsung/inputmethod/candidate/ArrowUpdater;

.field private mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

.field private mCandRects:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidateMargin:F

.field private mCandidateMarginExtra:F

.field private mCandidateSeperatorColor:I

.field private mCandidateSeperatorWidth:I

.field private mCandidateTextSize:I

.field private mCandidatesPaint:Landroid/graphics/Paint;

.field private mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

.field private mContentHeight:I

.field private mContentWidth:I

.field private mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

.field private mDimFootNoteColor:I

.field private mEnableActiveHighlight:Z

.field private mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

.field private mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

.field private mFootnoteHighlight:Z

.field private mFootnotePaint:Landroid/graphics/Paint;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHintPositionToInputView:[I

.field private mImeActiveCandidateColor:I

.field private mImeCandidateColor:I

.field private mImeCandidateTextSize:I

.field private mLocationTmp:[I

.field private mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

.field private mNormalCandidateColor:I

.field private mPageNo:I

.field private mPageNoCalculated:I

.field private mPhonebookEntryDrawable:Landroid/graphics/drawable/Drawable;

.field private mPressCandidateColor:I

.field private mRecommendedCandidateColor:I

.field private mRecommendedCandidateTextSize:I

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeperatorPaint:Landroid/graphics/Paint;

.field private mShowFootnote:Z

.field private mSuspensionPointsWidth:F

.field private mTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;

.field private mUdbPhraseDrawable:Landroid/graphics/drawable/Drawable;

.field private mUpdateArrowStatusWhenDraw:Z

.field private volatile mWaitForTouchUp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 288
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    iput-boolean v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mShowFootnote:Z

    .line 88
    iput-boolean v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnoteHighlight:Z

    .line 98
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mHintPositionToInputView:[I

    .line 121
    iput-boolean v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUpdateArrowStatusWhenDraw:Z

    .line 138
    iput-boolean v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mEnableActiveHighlight:Z

    .line 143
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNoCalculated:I

    .line 273
    iput-boolean v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    .line 275
    new-instance v2, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;

    .line 284
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLocationTmp:[I

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 292
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 293
    .local v0, conf:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v4, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v5, :cond_1

    .line 295
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mShowFootnote:Z

    .line 298
    :cond_1
    const v2, 0x7f020129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUdbPhraseDrawable:Landroid/graphics/drawable/Drawable;

    .line 300
    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPhonebookEntryDrawable:Landroid/graphics/drawable/Drawable;

    .line 302
    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellDrawable:Landroid/graphics/drawable/Drawable;

    .line 304
    const v2, 0x7f020140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 305
    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateMargin:F

    .line 309
    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeCandidateTextSize:I

    .line 311
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeCandidateTextSize:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mRecommendedCandidateTextSize:I

    .line 312
    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeCandidateColor:I

    .line 313
    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mRecommendedCandidateColor:I

    .line 314
    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeActiveCandidateColor:I

    .line 315
    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPressCandidateColor:I

    .line 316
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeCandidateColor:I

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mNormalCandidateColor:I

    .line 317
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeActiveCandidateColor:I

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandidateColor:I

    .line 319
    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateSeperatorColor:I

    .line 320
    const v2, 0x7f0a0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateSeperatorWidth:I

    .line 323
    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mDimFootNoteColor:I

    .line 324
    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveFootNoteColor:I

    .line 327
    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sput v2, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->MIN_ITEM_WIDTH:F

    .line 329
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    .line 330
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 332
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    .line 333
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 335
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveFootNoteColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellRect:Landroid/graphics/RectF;

    .line 338
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    .line 340
    new-instance v2, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-direct {v2, p0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandHorView;Lcom/samsung/inputmethod/candidate/SimeCandHorView;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    .line 342
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeperatorPaint:Landroid/graphics/Paint;

    .line 343
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeperatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 344
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeperatorPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateSeperatorColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 345
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeperatorPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateSeperatorWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 346
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/inputmethod/candidate/SimeCandHorView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)Lcom/samsung/inputmethod/candidate/SimeCandInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)Lcom/samsung/inputmethod/candidate/SimeCandViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    return-object v0
.end method

.method private calculatePage(I)Z
    .locals 17
    .parameter "pageNo"

    .prologue
    .line 586
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNoCalculated:I

    move/from16 v0, p1

    if-ne v0, v15, :cond_0

    const/4 v15, 0x1

    .line 661
    :goto_0
    return v15

    .line 588
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingLeft:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingRight:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingTop:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingBottom:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentHeight:I

    .line 591
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    if-lez v15, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentHeight:I

    if-gtz v15, :cond_2

    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 594
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v15}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    .line 595
    .local v2, candSize:I
    if-gtz v2, :cond_3

    const/4 v15, 0x0

    goto :goto_0

    .line 599
    :cond_3
    const/4 v10, 0x0

    .line 601
    .local v10, onlyExtraMargin:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v15}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    add-int/lit8 v4, v15, -0x1

    .line 603
    .local v4, fromPage:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v15}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    add-int/lit8 v16, p1, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_4

    .line 604
    const/4 v10, 0x1

    .line 605
    move/from16 v4, p1

    .line 609
    :cond_4
    move v11, v4

    .local v11, p:I
    :goto_1
    move/from16 v0, p1

    if-gt v11, v0, :cond_b

    .line 611
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v15}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 612
    .local v13, pStart:I
    const/4 v12, 0x0

    .line 613
    .local v12, pSize:I
    const/4 v3, 0x0

    .line 614
    .local v3, charNum:I
    const/4 v8, 0x0

    .line 617
    .local v8, lastItemWidth:F
    const/4 v14, 0x0

    .line 619
    .local v14, xPos:F
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    int-to-float v15, v15

    cmpg-float v15, v14, v15

    if-gez v15, :cond_7

    add-int v15, v13, v12

    if-ge v15, v2, :cond_7

    .line 620
    add-int v5, v13, v12

    .line 622
    .local v5, itemPos:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v15, v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v6

    .line 623
    .local v6, itemStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 624
    .local v7, itemWidth:F
    sget v15, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->MIN_ITEM_WIDTH:F

    cmpg-float v15, v7, v15

    if-gez v15, :cond_5

    sget v7, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->MIN_ITEM_WIDTH:F

    .line 626
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateMargin:F

    const/high16 v16, 0x4000

    mul-float v15, v15, v16

    add-float/2addr v7, v15

    .line 627
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateSeperatorWidth:I

    int-to-float v15, v15

    add-float/2addr v7, v15

    .line 628
    add-float v15, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-lez v15, :cond_6

    if-nez v12, :cond_7

    .line 629
    :cond_6
    add-float/2addr v14, v7

    .line 630
    move v8, v7

    .line 631
    add-int/lit8 v12, v12, 0x1

    .line 632
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v3, v15

    .line 636
    goto :goto_2

    .line 637
    .end local v5           #itemPos:I
    .end local v6           #itemStr:Ljava/lang/String;
    .end local v7           #itemWidth:F
    :cond_7
    if-nez v10, :cond_8

    .line 640
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v15}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v15

    add-int v16, v13, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 641
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v15}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCnToPage()Ljava/util/Vector;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v15}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCnToPage()Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_8
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    int-to-float v15, v15

    sub-float/2addr v15, v14

    int-to-float v0, v12

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x4000

    div-float v9, v15, v16

    .line 646
    .local v9, marginExtra:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    int-to-float v15, v15

    sub-float/2addr v15, v14

    cmpl-float v15, v15, v8

    if-lez v15, :cond_a

    .line 652
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateMarginExtra:F

    cmpg-float v15, v15, v9

    if-gtz v15, :cond_9

    .line 653
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateMarginExtra:F

    .line 658
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateMarginExtra:F

    .line 609
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 655
    :cond_a
    const/4 v15, 0x1

    if-ne v12, v15, :cond_9

    .line 656
    const/4 v9, 0x0

    goto :goto_3

    .line 660
    .end local v3           #charNum:I
    .end local v8           #lastItemWidth:F
    .end local v9           #marginExtra:F
    .end local v12           #pSize:I
    .end local v13           #pStart:I
    .end local v14           #xPos:F
    :cond_b
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNoCalculated:I

    .line 661
    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method private drawVerticalSeparator(Landroid/graphics/Canvas;F)F
    .locals 6
    .parameter "canvas"
    .parameter "xPos"

    .prologue
    .line 854
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v1, p2

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingTop:I

    float-to-int v3, p2

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 857
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 858
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private drawVerticalSeparatorLine(Landroid/graphics/Canvas;F)F
    .locals 6
    .parameter "canvas"
    .parameter "xPos"

    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3e80

    mul-float v2, v0, v1

    .line 863
    .local v2, startY:F
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f40

    mul-float v4, v0, v1

    .line 865
    .local v4, stopY:F
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeperatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 867
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateSeperatorWidth:I

    int-to-float v0, v0

    return v0
.end method

.method private getLimitedCandidateForDrawing(Ljava/lang/String;F)Ljava/lang/String;
    .locals 5
    .parameter "rawCandidate"
    .parameter "widthToDraw"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 841
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 842
    .local v0, subLen:I
    if-gt v0, v4, :cond_0

    .line 847
    .end local p1
    :goto_0
    return-object p1

    .line 844
    .restart local p1
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 845
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    .line 846
    .local v1, width:F
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSuspensionPointsWidth:F

    add-float/2addr v2, v1

    cmpg-float v2, v2, p2

    if-lez v2, :cond_1

    if-lt v4, v0, :cond_0

    .line 847
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private mapToItemInPage(II)I
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, -0x1

    .line 874
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->pageReady(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNoCalculated:I

    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 906
    :cond_0
    :goto_0
    return v0

    .line 881
    :cond_1
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v6

    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 882
    .local v4, pageStart:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v6

    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v3, v6, v4

    .line 883
    .local v3, pageSize:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v6, v3, :cond_0

    .line 888
    const v2, 0x7f7fffff

    .line 889
    .local v2, nearestDis:F
    const/4 v1, -0x1

    .line 890
    .local v1, nearest:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 891
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    .line 892
    .local v5, r:Landroid/graphics/RectF;
    iget v6, v5, Landroid/graphics/RectF;->left:F

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    iget v6, v5, Landroid/graphics/RectF;->right:F

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iget v6, v5, Landroid/graphics/RectF;->top:F

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 890
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v5           #r:Landroid/graphics/RectF;
    :cond_3
    move v0, v1

    .line 906
    goto :goto_0
.end method

.method private onSizeChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 540
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    .line 541
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentHeight:I

    .line 557
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v1, :cond_0

    .line 558
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeCandidateTextSize:I

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateTextSize:I

    .line 559
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 560
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    .line 561
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSuspensionPointsWidth:F

    .line 568
    :goto_0
    const/4 v0, 0x1

    .line 569
    .local v0, textSize:I
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 570
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

    .line 571
    :goto_1
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentHeight:I

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    .line 572
    add-int/lit8 v0, v0, 0x1

    .line 573
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 574
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

    goto :goto_1

    .line 565
    .end local v0           #textSize:I
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setCandidatesInfo(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V

    goto :goto_0

    .line 576
    .restart local v0       #textSize:I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 577
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 578
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

    .line 581
    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    .line 582
    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    .line 583
    return-void
.end method

.method private showBalloon(IZ)V
    .locals 17
    .parameter "candPos"
    .parameter "delayedShow"

    .prologue
    .line 1033
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->removeTimer()V

    .line 1035
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/RectF;

    .line 1036
    .local v16, r:Landroid/graphics/RectF;
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    float-to-int v6, v1

    .line 1037
    .local v6, desired_width:I
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    float-to-int v7, v1

    .line 1042
    .local v7, desired_height:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v2, v2, p1

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x4230

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeCandidateColor:I

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonConfig(Ljava/lang/String;FZIII)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLocationTmp:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getLocationOnScreen([I)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mHintPositionToInputView:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLocationTmp:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getWidth()I

    move-result v5

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 1048
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mHintPositionToInputView:[I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getHeight()I

    move-result v3

    neg-int v3, v3

    aput v3, v1, v2

    .line 1050
    const-wide/16 v14, 0x0

    .line 1051
    .local v14, delay:J
    if-nez p2, :cond_0

    const-wide/16 v14, 0x0

    .line 1052
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->dismiss()V

    .line 1053
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1054
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mHintPositionToInputView:[I

    invoke-virtual {v1, v14, v15, v2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedShow(J[I)V

    .line 1058
    :goto_0
    return-void

    .line 1056
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mHintPositionToInputView:[I

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedUpdate(J[III)V

    goto :goto_0
.end method


# virtual methods
.method public activeCurseBackward()Z
    .locals 2

    .prologue
    .line 522
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    if-lez v0, :cond_0

    .line 524
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->showPage(II)V

    .line 525
    const/4 v0, 0x1

    .line 527
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public activeCursorForward()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 507
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->pageReady(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 518
    :goto_0
    return v1

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v1

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v1

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v0, v3, v1

    .line 513
    .local v0, pageSize:I
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_2

    .line 515
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->showPage(II)V

    .line 516
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 518
    goto :goto_0
.end method

.method public getActiveCandiatePosGlobal()I
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->pageReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 434
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getActiveCandiatePosInPage()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    return v0
.end method

.method public initialize(Lcom/samsung/inputmethod/candidate/ArrowUpdater;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Landroid/view/GestureDetector;Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V
    .locals 0
    .parameter "arrowUpdater"
    .parameter "balloonHint"
    .parameter "gestureDetector"
    .parameter "cvListener"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mArrowUpdater:Lcom/samsung/inputmethod/candidate/ArrowUpdater;

    .line 375
    iput-object p2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    .line 376
    iput-object p3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 377
    iput-object p4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    .line 378
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 30
    .parameter "canvas"

    .prologue
    .line 666
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->isCandidatesListEmpty()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->calculatePage(I)Z

    .line 680
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 685
    .local v18, pStart:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    sub-int v17, v24, v18

    .line 689
    .local v17, pSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateMargin:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateMarginExtra:F

    move/from16 v25, v0

    add-float v6, v24, v25

    .line 690
    .local v6, candMargin:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_2

    .line 691
    add-int/lit8 v24, v17, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    .line 694
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->removeAllElements()V

    .line 696
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingLeft:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v22, v0

    .line 697
    .local v22, xPos:F
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v25, v0

    sub-int v23, v24, v25

    .line 701
    .local v23, yPos:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_15

    .line 702
    const/4 v10, 0x0

    .line 703
    .local v10, footnoteSize:F
    const/4 v9, 0x0

    .line 704
    .local v9, footnote:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mShowFootnote:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 705
    add-int/lit8 v24, v12, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 707
    sget-boolean v24, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->$assertionsDisabled:Z

    if-nez v24, :cond_3

    cmpg-float v24, v10, v6

    if-ltz v24, :cond_3

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 710
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v24, v0

    add-int v25, v18, v12

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v5

    .line 711
    .local v5, cand:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 713
    .local v7, candidateWidth:F
    const/4 v8, 0x0

    .line 714
    .local v8, centerOffset:F
    sget v24, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->MIN_ITEM_WIDTH:F

    cmpg-float v24, v7, v24

    if-gez v24, :cond_4

    .line 715
    sget v24, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->MIN_ITEM_WIDTH:F

    sub-float v24, v24, v7

    const/high16 v25, 0x4000

    div-float v8, v24, v25

    .line 716
    sget v7, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->MIN_ITEM_WIDTH:F

    .line 719
    :cond_4
    const/high16 v24, 0x4000

    mul-float v24, v24, v6

    add-float v15, v7, v24

    .line 721
    .local v15, itemTotalWidth:F
    sget-boolean v24, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CONTACT_ACCESS_FEATURE:Z

    if-eqz v24, :cond_7

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLinkToContacts()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v24, v0

    add-int v25, v18, v12

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDetailInfo(I)Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->getContentType()I

    move-result v24

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 727
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingTop:I

    move/from16 v24, v0

    add-int/lit8 v20, v24, 0x1

    .line 728
    .local v20, top:I
    add-float v24, v22, v15

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    .line 729
    .local v19, right:I
    float-to-int v0, v15

    move/from16 v21, v0

    .line 730
    .local v21, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredHeight()I

    move-result v11

    .line 731
    .local v11, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPhonebookEntryDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 732
    .local v14, iconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPhonebookEntryDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 734
    .local v13, iconHeight:I
    int-to-float v0, v14

    move/from16 v24, v0

    cmpl-float v24, v24, v6

    if-lez v24, :cond_5

    .line 735
    float-to-int v14, v6

    .line 736
    :cond_5
    if-le v13, v14, :cond_6

    .line 737
    move v13, v14

    .line 739
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPhonebookEntryDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    sub-int v25, v19, v14

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v14

    move/from16 v26, v0

    sub-float v26, v6, v26

    const/high16 v27, 0x4000

    div-float v26, v26, v27

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int/lit8 v26, v20, 0x6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v14

    move/from16 v28, v0

    sub-float v28, v6, v28

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    sub-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    add-int/lit8 v28, v20, 0x6

    add-int v28, v28, v13

    invoke-virtual/range {v24 .. v28}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPhonebookEntryDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 748
    .end local v11           #height:I
    .end local v13           #iconHeight:I
    .end local v14           #iconWidth:I
    .end local v19           #right:I
    .end local v20           #top:I
    .end local v21           #width:I
    :cond_7
    sget-boolean v24, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DEL_UDB_FEATURE:Z

    if-eqz v24, :cond_a

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v24, v0

    add-int v25, v18, v12

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDetailInfo(I)Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->isContentTypeUDB()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 752
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingTop:I

    move/from16 v24, v0

    add-int/lit8 v20, v24, 0x1

    .line 753
    .restart local v20       #top:I
    add-float v24, v22, v15

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    .line 754
    .restart local v19       #right:I
    float-to-int v0, v15

    move/from16 v21, v0

    .line 755
    .restart local v21       #width:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredHeight()I

    move-result v11

    .line 756
    .restart local v11       #height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUdbPhraseDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 757
    .restart local v14       #iconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUdbPhraseDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 759
    .restart local v13       #iconHeight:I
    int-to-float v0, v14

    move/from16 v24, v0

    cmpl-float v24, v24, v6

    if-lez v24, :cond_8

    .line 760
    float-to-int v14, v6

    .line 761
    :cond_8
    if-le v13, v14, :cond_9

    .line 762
    move v13, v14

    .line 764
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUdbPhraseDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    sub-int v25, v19, v14

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v14

    move/from16 v26, v0

    sub-float v26, v6, v26

    const/high16 v27, 0x4000

    div-float v26, v26, v27

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int/lit8 v26, v20, 0x6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v14

    move/from16 v28, v0

    sub-float v28, v6, v28

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    sub-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    add-int/lit8 v28, v20, 0x6

    add-int v28, v28, v13

    invoke-virtual/range {v24 .. v28}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUdbPhraseDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 772
    .end local v11           #height:I
    .end local v13           #iconHeight:I
    .end local v14           #iconWidth:I
    .end local v19           #right:I
    .end local v20           #top:I
    .end local v21           #width:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v12, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mEnableActiveHighlight:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellRect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingTop:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v26, v22, v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingBottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellRect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellRect:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellRect:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 781
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    move-object/from16 v24, v0

    new-instance v25, Landroid/graphics/RectF;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual/range {v24 .. v25}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/graphics/RectF;

    const/high16 v25, 0x3f80

    sub-float v25, v22, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v26, v0

    add-int v26, v26, v23

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v27, v22, v15

    const/high16 v28, 0x3f80

    add-float v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v28, v0

    add-int v28, v28, v23

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Landroid/graphics/RectF;->set(FFFF)V

    .line 786
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mShowFootnote:Z

    move/from16 v24, v0

    if-eqz v24, :cond_d

    .line 787
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnoteHighlight:Z

    move/from16 v24, v0

    if-eqz v24, :cond_11

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveFootNoteColor:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColor(I)V

    .line 796
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mShowFootnote:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    .line 797
    sub-float v24, v6, v10

    const/high16 v25, 0x4000

    div-float v24, v24, v25

    add-float v24, v24, v22

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 802
    :cond_e
    add-float v22, v22, v6

    .line 803
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v22

    sub-float v24, v24, v8

    cmpl-float v24, v7, v24

    if-lez v24, :cond_f

    .line 804
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v22

    sub-float v24, v24, v8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v5, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getLimitedCandidateForDrawing(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    .line 808
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v12, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mEnableActiveHighlight:Z

    move/from16 v24, v0

    if-nez v24, :cond_12

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandidateColor:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColor(I)V

    .line 816
    :goto_3
    add-float v24, v22, v8

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 820
    add-float v24, v7, v6

    add-float v22, v22, v24

    .line 824
    add-int/lit8 v24, v17, -0x1

    move/from16 v0, v24

    if-ne v12, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->pageForwardable(I)Z

    move-result v24

    if-eqz v24, :cond_14

    const/16 v16, 0x1

    .line 826
    .local v16, needNotSeparator:Z
    :goto_4
    if-nez v16, :cond_10

    .line 827
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->drawVerticalSeparatorLine(Landroid/graphics/Canvas;F)F

    move-result v24

    add-float v22, v22, v24

    .line 701
    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 790
    .end local v16           #needNotSeparator:Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mDimFootNoteColor:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 810
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v12, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mEnableActiveHighlight:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPressCandidateColor:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 813
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mNormalCandidateColor:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 824
    :cond_14
    const/16 v16, 0x0

    goto :goto_4

    .line 833
    .end local v5           #cand:Ljava/lang/String;
    .end local v7           #candidateWidth:F
    .end local v8           #centerOffset:F
    .end local v9           #footnote:Ljava/lang/String;
    .end local v10           #footnoteSize:F
    .end local v15           #itemTotalWidth:F
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mArrowUpdater:Lcom/samsung/inputmethod/candidate/ArrowUpdater;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUpdateArrowStatusWhenDraw:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mArrowUpdater:Lcom/samsung/inputmethod/candidate/ArrowUpdater;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/samsung/inputmethod/candidate/ArrowUpdater;->updateArrowStatus()V

    .line 835
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUpdateArrowStatusWhenDraw:Z

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setMeasuredDimension(II)V

    .line 370
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 914
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEventReal(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 919
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->pageReady(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNoCalculated:I

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    if-eq v3, v4, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return v7

    .line 923
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 924
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 926
    .local v2, y:I
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 929
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveHighlight(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 930
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->invalidate()V

    .line 932
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->removeTimer()Z

    .line 933
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    .line 935
    iput-boolean v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    .line 936
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->removeTimer()Z

    goto :goto_0

    .line 940
    :cond_3
    const/4 v0, -0x1

    .line 942
    .local v0, clickedItemInPage:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1028
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->invalidate()V

    goto :goto_0

    .line 944
    :pswitch_0
    iget-boolean v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    if-eqz v3, :cond_4

    .line 945
    iput-boolean v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    .line 946
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->removeTimer()Z

    .line 951
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CAND_HIGHTLIGHT_ALWAYS:Z

    if-nez v3, :cond_5

    .line 952
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveHighlight(Z)Z

    .line 955
    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mapToItemInPage(II)I

    move-result v0

    .line 956
    if-eq v0, v5, :cond_6

    .line 957
    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    .line 959
    :cond_6
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    if-ltz v3, :cond_7

    .line 960
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->invalidate()V

    .line 961
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    iget v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v3

    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v3, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v5

    invoke-interface {v4, v3}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onClickChoice(I)Z

    .line 965
    :cond_7
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    goto :goto_1

    .line 971
    :pswitch_1
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mapToItemInPage(II)I

    move-result v0

    .line 972
    if-eq v0, v5, :cond_4

    .line 976
    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveHighlight(Z)Z

    .line 977
    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    .line 979
    if-ltz v0, :cond_4

    .line 982
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->removeTimer()Z

    .line 983
    iput-boolean v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    .line 984
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->startTimer()V

    goto :goto_1

    .line 996
    :pswitch_2
    iput-boolean v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    .line 997
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->removeTimer()Z

    goto :goto_1

    .line 1002
    :pswitch_3
    iget-boolean v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    if-eqz v3, :cond_0

    .line 1003
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mapToItemInPage(II)I

    move-result v0

    .line 1005
    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveHighlight(Z)Z

    .line 1007
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    if-eq v0, v3, :cond_4

    if-eq v0, v5, :cond_4

    .line 1008
    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    .line 1010
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->removeTimer()Z

    .line 1012
    iput-boolean v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    .line 1013
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->startTimer()V

    goto/16 :goto_1

    .line 942
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 386
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNoCalculated:I

    .line 387
    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    .line 388
    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 394
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CAND_HIGHTLIGHT_ALWAYS:Z

    if-eqz v0, :cond_0

    .line 395
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveHighlight(Z)Z

    .line 398
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->removeTimer()Z

    .line 399
    return-void

    .line 397
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveHighlight(Z)Z

    goto :goto_0
.end method

.method public setActiveCurse(I)Z
    .locals 2
    .parameter "activeCandInPage"

    .prologue
    .line 531
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCurrentPageSize(I)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 532
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    .line 533
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->invalidate()V

    .line 534
    const/4 v0, 0x1

    .line 536
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActiveHighlight(Z)Z
    .locals 2
    .parameter "isActiveHighlight"

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 466
    .local v0, bRet:Z
    iget-boolean v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mEnableActiveHighlight:Z

    if-eq p1, v1, :cond_0

    .line 467
    iput-boolean p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mEnableActiveHighlight:Z

    .line 471
    const/4 v0, 0x1

    .line 474
    :cond_0
    return v0
.end method

.method public setCandidateViewListener(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V
    .locals 0
    .parameter "cvListener"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    .line 383
    return-void
.end method

.method public setCandidatesInfo(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V
    .locals 2
    .parameter "candsInfo"

    .prologue
    .line 402
    if-nez p1, :cond_0

    .line 424
    :goto_0
    return-void

    .line 403
    :cond_0
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 404
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNoCalculated:I

    .line 406
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->candidatesFromApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mRecommendedCandidateColor:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mNormalCandidateColor:I

    .line 408
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mRecommendedCandidateColor:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandidateColor:I

    .line 409
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mRecommendedCandidateTextSize:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateTextSize:I

    .line 415
    :goto_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateTextSize:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 417
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    .line 418
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSuspensionPointsWidth:F

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->removeTimer()Z

    goto :goto_0

    .line 411
    :cond_2
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeCandidateColor:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mNormalCandidateColor:I

    .line 412
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeActiveCandidateColor:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandidateColor:I

    .line 413
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeCandidateTextSize:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateTextSize:I

    goto :goto_1
.end method

.method public setFootNoteDisplay(Z)Z
    .locals 2
    .parameter "isShowFootNote"

    .prologue
    .line 479
    const/4 v0, 0x0

    .line 481
    .local v0, bRet:Z
    iget-boolean v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mShowFootnote:Z

    if-eq p1, v1, :cond_0

    .line 482
    iput-boolean p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mShowFootnote:Z

    .line 483
    const/4 v0, 0x1

    .line 485
    :cond_0
    return v0
.end method

.method public setFootNoteHighlight(Z)Z
    .locals 2
    .parameter "isHighlightFootNote"

    .prologue
    .line 495
    const/4 v0, 0x0

    .line 497
    .local v0, bRet:Z
    iget-boolean v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnoteHighlight:Z

    if-eq p1, v1, :cond_0

    .line 498
    iput-boolean p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnoteHighlight:Z

    .line 499
    const/4 v0, 0x1

    .line 501
    :cond_0
    return v0
.end method

.method public showPage(II)V
    .locals 1
    .parameter "pageNo"
    .parameter "activeCandInPage"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 450
    :cond_0
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    .line 451
    iput p2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    .line 453
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->calculatePage(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUpdateArrowStatusWhenDraw:Z

    .line 459
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->invalidate()V

    goto :goto_0

    .line 456
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUpdateArrowStatusWhenDraw:Z

    goto :goto_1
.end method
