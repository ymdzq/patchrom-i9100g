.class public Lcom/samsung/inputmethod/composing/SimeCompView;
.super Landroid/view/View;
.source "SimeCompView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LEFT_RIGHT_MARGIN:I = 0x5

.field private static final SUSPENSION_POINTS:Ljava/lang/String; = "..."

.field private static final TAG:Ljava/lang/String; = "ComposingView"


# instance fields
.field private mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

.field private mCursor:Landroid/graphics/drawable/Drawable;

.field mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

.field mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mFontSize:I

.field private mHlDrawable:Landroid/graphics/drawable/Drawable;

.field mKorDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

.field private mNeedSuspens:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mStrColor:I

.field private mStrColorHl:I

.field private mStrColorIdle:I

.field private mSuspensionPointsWidth:F

.field mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mNeedSuspens:Z

    .line 136
    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->DEFDECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    iput-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 142
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mHlDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mCursor:Landroid/graphics/drawable/Drawable;

    .line 145
    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mStrColor:I

    .line 146
    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mStrColorHl:I

    .line 147
    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mStrColorIdle:I

    .line 149
    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mFontSize:I

    .line 151
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    .line 152
    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mStrColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 154
    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 156
    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 157
    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mSuspensionPointsWidth:F

    .line 158
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;F)V
    .locals 6
    .parameter "canvas"
    .parameter "x"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mCursor:Landroid/graphics/drawable/Drawable;

    float-to-int v1, p2

    iget v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingTop:I

    float-to-int v3, p2

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/inputmethod/composing/SimeCompView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 338
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 339
    return-void
.end method

