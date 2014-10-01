.class public Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;
.super Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;
.source "SimeHWBeautifyView.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeHWBeautifyView"

.field private static mBeautifyLinecolor:I

.field private static mBeautifyPaint:Landroid/graphics/Paint;

.field private static mBeautifyPath:Landroid/graphics/Path;

.field private static mBitmapPaint:Landroid/graphics/Paint;

.field private static mStrokeBmp:Landroid/graphics/Bitmap;

.field private static mStrokeCanvas:Landroid/graphics/Canvas;


# instance fields
.field public mInverseTranslateMatrix:Landroid/graphics/Matrix;

.field public mTranslateMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyLinecolor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;-><init>(Landroid/content/Context;)V

    .line 203
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mInverseTranslateMatrix:Landroid/graphics/Matrix;

    .line 204
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mTranslateMatrix:Landroid/graphics/Matrix;

    .line 62
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HANDWRITING_BEAUTIFY_FEATURE:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->CreateBeautifyView()V

    .line 64
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 203
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mInverseTranslateMatrix:Landroid/graphics/Matrix;

    .line 204
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mTranslateMatrix:Landroid/graphics/Matrix;

    .line 68
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HANDWRITING_BEAUTIFY_FEATURE:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->CreateBeautifyView()V

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public CreateBeautifyView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 74
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyPath:Landroid/graphics/Path;

    if-nez v4, :cond_0

    .line 75
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    sput-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyPath:Landroid/graphics/Path;

    .line 77
    :cond_0
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBitmapPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_1

    .line 78
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    sput-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 79
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 81
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 84
    :cond_1
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_2

    .line 86
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    sput-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyPaint:Landroid/graphics/Paint;

    .line 87
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 90
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 92
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 93
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v1

    .line 94
    .local v1, screenHeight:I
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    .line 95
    .local v2, screenWidth:I
    if-ge v1, v2, :cond_3

    .line 97
    move v3, v1

    .line 98
    .local v3, temp:I
    move v1, v2

    .line 99
    move v2, v3

    .line 105
    .end local v3           #temp:I
    :cond_3
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mStrokeBmp:Landroid/graphics/Bitmap;

    if-nez v4, :cond_4

    .line 107
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mStrokeBmp:Landroid/graphics/Bitmap;

    .line 109
    :cond_4
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mStrokeCanvas:Landroid/graphics/Canvas;

    if-nez v4, :cond_5

    .line 111
    new-instance v4, Landroid/graphics/Canvas;

    sget-object v5, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mStrokeBmp:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mStrokeCanvas:Landroid/graphics/Canvas;

    .line 112
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mStrokeCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 114
    :cond_5
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->clear()V

    .line 194
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HANDWRITING_BEAUTIFY_FEATURE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwritingStyle()I

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 198
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mStrokeBmp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 200
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->invalidate()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->draw(Landroid/graphics/Canvas;)V

    .line 123
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HANDWRITING_BEAUTIFY_FEATURE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwritingStyle()I

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 127
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 134
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mStrokeBmp:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getLastStrokePointer()[I
    .locals 9

    .prologue
    .line 253
    sget-object v7, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v5

    .line 254
    .local v5, num:I
    const/4 v1, 0x0

    .local v1, first:I
    const/4 v4, 0x0

    .line 255
    .local v4, last:I
    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_0
    if-lez v2, :cond_2

    .line 256
    sget-object v7, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mPointData:Ljava/util/Vector;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const v8, 0xffff

    if-ne v7, v8, :cond_0

    .line 258
    if-nez v1, :cond_1

    .line 259
    move v1, v2

    .line 255
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 262
    :cond_1
    add-int/lit8 v4, v2, 0x1

    .line 267
    :cond_2
    sub-int v7, v1, v4

    add-int/lit8 v6, v7, 0x1

    .line 268
    .local v6, pointnum:I
    new-array v0, v6, [I

    .line 270
    .local v0, data:[I
    move v3, v4

    .local v3, j:I
    :goto_1
    if-gt v3, v1, :cond_3

    .line 271
    sub-int v8, v3, v4

    sget-object v7, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v0, v8

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 281
    :cond_3
    return-object v0
.end method

.method public mapFromScene(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2
    .parameter "rect"

    .prologue
    .line 206
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 207
    .local v0, convertedRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 208
    return-object v0
.end method

.method public mapToScene(FF)Landroid/graphics/PointF;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 225
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 226
    .local v0, pts:[F
    aput p1, v0, v2

    .line 227
    aput p2, v0, v3

    .line 228
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mInverseTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 229
    new-instance v1, Landroid/graphics/PointF;

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method public mapToScene(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4
    .parameter "positon"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 218
    .local v0, pts:[F
    iget v1, p1, Landroid/graphics/PointF;->x:F

    aput v1, v0, v2

    .line 219
    iget v1, p1, Landroid/graphics/PointF;->y:F

    aput v1, v0, v3

    .line 220
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mInverseTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 221
    new-instance v1, Landroid/graphics/PointF;

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method public mapToScene(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2
    .parameter "rect"

    .prologue
    .line 211
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 212
    .local v0, mapRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mInverseTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 213
    return-object v0
.end method

.method public touch_up()V
    .locals 5

    .prologue
    .line 141
    invoke-super {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->touch_up()V

    .line 142
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HANDWRITING_BEAUTIFY_FEATURE:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwritingStyle()I

    move-result v2

    if-nez v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    sget-object v2, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 146
    sget-object v2, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    iget-object v2, v2, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mCBManager:Lcom/samsung/inputmethod/handwriting/BeautifyManager;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->getLastStrokePointer()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->createHTHPathFromPointArray([I)Landroid/graphics/Path;

    move-result-object v0

    .line 147
    .local v0, path:Landroid/graphics/Path;
    sget-object v2, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 148
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 149
    .local v1, rect:Landroid/graphics/RectF;
    sget-object v2, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyPath:Landroid/graphics/Path;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 151
    sget-object v2, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mStrokeBmp:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 153
    sget-object v2, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mStrokeCanvas:Landroid/graphics/Canvas;

    sget-object v3, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyPath:Landroid/graphics/Path;

    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public updateSetting()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 234
    invoke-super {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->updateSetting()V

    .line 235
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HANDWRITING_BEAUTIFY_FEATURE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwritingStyle()I

    move-result v0

    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 241
    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyLinecolor:I

    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mLineProperty:[I

    aget v1, v1, v2

    if-eq v0, v1, :cond_0

    .line 243
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mLineProperty:[I

    aget v0, v0, v2

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyLinecolor:I

    .line 244
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyPaint:Landroid/graphics/Paint;

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->mBeautifyLinecolor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method