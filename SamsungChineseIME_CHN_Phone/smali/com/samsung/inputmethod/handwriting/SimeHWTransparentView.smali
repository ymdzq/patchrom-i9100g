.class public Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;
.super Landroid/view/View;
.source "SimeHWTransparentView.java"


# static fields
.field protected static final DEBUG:Z = false

.field protected static MAX_MOVE_COUNT:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "SimeHWTransparentView"

.field protected static final TOUCH_TOLERANCE:I = 0x14

.field protected static dx:I

.field protected static dy:I

.field protected static isHandwriting:Z

.field protected static isStartWriting:Z

.field protected static mContext:Landroid/content/Context;

.field protected static mIsLineGradient:Z

.field protected static mLineGradientColors:[I

.field protected static mLineProperty:[I

.field protected static mLinecolor:I

.field protected static mLinewidth:I

.field protected static mPaint:Landroid/graphics/Paint;

.field protected static mPath:Landroid/graphics/Path;

.field protected static mPointData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

.field protected static mSpeed:I

.field protected static mX:I

.field protected static mY:I

.field protected static mlineGradient:Landroid/graphics/LinearGradient;

.field protected static stroke_count:S

.field protected static writable_y:I

.field protected static x:I

.field protected static y:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 61
    sput v2, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->MAX_MOVE_COUNT:I

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    .line 77
    sput-boolean v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->isStartWriting:Z

    .line 81
    sput-boolean v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mIsLineGradient:Z

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineProperty:[I

    .line 83
    new-array v0, v2, [I

    sput-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineGradientColors:[I

    .line 86
    const/high16 v0, -0x1

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLinecolor:I

    .line 87
    const/16 v0, 0x2bc

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSpeed:I

    .line 88
    sput-short v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->stroke_count:S

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->initView()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->initView()V

    .line 103
    return-void
.end method

.method public static setLineColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 327
    sput p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLinecolor:I

    .line 328
    return-void
.end method

.method public static setLineWidth(I)V
    .locals 1
    .parameter "line"

    .prologue
    .line 321
    if-lez p0, :cond_0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_0

    .line 322
    sput p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLinewidth:I

    .line 324
    :cond_0
    return-void
.end method

.method public static setSpeed(I)V
    .locals 1
    .parameter "sp"

    .prologue
    .line 315
    const/16 v0, 0x32

    if-le p0, v0, :cond_0

    const/16 v0, 0x1388

    if-gt p0, v0, :cond_0

    .line 316
    sput p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSpeed:I

    .line 318
    :cond_0
    return-void
.end method


# virtual methods
.method public addPointer([I)V
    .locals 2
    .parameter "point"

    .prologue
    .line 282
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 296
    sput-short v3, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->stroke_count:S

    .line 297
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 298
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPath:Landroid/graphics/Path;

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    int-to-float v1, v1

    sget v2, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 299
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->invalidate()V

    .line 301
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->cancelRecognize(Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;)V

    .line 302
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 303
    sput-boolean v3, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->isStartWriting:Z

    .line 304
    return-void
.end method

.method protected createLineGradient()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 260
    sget-boolean v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mIsLineGradient:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 261
    new-array v8, v11, [I

    .line 262
    .local v8, pt:[I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->getWidth()I

    move-result v0

    aput v0, v8, v9

    .line 263
    aget v0, v8, v9

    if-nez v0, :cond_1

    .line 274
    .end local v8           #pt:[I
    :cond_0
    :goto_0
    return-void

    .line 266
    .restart local v8       #pt:[I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->getHeight()I

    move-result v0

    aput v0, v8, v10

    .line 267
    new-instance v0, Landroid/graphics/LinearGradient;

    aget v1, v8, v9

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v3, v8, v9

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    aget v4, v8, v10

    int-to-float v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    sget-object v7, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineGradientColors:[I

    aget v7, v7, v9

    aput v7, v5, v9

    sget-object v7, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineGradientColors:[I

    aget v7, v7, v10

    aput v7, v5, v10

    sget-object v7, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineGradientColors:[I

    aget v7, v7, v11

    aput v7, v5, v11

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    sput-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mlineGradient:Landroid/graphics/LinearGradient;

    .line 272
    .end local v8           #pt:[I
    :cond_2
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    sget-boolean v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mIsLineGradient:Z

    if-eqz v1, :cond_3

    sget-object v6, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mlineGradient:Landroid/graphics/LinearGradient;

    :cond_3
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 131
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPath:Landroid/graphics/Path;

    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 132
    return-void
.end method

.method public getPointer()[I
    .locals 3

    .prologue
    .line 287
    sget-object v2, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v0, v2, [I

    .line 288
    .local v0, data:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 289
    sget-object v2, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    :cond_0
    return-object v0
.end method

.method protected initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 107
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPath:Landroid/graphics/Path;

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    .line 110
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineProperty:[I

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLine([I)V

    .line 111
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineProperty:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->setLineWidth(I)V

    .line 112
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineProperty:[I

    aget v0, v0, v2

    invoke-static {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->setLineColor(I)V

    .line 113
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpeed()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->setSpeed(I)V

    .line 117
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 120
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 122
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 123
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "me"

    .prologue
    const/4 v1, 0x1

    .line 184
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->miniSymbolScreenon:Z

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->minipopup_touch_outside:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MINIPOPUP_CLOSE_BUTTON_HIDE:Z

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->cancelMiniPopupWindow()V

    .line 188
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->minipopup_touch_outside:Z

    .line 217
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 198
    :pswitch_0
    sget-boolean v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->isStartWriting:Z

    if-nez v0, :cond_2

    .line 199
    sput-boolean v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->isStartWriting:Z

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->touch_down()V

    .line 202
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->invalidate()V

    goto :goto_0

    .line 205
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->touch_move()V

    goto :goto_0

    .line 208
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->touch_up()V

    .line 209
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->invalidate()V

    goto :goto_0

    .line 213
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->clear()V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setService(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 277
    sput-object p1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    .line 278
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getIMEService()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    sput-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mContext:Landroid/content/Context;

    .line 279
    return-void
.end method

.method protected touch_down()V
    .locals 3

    .prologue
    .line 136
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->cancelRecognize(Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;)V

    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->isStartWriting:Z

    .line 138
    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    if-ltz v0, :cond_0

    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    if-ltz v0, :cond_0

    .line 140
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPath:Landroid/graphics/Path;

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    int-to-float v1, v1

    sget v2, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 144
    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    .line 145
    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    .line 146
    return-void
.end method

.method protected touch_move()V
    .locals 6

    .prologue
    const/16 v3, 0x14

    .line 150
    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    if-le v0, v1, :cond_2

    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    sub-int/2addr v0, v1

    :goto_0
    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->dx:I

    .line 151
    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    if-le v0, v1, :cond_3

    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    sub-int/2addr v0, v1

    :goto_1
    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->dy:I

    .line 152
    sget-short v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->stroke_count:S

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->dx:I

    sget v2, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->dy:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-short v0, v0

    sput-short v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->stroke_count:S

    .line 153
    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->dx:I

    if-ge v0, v3, :cond_0

    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->dy:I

    if-lt v0, v3, :cond_4

    .line 154
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPath:Landroid/graphics/Path;

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    int-to-float v1, v1

    sget v2, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    int-to-float v2, v2

    sget v3, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    sget v4, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    sget v5, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 158
    :goto_2
    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    .line 159
    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    .line 160
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->invalidate()V

    .line 161
    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    if-ltz v0, :cond_1

    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    if-ltz v0, :cond_1

    .line 163
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_1
    return-void

    .line 150
    :cond_2
    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 151
    :cond_3
    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 156
    :cond_4
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPath:Landroid/graphics/Path;

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    int-to-float v1, v1

    sget v2, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2
.end method

.method protected touch_up()V
    .locals 3

    .prologue
    .line 170
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPath:Landroid/graphics/Path;

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    sget v2, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 171
    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    if-ltz v0, :cond_0

    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    if-ltz v0, :cond_0

    .line 173
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    const v1, 0xffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSpeed:I

    invoke-virtual {v0, p0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->startRecognize(Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;I)V

    .line 180
    return-void
.end method

.method public updateSetting()V
    .locals 2

    .prologue
    .line 245
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineProperty:[I

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLine([I)V

    .line 248
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineProperty:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->setLineWidth(I)V

    .line 249
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineProperty:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->setLineColor(I)V

    .line 250
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpeed()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->setSpeed(I)V

    .line 254
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLinewidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 255
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLinecolor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    :cond_0
    return-void
.end method
