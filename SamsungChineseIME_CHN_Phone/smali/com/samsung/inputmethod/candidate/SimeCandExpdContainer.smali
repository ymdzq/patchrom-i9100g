.class public Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;
.super Landroid/widget/LinearLayout;
.source "SimeCandExpdContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ExpandCandidatesContainer"


# instance fields
.field private MAX_ITEM_WIDTH:F

.field private MIN_ITEM_WIDTH:F

.field private mActiveCandidateColor:I

.field private mActiveCandidateIndex:I

.field private mCandidateListLayout:Landroid/widget/LinearLayout;

.field private mCandidateMargin:F

.field private mCandidateMarginExtra:F

.field private mCandidateSeperatorColor:I

.field private mCandidateSeperatorWidth:I

.field private mCandidateTextSize:I

.field private mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

.field private mContentHeight:I

.field private mContentWidth:I

.field private mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

.field private mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mImeCandidateColor:I

.field private mImeCandidateTextSize:I

.field private mLastRowStart:I

.field private mLastRowlayout:Landroid/widget/LinearLayout;

.field private mNormalCandidateColor:I

.field private mRecommendedCandidateColor:I

.field private mRecommendedCandidateTextSize:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 81
    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    .line 157
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 169
    return-void
.end method

.method private AppendRows()Z
    .locals 22

    .prologue
    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    const/16 v19, 0x0

    .line 577
    :goto_0
    return v19

    .line 448
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCurrentPageSize(I)I

    move-result v4

    .line 449
    .local v4, displayedNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v16

    .line 450
    .local v16, totalNum:I
    sub-int v5, v16, v4

    .line 453
    .local v5, expandNum:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getMeasuredWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingLeft()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getMeasuredHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingBottom()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentHeight:I

    .line 455
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MAX_ITEM_WIDTH:F

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0013

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MIN_ITEM_WIDTH:F

    .line 461
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentHeight:I

    move/from16 v19, v0

    if-gtz v19, :cond_2

    :cond_1
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 462
    :cond_2
    if-gtz v5, :cond_3

    const/16 v19, 0x0

    goto/16 :goto_0

    .line 466
    :cond_3
    const/4 v9, 0x0

    .line 467
    .local v9, lastSepView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 468
    .local v12, rowStart:I
    const/4 v11, 0x0

    .line 469
    .local v11, rowSize:I
    const/16 v18, 0x0

    .line 470
    .local v18, xPos:F
    const/4 v7, 0x0

    .line 471
    .local v7, itemWidth:F
    const/4 v10, 0x0

    .line 472
    .local v10, marginExtra:F
    const/4 v8, 0x0

    .line 475
    .local v8, lastItemWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 481
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatRowLayout()Landroid/widget/LinearLayout;

    move-result-object v13

    .line 484
    .local v13, rowlayout:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v3, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 487
    .local v3, cellParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    move/from16 v19, v0

    const/16 v20, -0x1

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 490
    .local v15, separatorParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x0

    .line 491
    .local v6, itemPos:I
    :goto_1
    add-int v19, v12, v11

    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    .line 492
    add-int v6, v12, v11

    .line 495
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    move-result-object v17

    .line 496
    .local v17, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatSeparator()Lcom/samsung/inputmethod/candidate/SimeCandSepView;

    move-result-object v14

    .line 502
    .local v14, sepView:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getTextWidth()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v20, v20, v21

    add-float v7, v19, v20

    .line 504
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MIN_ITEM_WIDTH:F

    move/from16 v19, v0

    cmpg-float v19, v7, v19

    if-gez v19, :cond_7

    .line 505
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MIN_ITEM_WIDTH:F

    .line 509
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v7, v7, v19

    .line 513
    add-float v19, v18, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v19, v19, v20

    if-lez v19, :cond_6

    if-nez v11, :cond_8

    .line 514
    :cond_6
    add-float v18, v18, v7

    .line 515
    move v8, v7

    .line 516
    add-int/lit8 v11, v11, 0x1

    .line 517
    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    invoke-virtual {v13, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    move-object v9, v14

    goto :goto_1

    .line 506
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MAX_ITEM_WIDTH:F

    move/from16 v19, v0

    cmpl-float v19, v7, v19

    if-lez v19, :cond_5

    .line 507
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MAX_ITEM_WIDTH:F

    goto :goto_2

    .line 523
    :cond_8
    if-eqz v9, :cond_9

    .line 524
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 527
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v18

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v10, v19, v20

    .line 530
    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 533
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->adjustCellPadding(Landroid/widget/LinearLayout;)V

    .line 535
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 536
    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 539
    add-int/2addr v12, v11

    .line 540
    const/4 v11, 0x0

    .line 541
    const/16 v18, 0x0

    .line 542
    const/4 v10, 0x0

    .line 543
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatRowLayout()Landroid/widget/LinearLayout;

    move-result-object v13

    goto/16 :goto_1

    .line 548
    .end local v14           #sepView:Landroid/view/View;
    .end local v17           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_a
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    if-lez v19, :cond_e

    .line 550
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v18

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v10, v19, v20

    .line 551
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v18

    cmpl-float v19, v19, v8

    if-lez v19, :cond_c

    .line 557
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    move/from16 v19, v0

    cmpg-float v19, v19, v10

    if-gtz v19, :cond_b

    .line 558
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 567
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 568
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->adjustCellPadding(Landroid/widget/LinearLayout;)V

    .line 569
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 570
    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 577
    :goto_4
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 560
    :cond_c
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_d

    .line 561
    const/4 v10, 0x0

    goto :goto_3

    .line 563
    :cond_d
    if-eqz v9, :cond_b

    .line 564
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 574
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method

.method private adjustCellPadding(Landroid/widget/LinearLayout;)V
    .locals 8
    .parameter "rowlayout"

    .prologue
    const/4 v7, 0x0

    .line 653
    iget v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    add-float v0, v5, v6

    .line 655
    .local v0, candMargin:F
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 658
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 659
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 660
    .local v4, v:Landroid/view/View;
    instance-of v5, v4, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 661
    check-cast v3, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 662
    .local v3, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    float-to-int v5, v0

    float-to-int v6, v0

    invoke-virtual {v3, v5, v7, v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setPadding(IIII)V

    .line 658
    .end local v3           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 665
    .end local v4           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private calculateRows()Z
    .locals 22

    .prologue
    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    const/16 v19, 0x0

    .line 437
    :goto_0
    return v19

    .line 304
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 306
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 307
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCurrentPageSize(I)I

    move-result v4

    .line 312
    .local v4, displayedNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v16

    .line 313
    .local v16, totalNum:I
    sub-int v5, v16, v4

    .line 316
    .local v5, expandNum:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getMeasuredWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingLeft()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getMeasuredHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingBottom()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentHeight:I

    .line 318
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MAX_ITEM_WIDTH:F

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0013

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MIN_ITEM_WIDTH:F

    .line 325
    if-gtz v5, :cond_1

    const/16 v19, 0x0

    goto/16 :goto_0

    .line 329
    :cond_1
    const/4 v9, 0x0

    .line 330
    .local v9, lastSepView:Landroid/view/View;
    move v12, v4

    .line 331
    .local v12, rowStart:I
    const/4 v11, 0x0

    .line 332
    .local v11, rowSize:I
    const/16 v18, 0x0

    .line 333
    .local v18, xPos:F
    const/4 v7, 0x0

    .line 334
    .local v7, itemWidth:F
    const/4 v10, 0x0

    .line 335
    .local v10, marginExtra:F
    const/4 v8, 0x0

    .line 338
    .local v8, lastItemWidth:F
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatRowLayout()Landroid/widget/LinearLayout;

    move-result-object v13

    .line 340
    .local v13, rowlayout:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v3, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 343
    .local v3, cellParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    move/from16 v19, v0

    const/16 v20, -0x1

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 346
    .local v15, separatorParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x0

    .line 347
    .local v6, itemPos:I
    :goto_1
    add-int v19, v12, v11

    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 348
    add-int v6, v12, v11

    .line 351
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    move-result-object v17

    .line 352
    .local v17, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatSeparator()Lcom/samsung/inputmethod/candidate/SimeCandSepView;

    move-result-object v14

    .line 358
    .local v14, sepView:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getTextWidth()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v20, v20, v21

    add-float v7, v19, v20

    .line 360
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MIN_ITEM_WIDTH:F

    move/from16 v19, v0

    cmpg-float v19, v7, v19

    if-gez v19, :cond_4

    .line 361
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MIN_ITEM_WIDTH:F

    .line 365
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v7, v7, v19

    .line 369
    add-float v19, v18, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v19, v19, v20

    if-lez v19, :cond_3

    if-nez v11, :cond_5

    .line 370
    :cond_3
    add-float v18, v18, v7

    .line 371
    move v8, v7

    .line 372
    add-int/lit8 v11, v11, 0x1

    .line 373
    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    invoke-virtual {v13, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    move-object v9, v14

    goto :goto_1

    .line 362
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MAX_ITEM_WIDTH:F

    move/from16 v19, v0

    cmpl-float v19, v7, v19

    if-lez v19, :cond_2

    .line 363
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MAX_ITEM_WIDTH:F

    goto :goto_2

    .line 378
    :cond_5
    if-eqz v9, :cond_6

    .line 379
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 382
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v18

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v10, v19, v20

    .line 383
    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 386
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->adjustCellPadding(Landroid/widget/LinearLayout;)V

    .line 389
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 390
    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 396
    add-int/2addr v12, v11

    .line 397
    const/4 v11, 0x0

    .line 398
    const/16 v18, 0x0

    .line 399
    const/4 v10, 0x0

    .line 400
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatRowLayout()Landroid/widget/LinearLayout;

    move-result-object v13

    goto/16 :goto_1

    .line 404
    .end local v14           #sepView:Landroid/view/View;
    .end local v17           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_7
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    if-lez v19, :cond_b

    .line 408
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v18

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v10, v19, v20

    .line 409
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v18

    cmpl-float v19, v19, v8

    if-lez v19, :cond_9

    .line 415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    move/from16 v19, v0

    cmpg-float v19, v19, v10

    if-gtz v19, :cond_8

    .line 416
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 426
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 427
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->adjustCellPadding(Landroid/widget/LinearLayout;)V

    .line 428
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 429
    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 437
    :goto_4
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 418
    :cond_9
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_a

    .line 420
    const/4 v10, 0x0

    goto :goto_3

    .line 422
    :cond_a
    if-eqz v9, :cond_8

    .line 423
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 434
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method

.method private creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .locals 6
    .parameter "candIndexGlobal"

    .prologue
    const/4 v5, 0x0

    .line 620
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 642
    :goto_0
    return-object v2

    .line 621
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, candStr:Ljava/lang/String;
    new-instance v2, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;-><init>(Landroid/content/Context;)V

    .line 624
    .local v2, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextSize(IF)V

    .line 626
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 628
    .local v1, csl:Landroid/content/res/ColorStateList;
    invoke-virtual {v2, v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 629
    const v3, 0x7f020008

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setBackgroundResource(I)V

    .line 630
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setGravity(I)V

    .line 631
    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setSingleLine()V

    .line 632
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 633
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v5, v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setPadding(IIII)V

    .line 635
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MIN_ITEM_WIDTH:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setMinWidth(I)V

    .line 636
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MAX_ITEM_WIDTH:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setMaxWidth(I)V

    .line 638
    invoke-virtual {v2, p0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 639
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setClickable(Z)V

    .line 640
    invoke-virtual {v2, v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setText(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method private creatRowLayout()Landroid/widget/LinearLayout;
    .locals 7

    .prologue
    .line 286
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 287
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000e

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 290
    .local v2, rowContainer:Landroid/widget/LinearLayout;
    const v4, 0x7f0c0039

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 291
    .local v3, rowlayout:Landroid/widget/LinearLayout;
    const v4, 0x7f0c003a

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;

    .line 292
    .local v0, horSep:Lcom/samsung/inputmethod/candidate/SimeCandSepView;
    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;->HORIZON_EXPAND:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    iget v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorColor:I

    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->setAttribute(Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;II)V

    .line 294
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    return-object v3
.end method

.method private creatSeparator()Lcom/samsung/inputmethod/candidate/SimeCandSepView;
    .locals 4

    .prologue
    .line 646
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;-><init>(Landroid/content/Context;)V

    .line 647
    .local v0, sepView:Lcom/samsung/inputmethod/candidate/SimeCandSepView;
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;->VERTICAL:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorColor:I

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->setAttribute(Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;II)V

    .line 648
    return-object v0
.end method

.method private setCandidatesInfo(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V
    .locals 1
    .parameter "candsInfo"

    .prologue
    .line 581
    if-nez p1, :cond_0

    .line 592
    :goto_0
    return-void

    .line 582
    :cond_0
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 584
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->candidatesFromApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mRecommendedCandidateColor:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mNormalCandidateColor:I

    .line 586
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mRecommendedCandidateTextSize:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateTextSize:I

    goto :goto_0

    .line 588
    :cond_1
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mImeCandidateColor:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mNormalCandidateColor:I

    .line 589
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mImeCandidateTextSize:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateTextSize:I

    goto :goto_0
.end method


# virtual methods
.method public AppendExpandCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V
    .locals 4
    .parameter "candsInfo"

    .prologue
    .line 608
    const-wide/16 v2, 0x0

    .line 609
    .local v2, timeStart:J
    const-wide/16 v0, 0x0

    .line 610
    .local v0, timeEnd:J
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->setCandidatesInfo(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V

    .line 611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 612
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->AppendRows()Z

    .line 613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 616
    return-void
.end method

.method public activeCurseBackward()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 705
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCurrentPageSize(I)I

    move-result v0

    .line 706
    .local v0, displayedNum:I
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    if-le v2, v0, :cond_0

    .line 707
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    .line 709
    const/4 v1, 0x1

    .line 711
    :cond_0
    return v1
.end method

.method public activeCursorForward()Z
    .locals 2

    .prologue
    .line 696
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 697
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    .line 698
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->invalidate()V

    .line 699
    const/4 v0, 0x1

    .line 701
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveCandiatePosGlobal()I
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    return v0
.end method

.method public getCandidateListLayoutChildCount()I
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public initialize(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V
    .locals 4
    .parameter "ime"
    .parameter "cvListener"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 174
    iput-object p2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    .line 175
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 177
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0c0020

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mScrollView:Landroid/widget/ScrollView;

    .line 178
    const v1, 0x7f0c0021

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 180
    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mImeCandidateColor:I

    .line 181
    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mRecommendedCandidateColor:I

    .line 182
    const v1, 0x7f020140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 183
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mImeCandidateColor:I

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mNormalCandidateColor:I

    .line 184
    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateColor:I

    .line 185
    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    .line 187
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 189
    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mImeCandidateTextSize:I

    .line 190
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mImeCandidateTextSize:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mRecommendedCandidateTextSize:I

    .line 191
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mImeCandidateTextSize:I

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateTextSize:I

    .line 193
    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorColor:I

    .line 194
    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    .line 195
    const-string v1, "ExpandCandidatesContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCandidateSeperatorWidth=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->invalidate()V

    .line 210
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->requestLayout()V

    .line 212
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 219
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_0

    .line 221
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v1

    .line 222
    .local v1, measuredWidth:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v3

    add-int v0, v2, v3

    .line 238
    .local v0, measuredHeight:I
    :goto_0
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 239
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 241
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 243
    return-void

    .line 223
    .end local v0           #measuredHeight:I
    .end local v1           #measuredWidth:I
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_1

    .line 224
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v1

    .line 225
    .restart local v1       #measuredWidth:I
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v0

    .restart local v0       #measuredHeight:I
    goto :goto_0

    .line 228
    .end local v0           #measuredHeight:I
    .end local v1           #measuredWidth:I
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 229
    .restart local v1       #measuredWidth:I
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getOneHandContainer()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getHeight()I

    move-result v0

    .restart local v0       #measuredHeight:I
    goto :goto_0

    .line 233
    .end local v0           #measuredHeight:I
    .end local v1           #measuredWidth:I
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v1

    .line 234
    .restart local v1       #measuredWidth:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbCoreHeight(I)I

    move-result v3

    add-int v0, v2, v3

    .restart local v0       #measuredHeight:I
    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "me"

    .prologue
    const/4 v5, -0x1

    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 247
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 249
    .local v2, y:I
    packed-switch v0, :pswitch_data_0

    .line 281
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 252
    :pswitch_0
    instance-of v3, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 253
    check-cast v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 254
    .local v1, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    goto :goto_0

    .line 259
    .end local v1           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :pswitch_1
    instance-of v3, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 260
    check-cast v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 261
    .restart local v1       #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v3

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    if-eq v3, v4, :cond_0

    .line 262
    iput v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    goto :goto_0

    .line 266
    .end local v1           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_1
    iput v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    goto :goto_0

    .line 271
    :pswitch_2
    instance-of v3, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 272
    check-cast v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 273
    .restart local v1       #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v3

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    if-ne v3, v4, :cond_0

    .line 274
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onClickChoice(I)Z

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 669
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    .line 672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 673
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 674
    return-void
.end method

.method public setActiveCandidate(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 677
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCurrentPageSize(I)I

    move-result v0

    .line 678
    .local v0, displayedNum:I
    add-int/lit8 v2, v0, -0x1

    if-le p1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 682
    :cond_0
    :goto_0
    return v1

    .line 681
    :cond_1
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    .line 682
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public showExpandCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V
    .locals 6
    .parameter "candsInfo"

    .prologue
    const/4 v5, 0x0

    .line 595
    const-wide/16 v2, 0x0

    .line 596
    .local v2, timeStart:J
    const-wide/16 v0, 0x0

    .line 597
    .local v0, timeEnd:J
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->setCandidatesInfo(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V

    .line 598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 599
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->calculateRows()Z

    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 602
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v5, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 603
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->invalidate()V

    .line 604
    return-void
.end method
