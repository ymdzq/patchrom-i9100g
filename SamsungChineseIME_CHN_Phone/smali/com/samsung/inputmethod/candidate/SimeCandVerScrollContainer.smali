.class public Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;
.super Landroid/widget/RelativeLayout;
.source "SimeCandVerScrollContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_CANDIDATE_IN_ONEPAGE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SimeCandVerScrollContainer"

.field public static mNextBtn:Landroid/widget/ImageButton;

.field public static mPreviousBtn:Landroid/widget/ImageButton;


# instance fields
.field private MIN_ITEM_HEIGHT:F

.field private mCandidateListLayout:Landroid/widget/LinearLayout;

.field private mCandidateMargin:F

.field private mCandidateSeperatorColor:I

.field private mCandidateSeperatorWidth:I

.field mCandidateTextColor:Landroid/content/res/ColorStateList;

.field private mCandidateTextSize:I

.field private mCandidateTextSize_small:I

.field private mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

.field private mCellParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

.field private mFocusCandidateIndex:I

.field private mScrollView:Lcom/samsung/inputmethod/comm/SimeVerScrollView;

.field private mSelectIndex:I

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mScrollView:Lcom/samsung/inputmethod/comm/SimeVerScrollView;

    .line 97
    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 99
    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCellParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 101
    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 107
    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateTextColor:Landroid/content/res/ColorStateList;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateMargin:F

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSelectIndex:I

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    .line 142
    return-void
.end method

