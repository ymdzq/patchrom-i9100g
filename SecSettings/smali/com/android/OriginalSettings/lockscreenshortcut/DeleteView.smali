.class public Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;
.super Landroid/widget/ImageView;
.source "DeleteView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static TEXT_SIZE:I


# instance fields
.field final kLidUpHeight:I

.field private mAngleDirection:F

.field mCurrentAnimator:Landroid/animation/Animator;

.field private mIsAnimating:Z

.field private mIsLandscape:Z

.field private mIsNormalTrashIcon:Z

.field private mIsOnDeleting:Z

.field private mIsTablet:Z

.field private mIsTrashCanShakeMode:Z

.field private mLidAngle:F

.field private mLidOffsetY:I

.field private mNormalTrash:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviousLidShakeValue:F

.field private mTrashBinOnly:Landroid/graphics/Bitmap;

.field private mTrashCan:Landroid/graphics/Bitmap;

.field private mTrashCanAlpha:F

.field private mTrashCanFill:Landroid/graphics/Bitmap;

.field private mTrashCanFillAlpha:F

.field private mTrashIcon:Landroid/graphics/drawable/Drawable;

.field private mTrashLidOnly:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0xe

    sput v0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    .line 62
    iput v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidAngle:F

    .line 331
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    .line 359
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 67
    invoke-direct {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->init()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    .line 62
    iput v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidAngle:F

    .line 331
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    .line 359
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 72
    invoke-direct {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    .line 62
    iput v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidAngle:F

    .line 331
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    .line 359
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 77
    invoke-direct {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->init()V

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->isTrashCanShakeMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    return p1
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V
    .locals 5
    .parameter "canvas"
    .parameter "bitmap"
    .parameter "bounds"
    .parameter "alpha"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    .line 173
    .local v0, dx:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    .line 175
    .local v1, dy:I
    iget-boolean v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 181
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f

    mul-float/2addr v3, p4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 182
    iget v2, p3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 183
    return-void

    .line 178
    :cond_0
    sget v2, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private getTextPaint()Landroid/graphics/Paint;
    .locals 5

    .prologue
    .line 192
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 193
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    const/high16 v1, 0x4040

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/high16 v4, -0x100

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 195
    sget v1, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 196
    return-object v0
.end method

.method private getTrashCanLidAngle()F
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidAngle:F

    return v0
.end method

.method private init()V
    .locals 6

    .prologue
    const v3, 0x7f02033b

    const/4 v5, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 83
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0f0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    .line 85
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 86
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 88
    const v2, 0x7f02033d

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCan:Landroid/graphics/Bitmap;

    .line 91
    const v2, 0x7f02033c

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCanFill:Landroid/graphics/Bitmap;

    .line 94
    const v2, 0x7f02033e

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashBinOnly:Landroid/graphics/Bitmap;

    .line 97
    const v2, 0x7f02033f

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    .line 100
    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mNormalTrash:Landroid/graphics/Bitmap;

    .line 103
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    .line 104
    iget-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    .line 108
    return-void
.end method

.method private isTrashCanShakeMode()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    return v0
.end method

.method private setTrashCanFillAlpha(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 220
    iput p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    .line 221
    return-void
.end method

.method private setTrashCanLidAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 244
    iput p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidAngle:F

    .line 245
    return-void
.end method

.method private setTrashCanLidOffset(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 240
    iput p2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    .line 241
    return-void
.end method

.method private setTrashCanShakeMode(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    .line 225
    return-void
.end method

.method private startAnimator(IJ)V
    .locals 2
    .parameter "animatorId"
    .parameter "startDelay"

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 257
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 258
    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 259
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 260
    iput-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    .line 261
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    .line 117
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 121
    .local v4, r:Landroid/graphics/Rect;
    iget-boolean v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    if-eqz v6, :cond_0

    .line 122
    iget-object v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mNormalTrash:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v6, v4, v9}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 126
    iget-boolean v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    if-eqz v6, :cond_4

    .line 127
    iget-object v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashBinOnly:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v6, v4, v9}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 128
    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 130
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v6

    div-int/lit8 v1, v6, 0x2

    .line 131
    .local v1, lidCenterX:I
    iget-object v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    .line 132
    .local v2, lidCenterY:I
    iget-boolean v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    if-eqz v6, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    .line 134
    iget-object v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v2, v6, 0x5

    .line 137
    :cond_1
    iget-boolean v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    if-eqz v6, :cond_3

    .line 138
    iget v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidAngle:F

    const/high16 v7, 0x40a0

    div-float/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v1

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v2

    int-to-float v8, v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 142
    :goto_0
    iget-object v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v6, v4, v9}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 155
    .end local v1           #lidCenterX:I
    .end local v2           #lidCenterY:I
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 156
    .local v5, width:I
    iget-object v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 158
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 160
    .local v3, mDensityScale:I
    iget-boolean v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    if-eqz v6, :cond_6

    .line 161
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v0, 0x6

    add-int/2addr v7, v8

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->drawText(Landroid/graphics/Canvas;II)V

    .line 169
    :goto_2
    return-void

    .line 140
    .end local v0           #height:I
    .end local v3           #mDensityScale:I
    .end local v5           #width:I
    .restart local v1       #lidCenterX:I
    .restart local v2       #lidCenterY:I
    :cond_3
    iget v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidAngle:F

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v1

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v2

    int-to-float v8, v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    .line 146
    .end local v1           #lidCenterX:I
    .end local v2           #lidCenterY:I
    :cond_4
    iget v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_5

    .line 147
    iget-object v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCan:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    invoke-direct {p0, p1, v6, v4, v7}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 149
    :cond_5
    iget v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_2

    .line 150
    iget-object v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCanFill:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    invoke-direct {p0, p1, v6, v4, v7}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    goto :goto_1

    .line 162
    .restart local v0       #height:I
    .restart local v3       #mDensityScale:I
    .restart local v5       #width:I
    :cond_6
    const/16 v6, 0xa0

    if-gt v3, v6, :cond_7

    .line 163
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v0, 0x2

    add-int/2addr v7, v8

    sget v8, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    mul-int/lit8 v8, v8, 0x1

    div-int/lit8 v8, v8, 0x6

    add-int/2addr v7, v8

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->drawText(Landroid/graphics/Canvas;II)V

    goto :goto_2

    .line 165
    :cond_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v0, 0x2

    add-int/2addr v7, v8

    sget v8, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    mul-int/lit8 v8, v8, 0x2

    div-int/lit8 v8, v8, 0x6

    add-int/2addr v7, v8

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->drawText(Landroid/graphics/Canvas;II)V

    goto :goto_2
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 8
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    const v2, 0x7f0907cb

    .line 200
    if-gez p2, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    .line 204
    .local v7, length:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int p2, v0, v2

    .line 205
    const/4 v2, 0x0

    div-int/lit8 v3, v7, 0x2

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-direct {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 206
    div-int/lit8 v2, v7, 0x2

    int-to-float v4, p2

    sget v0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    add-int/2addr v0, p3

    int-to-float v5, v0

    invoke-direct {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v0, p1

    move v3, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 212
    .end local v1           #text:Ljava/lang/String;
    .end local v7           #length:I
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-direct {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getTextWidth()I
    .locals 4

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0907cb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 187
    .local v0, width:I
    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 414
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 410
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 418
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 406
    return-void
.end method

.method protected setAnimating(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 233
    return-void
.end method

.method public setFadeOutTrashCan(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 472
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    .line 473
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 477
    return-void
.end method

.method public setNormalTrashIcon()V
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 489
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 490
    return-void
.end method

.method public setOrienationMode(Z)V
    .locals 0
    .parameter "isLandscape"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    .line 112
    return-void
.end method

.method protected setTrashCanAlpha(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 215
    iput p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    .line 216
    return-void
.end method

.method public setTrashCanFill(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 389
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    .line 390
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanFillAlpha(F)V

    .line 391
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 392
    return-void
.end method

.method public setTrashCanLidDown(F)V
    .locals 4
    .parameter "value"

    .prologue
    const/high16 v3, 0x3f80

    .line 344
    const/4 v0, 0x0

    const/high16 v1, 0x4080

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanLidOffset(II)V

    .line 345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanLidAngle(F)V

    .line 346
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 347
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_0

    .line 352
    :cond_0
    return-void
.end method

.method public setTrashCanLidShake(F)V
    .locals 9
    .parameter "value"

    .prologue
    const/high16 v8, 0x4100

    const/high16 v7, -0x3ec0

    const/high16 v6, -0x4080

    const/high16 v5, 0x4140

    .line 362
    const/high16 v2, 0x4100

    .line 363
    .local v2, kHalfCycles:F
    mul-float/2addr p1, v8

    .line 364
    const/high16 v3, 0x4140

    .line 365
    .local v3, kShakeMaxAngle:F
    invoke-direct {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getTrashCanLidAngle()F

    move-result v0

    .line 366
    .local v0, angle:F
    iget v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mPreviousLidShakeValue:F

    sub-float v1, p1, v4

    .line 367
    .local v1, dv:F
    iput p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mPreviousLidShakeValue:F

    .line 368
    iget v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 369
    cmpl-float v4, v0, v5

    if-lez v4, :cond_2

    .line 370
    sub-float v4, v0, v5

    sub-float v0, v5, v4

    .line 371
    iget v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 377
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanLidAngle(F)V

    .line 378
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 379
    cmpl-float v4, p1, v8

    if-ltz v4, :cond_1

    .line 382
    :cond_1
    return-void

    .line 373
    :cond_2
    cmpg-float v4, v0, v7

    if-gez v4, :cond_0

    .line 374
    add-float v4, v0, v5

    sub-float v0, v7, v4

    .line 375
    iget v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    goto :goto_0
.end method

.method public setTrashCanLidUp(F)V
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v2, 0x3f80

    .line 333
    const/4 v0, 0x0

    const/high16 v1, 0x4080

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanLidOffset(II)V

    .line 334
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 335
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    .line 336
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mPreviousLidShakeValue:F

    .line 337
    iput v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 341
    :cond_0
    return-void
.end method

.method public setTrashCanUnfill(F)V
    .locals 2
    .parameter "value"

    .prologue
    const/high16 v1, 0x3f80

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    .line 397
    sub-float v0, v1, p1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanFillAlpha(F)V

    .line 398
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 399
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 401
    return-void

    .line 399
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    if-nez v0, :cond_0

    .line 482
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    :cond_0
    return-void
.end method

.method public startTrashCanFillUnfillAnimation()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 421
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    .line 422
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 424
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 425
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060001

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 426
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 427
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 428
    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 429
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060005

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 432
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 433
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 434
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 435
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 438
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 439
    new-instance v3, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView$2;-><init>(Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 461
    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 462
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 465
    .local v2, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 466
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 467
    return-void
.end method

.method public startTrashCanShakeAnimation()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x3c

    const/4 v4, 0x0

    .line 265
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 266
    const/high16 v3, 0x3f80

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    .line 267
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanFillAlpha(F)V

    .line 268
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanShakeMode(Z)V

    .line 269
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanLidAngle(F)V

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060004

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 274
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 275
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 276
    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 277
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060003

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 282
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 283
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060002

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 286
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 287
    new-instance v3, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView$1;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView$1;-><init>(Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 310
    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 311
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 314
    .local v2, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 315
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 316
    iput-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    .line 318
    return-void
.end method

.method public stopTrashCanShakeAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 321
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 324
    :cond_0
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    .line 325
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 326
    return-void
.end method