.method private drawForPinyin(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 343
    iget v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingLeft:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v4, v0

    .line 344
    .local v4, x:F
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    iget v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingTop:I

    add-int/2addr v0, v2

    int-to-float v5, v0

    .line 346
    .local v5, y:F
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mStrColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 348
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    sget-object v2, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9DECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    if-ne v0, v2, :cond_2

    .line 349
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, cmpsStr:Ljava/lang/String;
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mNeedSuspens:Z

    if-eqz v0, :cond_0

    .line 359
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/composing/SimeCompView;->getLimitedStringForDrawing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 364
    .local v3, activeCmpsLen:I
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 365
    .end local v1           #cmpsStr:Ljava/lang/String;
    .end local v3           #activeCmpsLen:I
    :cond_1
    return-void

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    sget-object v2, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9AWINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    if-ne v0, v2, :cond_1

    .line 352
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #cmpsStr:Ljava/lang/String;
    goto :goto_0
.end method

.method private getLimitedStringForDrawing(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "cmpStr"

    .prologue
    const/4 v6, 0x0

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, index:I
    const/4 v2, 0x0

    .line 370
    .local v2, width:F
    invoke-virtual {p0}, Lcom/samsung/inputmethod/composing/SimeCompView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingLeft:I

    iget v5, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0xa

    sub-int v1, v3, v4

    .line 373
    .local v1, textMaxWidth:I
    sget-object v3, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->EDIT_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    if-ne v3, v4, :cond_1

    .line 375
    :goto_0
    int-to-float v3, v1

    iget v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mSuspensionPointsWidth:F

    sub-float/2addr v3, v4

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v0, v3, :cond_0

    .line 376
    add-int/lit8 v0, v0, 0x1

    .line 377
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v6, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    goto :goto_0

    .line 379
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    :goto_1
    return-object v3

    .line 382
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 384
    :goto_2
    int-to-float v3, v1

    iget v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mSuspensionPointsWidth:F

    sub-float/2addr v3, v4

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    if-ltz v0, :cond_2

    .line 385
    add-int/lit8 v0, v0, -0x1

    .line 386
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, p1, v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    goto :goto_2

    .line 388
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public getComposingStatus()Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    return-object v0
.end method

.method public moveCursor(I)Z
    .locals 6
    .parameter "keyCode"

    .prologue
    const/4 v5, -0x2

    const/16 v4, 0x16

    const/16 v3, 0x15

    .line 206
    if-eq p1, v3, :cond_0

    if-eq p1, v4, :cond_0

    .line 207
    const/4 v1, 0x0

    .line 225
    :goto_0
    return v1

    .line 209
    :cond_0
    sget-object v1, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->EDIT_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iget-object v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    if-ne v1, v2, :cond_4

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, offset:I
    if-ne p1, v3, :cond_3

    .line 212
    const/4 v0, -0x1

    .line 214
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->moveCursor(I)V

    .line 224
    .end local v0           #offset:I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/composing/SimeCompView;->invalidate()V

    .line 225
    const/4 v1, 0x1

    goto :goto_0

    .line 213
    .restart local v0       #offset:I
    :cond_3
    if-ne p1, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 215
    .end local v0           #offset:I
    :cond_4
    sget-object v1, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_STRING_LOWERCASE:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iget-object v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    if-ne v1, v2, :cond_2

    .line 216
    if-eq p1, v3, :cond_5

    if-ne p1, v4, :cond_2

    .line 218
    :cond_5
    sget-object v1, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->EDIT_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iput-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    .line 220
    invoke-virtual {p0, v5, v5}, Lcom/samsung/inputmethod/composing/SimeCompView;->measure(II)V

    .line 221
    invoke-virtual {p0}, Lcom/samsung/inputmethod/composing/SimeCompView;->requestLayout()V

    goto :goto_2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 305
    sget-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->EDIT_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iget-object v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iget-object v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    if-ne v0, v2, :cond_2

    .line 307
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/composing/SimeCompView;->drawForPinyin(Landroid/graphics/Canvas;)V

    .line 333
    :cond_1
    :goto_0
    return-void

    .line 312
    :cond_2
    iget v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingLeft:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v4, v0

    .line 313
    .local v4, x:F
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    iget v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingTop:I

    add-int/2addr v0, v2

    int-to-float v5, v0

    .line 315
    .local v5, y:F
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mStrColorHl:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mHlDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingLeft:I

    iget v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/samsung/inputmethod/composing/SimeCompView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingRight:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/samsung/inputmethod/composing/SimeCompView;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingBottom:I

    sub-int/2addr v7, v8

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 318
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mHlDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 320
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    sget-object v2, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9DECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    if-ne v0, v2, :cond_4

    .line 321
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getOrigianlSplStr()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, splStr:Ljava/lang/String;
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mNeedSuspens:Z

    if-eqz v0, :cond_3

    .line 330
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/composing/SimeCompView;->getLimitedStringForDrawing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 323
    .end local v1           #splStr:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    sget-object v2, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9AWINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    if-ne v0, v2, :cond_1

    .line 324
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->getOrigianlSplStr()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #splStr:Ljava/lang/String;
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f00

    const/4 v5, 0x0

    .line 236
    iput-boolean v5, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mNeedSuspens:Z

    .line 237
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingBottom:I

    add-int v0, v3, v4

    .line 239
    .local v0, height:I
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    sget-object v4, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9DECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    if-ne v3, v4, :cond_7

    .line 241
    iget v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingLeft:I

    iget v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xa

    int-to-float v2, v3

    .line 243
    .local v2, width:F
    sget-object v3, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_STRING_LOWERCASE:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    if-ne v3, v4, :cond_4

    .line 244
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getOrigianlSplStr()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 246
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    add-float/2addr v3, v6

    add-float/2addr v2, v3

    .line 256
    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_6

    .line 257
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v3

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingComposingWindowPadding()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 258
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v3

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingComposingWindowPadding()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 259
    iput-boolean v7, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mNeedSuspens:Z

    .line 296
    .end local v1           #str:Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    .line 297
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/composing/SimeCompView;->setVisibility(I)V

    .line 298
    :cond_3
    float-to-int v3, v2

    invoke-virtual {p0, v3, v0}, Lcom/samsung/inputmethod/composing/SimeCompView;->setMeasuredDimension(II)V

    .line 300
    return-void

    .line 249
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    .line 251
    .restart local v1       #str:Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 252
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getActiveCmpsDisplayLen()I

    move-result v4

    invoke-virtual {v3, v1, v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    add-float/2addr v3, v6

    add-float/2addr v2, v3

    .line 253
    :cond_5
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getActiveCmpsDisplayLen()I

    move-result v3

    if-nez v3, :cond_0

    .line 254
    const/4 v2, 0x0

    goto :goto_0

    .line 262
    :cond_6
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 263
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v3

    int-to-float v2, v3

    .line 264
    iput-boolean v7, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mNeedSuspens:Z

    goto :goto_1

    .line 268
    .end local v1           #str:Ljava/lang/String;
    .end local v2           #width:F
    :cond_7
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    sget-object v4, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9AWINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    if-ne v3, v4, :cond_b

    .line 270
    iget v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingLeft:I

    iget v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xa

    int-to-float v2, v3

    .line 273
    .restart local v2       #width:F
    sget-object v3, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_STRING_LOWERCASE:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    if-ne v3, v4, :cond_9

    .line 274
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->getOrigianlSplStr()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    .restart local v1       #str:Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 276
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    add-float/2addr v3, v6

    add-float/2addr v2, v3

    .line 286
    :cond_8
    :goto_2
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 287
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v3

    int-to-float v2, v3

    .line 288
    iput-boolean v7, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mNeedSuspens:Z

    goto/16 :goto_1

    .line 279
    .end local v1           #str:Ljava/lang/String;
    :cond_9
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    .line 281
    .restart local v1       #str:Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 282
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->getActiveCmpsDisplayLen()I

    move-result v4

    invoke-virtual {v3, v1, v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    add-float/2addr v3, v6

    add-float/2addr v2, v3

    .line 283
    :cond_a
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->getActiveCmpsDisplayLen()I

    move-result v3

    if-nez v3, :cond_8

    .line 284
    const/4 v2, 0x0

    goto :goto_2

    .line 292
    .end local v1           #str:Ljava/lang/String;
    .end local v2           #width:F
    :cond_b
    const/4 v2, 0x0

    .restart local v2       #width:F
    goto/16 :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    .line 162
    return-void
.end method

.method public setDecodingInfo(Lcom/samsung/inputmethod/decoder/SimeDecManager;Lcom/samsung/inputmethod/SamsungIME$ImeState;)V
    .locals 3
    .parameter "mDecInfoMgr"
    .parameter "imeStatus"

    .prologue
    const/4 v2, -0x2

    .line 173
    invoke-virtual {p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDecType()Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    .line 174
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9DECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    if-ne v0, v1, :cond_5

    .line 176
    invoke-virtual {p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    check-cast v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    .line 177
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v0, p2, :cond_0

    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v0, p2, :cond_2

    .line 179
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    .line 200
    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v2}, Lcom/samsung/inputmethod/composing/SimeCompView;->measure(II)V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/inputmethod/composing/SimeCompView;->requestLayout()V

    .line 202
    invoke-virtual {p0}, Lcom/samsung/inputmethod/composing/SimeCompView;->invalidate()V

    .line 203
    return-void

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getFixedLen()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->EDIT_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    if-ne v0, v1, :cond_4

    .line 186
    :cond_3
    sget-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->EDIT_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    .line 192
    :goto_1
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->moveCursor(I)V

    goto :goto_0

    .line 190
    :cond_4
    sget-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_STRING_LOWERCASE:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    goto :goto_1

    .line 195
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9AWINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    if-ne v0, v1, :cond_1

    .line 197
    invoke-virtual {p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    check-cast v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    .line 198
    sget-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    goto :goto_0
.end method