.method private creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .locals 6
    .parameter "candIndexGlobal"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 200
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 218
    :goto_0
    return-object v1

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, candStr:Ljava/lang/String;
    new-instance v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;-><init>(Landroid/content/Context;)V

    .line 203
    .local v1, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v1, p0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_1

    .line 205
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateTextSize_small:I

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextSize(IF)V

    .line 208
    :goto_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 209
    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setBackgroundResource(I)V

    .line 210
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setGravity(I)V

    .line 211
    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setSingleLine()V

    .line 212
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 213
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateMargin:F

    float-to-int v2, v2

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateMargin:F

    float-to-int v3, v3

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setPadding(IIII)V

    .line 215
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->MIN_ITEM_HEIGHT:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setMinHeight(I)V

    .line 216
    invoke-virtual {v1, v5}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setClickable(Z)V

    .line 217
    invoke-virtual {v1, v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setText(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 207
    :cond_1
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextSize(IF)V

    goto :goto_1
.end method

.method private creatSeparator()Landroid/view/View;
    .locals 4

    .prologue
    .line 222
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, sepView:Lcom/samsung/inputmethod/candidate/SimeCandSepView;
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;->HORIZON_34:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateSeperatorColor:I

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateSeperatorWidth:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->setAttribute(Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;II)V

    .line 225
    return-object v0
.end method

.method private setCandidateList()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 232
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v5, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v4

    .line 234
    :cond_1
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    .line 238
    .local v2, totalNum:I
    if-lez v2, :cond_0

    .line 240
    const/4 v3, 0x0

    .line 241
    .local v3, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    const/4 v1, 0x0

    .line 243
    .local v1, sepView:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 245
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    move-result-object v3

    .line 246
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->creatSeparator()Landroid/view/View;

    move-result-object v1

    .line 247
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCellParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_2

    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CANDIDATE_INDICATOR_SHOW:Z

    if-nez v4, :cond_2

    .line 243
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_2
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 254
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public activeCurseBackward()Z
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x1

    return v0
.end method

.method public activeCurseForward()Z
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->updateArrowStatus()V

    .line 533
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 534
    return-void
.end method

.method public enableActiveHighlight(Z)V
    .locals 0
    .parameter "enableActiveHighlight"

    .prologue
    .line 279
    return-void
.end method

.method public getActiveCandiatePos()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    return v0
.end method

.method public getArrowWidth()F
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public initialize(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Lcom/samsung/inputmethod/candidate/SimeCandManager;)V
    .locals 8
    .parameter "cvListener"
    .parameter "balloonHint"
    .parameter "candMgr"

    .prologue
    const/4 v7, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    .line 147
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    .line 149
    const v4, 0x7f0c0009

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    sput-object v4, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mPreviousBtn:Landroid/widget/ImageButton;

    .line 150
    const v4, 0x7f0c000a

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    sput-object v4, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mNextBtn:Landroid/widget/ImageButton;

    .line 151
    const v4, 0x7f0c000d

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 152
    const v4, 0x7f0c000c

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/inputmethod/comm/SimeVerScrollView;

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mScrollView:Lcom/samsung/inputmethod/comm/SimeVerScrollView;

    .line 155
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 157
    .local v3, r:Landroid/content/res/Resources;
    const v4, 0x7f020141

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    const v4, 0x7f0a0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateTextSize:I

    .line 159
    const v4, 0x7f0a0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateTextSize_small:I

    .line 160
    const v4, 0x7f080021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateTextColor:Landroid/content/res/ColorStateList;

    .line 161
    const v4, 0x7f0a0016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->MIN_ITEM_HEIGHT:F

    .line 163
    const v4, 0x7f080018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateSeperatorColor:I

    .line 164
    const v4, 0x7f0a0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateSeperatorWidth:I

    .line 175
    invoke-virtual {p0, v5, v5}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->measure(II)V

    .line 177
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->invalidate()V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->requestLayout()V

    .line 181
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 183
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateSeperatorWidth:I

    .line 184
    .local v2, nSeperatorHeight:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x4

    sub-int v1, v4, v2

    .line 186
    .local v1, nCellItemHeight:I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCellParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 189
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 191
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v11, 0x4000

    const/16 v10, 0x140

    const/16 v9, 0xa0

    const/16 v8, 0x78

    const/4 v7, 0x4

    .line 288
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v2

    .line 289
    .local v2, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v1

    .line 290
    .local v1, dim:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 291
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    div-int/lit8 v4, v5, 0x5

    .line 292
    .local v4, measuredWidth:I
    invoke-virtual {v2, v7}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbHeight(I)I

    move-result v3

    .line 294
    .local v3, measuredHeight:I
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 295
    if-eq v1, v9, :cond_0

    if-ne v1, v8, :cond_3

    .line 296
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e178d50

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 357
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_18

    .line 358
    invoke-virtual {v2, v7}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getOneHandCoreHeight(I)I

    move-result v3

    .line 371
    :cond_2
    :goto_1
    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 373
    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 375
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 378
    return-void

    .line 297
    :cond_3
    if-ne v1, v10, :cond_7

    .line 298
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 299
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_4

    .line 300
    const/16 v4, 0x74

    goto :goto_0

    .line 302
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x5e

    div-int/lit16 v4, v5, 0x258

    goto :goto_0

    .line 304
    :cond_5
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_6

    .line 305
    const/16 v4, 0x69

    goto :goto_0

    .line 307
    :cond_6
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x62

    div-int/lit16 v4, v5, 0x258

    goto :goto_0

    .line 308
    :cond_7
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 309
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_8

    .line 310
    const/16 v4, 0x48

    goto :goto_0

    .line 313
    :cond_8
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0xf

    div-int/lit8 v5, v5, 0x64

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbPaddingRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int v4, v5, v6

    goto :goto_0

    .line 315
    :cond_9
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw270dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 316
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x10

    div-int/lit8 v4, v5, 0x64

    goto :goto_0

    .line 318
    :cond_a
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0xf

    div-int/lit8 v5, v5, 0x64

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbPaddingRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int v4, v5, v6

    goto/16 :goto_0

    .line 320
    :cond_b
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 321
    if-ne v1, v9, :cond_c

    .line 322
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3a

    div-int/lit16 v4, v5, 0x140

    goto/16 :goto_0

    .line 323
    :cond_c
    if-ne v1, v8, :cond_d

    .line 324
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2a

    div-int/lit16 v4, v5, 0xf0

    goto/16 :goto_0

    .line 325
    :cond_d
    if-ne v1, v10, :cond_14

    .line 326
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw360dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 327
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ONE_HAND_FEATURE:Z

    if-eqz v5, :cond_e

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_e

    .line 328
    const/16 v4, 0x6a

    goto/16 :goto_0

    .line 329
    :cond_e
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_f

    .line 330
    const/16 v4, 0x69

    goto/16 :goto_0

    .line 332
    :cond_f
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x41

    div-int/lit16 v4, v5, 0x168

    goto/16 :goto_0

    .line 333
    :cond_10
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 335
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_11

    .line 336
    const/16 v4, 0x74

    goto/16 :goto_0

    .line 337
    :cond_11
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_12

    .line 338
    const/16 v4, 0x74

    goto/16 :goto_0

    .line 340
    :cond_12
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x46

    div-int/lit16 v4, v5, 0x190

    goto/16 :goto_0

    .line 342
    :cond_13
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x16

    div-int/lit8 v4, v5, 0x64

    goto/16 :goto_0

    .line 343
    :cond_14
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 344
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_15

    .line 345
    const/16 v4, 0x48

    goto/16 :goto_0

    .line 346
    :cond_15
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_16

    .line 347
    const/16 v4, 0x48

    goto/16 :goto_0

    .line 350
    :cond_16
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3a

    div-int/lit16 v4, v5, 0x140

    goto/16 :goto_0

    .line 353
    :cond_17
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3a

    div-int/lit16 v4, v5, 0x140

    goto/16 :goto_0

    .line 359
    :cond_18
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_2

    .line 360
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 361
    const/16 v3, 0x11f

    goto/16 :goto_1

    .line 362
    :cond_19
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 363
    const/16 v3, 0x195

    goto/16 :goto_1

    .line 365
    :cond_1a
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCoreHeight()I

    move-result v3

    goto/16 :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 483
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 485
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 526
    :cond_0
    :goto_0
    return v6

    .line 488
    :pswitch_0
    instance-of v3, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 490
    check-cast v2, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 491
    .local v2, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSelectIndex:I

    goto :goto_0

    .line 496
    .end local v2           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :pswitch_1
    instance-of v3, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 497
    check-cast v2, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 498
    .restart local v2       #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v3

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSelectIndex:I

    if-eq v3, v4, :cond_0

    .line 499
    iput v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSelectIndex:I

    goto :goto_0

    .line 503
    .end local v2           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_1
    iput v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSelectIndex:I

    goto :goto_0

    .line 509
    :pswitch_2
    instance-of v3, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 510
    check-cast v2, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 511
    .restart local v2       #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v3

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSelectIndex:I

    if-ne v3, v4, :cond_0

    .line 513
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    if-ltz v3, :cond_2

    .line 515
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 516
    .local v1, childView:Landroid/view/View;
    if-eqz v1, :cond_2

    instance-of v3, v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v3, :cond_2

    .line 517
    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 519
    .end local v1           #childView:Landroid/view/View;
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setSelected(Z)V

    .line 520
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSelectIndex:I

    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    .line 521
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSelectIndex:I

    invoke-interface {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onClickChoice(I)Z

    goto :goto_0

    .line 485
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
    .line 478
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    .line 479
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 480
    return-void
.end method

.method public setActiveCand(I)V
    .locals 0
    .parameter "activeCandIndex"

    .prologue
    .line 392
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    .line 393
    return-void
.end method

.method public setCandidateViewListener(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V
    .locals 0
    .parameter "cvListener"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    .line 196
    return-void
.end method

.method public showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Z)V
    .locals 3
    .parameter "candsInfo"
    .parameter "enableActiveHighlight"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 260
    if-nez p1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 264
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 266
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->isCandidatesListEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mPreviousBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 268
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 271
    :cond_1
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setCandidateList()Z

    .line 272
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mScrollView:Lcom/samsung/inputmethod/comm/SimeVerScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/inputmethod/comm/SimeVerScrollView;->scrollTo(II)V

    .line 273
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->invalidate()V

    goto :goto_0
.end method

.method public updateArrowStatus()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 403
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CANDIDATE_INDICATOR_SHOW:Z

    if-nez v6, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mScrollView:Lcom/samsung/inputmethod/comm/SimeVerScrollView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/comm/SimeVerScrollView;->getScrollY()I

    move-result v5

    .line 406
    .local v5, scrollViewTopEdge:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mScrollView:Lcom/samsung/inputmethod/comm/SimeVerScrollView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/comm/SimeVerScrollView;->getHeight()I

    move-result v6

    add-int v4, v5, v6

    .line 408
    .local v4, scrollViewBottonEdge:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    .line 409
    .local v1, candidatesViewTop:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    .line 411
    .local v0, candidatesViewBotton:I
    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v3

    .line 413
    .local v3, nextArrowCurrentVisibility:I
    if-lt v4, v0, :cond_3

    if-nez v3, :cond_3

    .line 415
    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 423
    :cond_2
    :goto_1
    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mPreviousBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    .line 425
    .local v2, leftArrowCurrentVisibility:I
    if-gt v5, v1, :cond_4

    if-nez v2, :cond_4

    .line 427
    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mPreviousBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 417
    .end local v2           #leftArrowCurrentVisibility:I
    :cond_3
    if-ge v4, v0, :cond_2

    if-eqz v3, :cond_2

    .line 419
    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 429
    .restart local v2       #leftArrowCurrentVisibility:I
    :cond_4
    if-le v5, v1, :cond_0

    if-eqz v2, :cond_0

    .line 431
    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mPreviousBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateFocusTextView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 438
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    .line 439
    .local v1, oldFocus:I
    const/4 v0, 0x0

    .line 441
    .local v0, childView:Landroid/view/View;
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    if-ltz v6, :cond_0

    .line 443
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_0

    instance-of v6, v0, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v6, :cond_0

    .line 447
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mScrollView:Lcom/samsung/inputmethod/comm/SimeVerScrollView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/comm/SimeVerScrollView;->getScrollY()I

    move-result v5

    .line 448
    .local v5, scrollViewTopEdge:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mScrollView:Lcom/samsung/inputmethod/comm/SimeVerScrollView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/comm/SimeVerScrollView;->getHeight()I

    move-result v6

    add-int v4, v5, v6

    .line 450
    .local v4, scrollViewBottomEdge:I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 451
    .local v3, posTop:I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 453
    .local v2, posBottom:I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    if-ge v6, v5, :cond_3

    .line 454
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    .line 455
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 466
    .end local v2           #posBottom:I
    .end local v3           #posTop:I
    .end local v4           #scrollViewBottomEdge:I
    .end local v5           #scrollViewTopEdge:I
    :cond_0
    :goto_0
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    if-ltz v6, :cond_2

    .line 467
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_1

    instance-of v6, v0, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v6, :cond_1

    .line 470
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 472
    :cond_1
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    if-eq v1, v6, :cond_2

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    if-eqz v6, :cond_2

    .line 473
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    invoke-interface {v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onClickChoice(I)Z

    .line 475
    :cond_2
    return-void

    .line 458
    .restart local v2       #posBottom:I
    .restart local v3       #posTop:I
    .restart local v4       #scrollViewBottomEdge:I
    .restart local v5       #scrollViewTopEdge:I
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    if-le v6, v4, :cond_0

    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    if-eqz v6, :cond_0

    .line 459
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    .line 460
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method
