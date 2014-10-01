.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;
.super Ljava/lang/Object;
.source "SimeSkbKeyboardPointing.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final MOVE_AXIS_X:I = 0x1

.field public static final MOVE_AXIS_Y:I = 0x2

.field public static final MOVE_NONE:I = 0x0

.field public static final MOVE_THRESHOLD:I = 0x32

.field public static final THRESHOLD_X:I = 0xa

.field public static final THRESHOLD_Y:I = 0x28

.field private static mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

.field private static mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;


# instance fields
.field PointingMotion:Landroid/view/MotionEvent;

.field private beforeX:F

.field private beforeY:F

.field private currentX:F

.field private currentY:F

.field private fisrtDownX:F

.field private fisrtDownY:F

.field private mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private pointingAction:Z

.field private pointingMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownX:F

    .line 21
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownY:F

    .line 23
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeX:F

    .line 24
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeY:F

    .line 26
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    .line 27
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    .line 41
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingAction:Z

    .line 42
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingMode:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    .line 47
    invoke-static {}, Lcom/samsung/inputmethod/SamsungIME;->getInstance()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    .line 48
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 2
    .parameter "imeService"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownX:F

    .line 21
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownY:F

    .line 23
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeX:F

    .line 24
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeY:F

    .line 26
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    .line 27
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    .line 41
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingAction:Z

    .line 42
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingMode:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    .line 52
    sput-object p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    .line 53
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 54
    return-void
.end method

.method private getDistance(FFFF)I
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "endX"
    .parameter "endY"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 180
    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v2, p2, p4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    .line 60
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    return-object v0
.end method


# virtual methods
.method public checkNeedMove(Landroid/view/MotionEvent;)I
    .locals 3
    .parameter "me"

    .prologue
    const/4 v2, 0x1

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, moveDirection:I
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    .line 85
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->isPointingKeyboard(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingMode:Z

    .line 88
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingMode:Z

    if-eqz v1, :cond_3

    .line 89
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingAction:Z

    .line 90
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4120

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 91
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    .line 92
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4220

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 93
    const/4 v0, 0x2

    goto :goto_0

    .line 95
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingAction:Z

    .line 98
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishPointing()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingMode:Z

    .line 233
    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingAction:Z

    .line 234
    return-void
.end method

.method public getDirectionX(Landroid/view/MotionEvent;)I
    .locals 3
    .parameter "me"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, directionX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    .line 188
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 189
    const/16 v0, 0x16

    .line 193
    :goto_0
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeX:F

    .line 195
    return v0

    .line 191
    :cond_0
    const/16 v0, 0x15

    goto :goto_0
.end method

.method public getDirectionY(Landroid/view/MotionEvent;)I
    .locals 3
    .parameter "me"

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, directionY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    .line 202
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeY:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 203
    const/16 v0, 0x14

    .line 207
    :goto_0
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeY:F

    .line 209
    return v0

    .line 205
    :cond_0
    const/16 v0, 0x13

    goto :goto_0
.end method

.method public getMultiDirection()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 105
    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWidth()I

    move-result v4

    .line 106
    .local v4, width:I
    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v1

    .line 108
    .local v1, height:I
    div-int/lit8 v2, v4, 0xa

    .line 109
    .local v2, validRangeX:I
    div-int/lit8 v3, v1, 0x5

    .line 111
    .local v3, validRangeY:I
    const/16 v0, 0x56

    .line 116
    .local v0, addHeight:I
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    cmpg-float v5, v7, v5

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v6, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 117
    const/16 v5, 0x15

    .line 125
    :goto_0
    return v5

    .line 118
    :cond_0
    sub-int v5, v4, v2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v6, v4

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 119
    const/16 v5, 0x16

    goto :goto_0

    .line 120
    :cond_1
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    cmpg-float v5, v7, v5

    if-gtz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v6, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 121
    const/16 v5, 0x13

    goto :goto_0

    .line 122
    :cond_2
    sub-int v5, v1, v3

    int-to-float v5, v5

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v6, v1

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 123
    const/16 v5, 0x14

    goto :goto_0

    .line 125
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isConditionCheck(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "me"

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->isPointingKeyboard(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->isCurrentLocation(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentLocation(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "me"

    .prologue
    .line 162
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeX:F

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownX:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeY:F

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownY:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPointingAction()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingAction:Z

    return v0
.end method

.method public isPointingKeyboard(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "me"

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, currentDistance:I
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownX:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownY:F

    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->getDistance(FFFF)I

    move-result v0

    .line 143
    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 144
    const/4 v1, 0x1

    .line 146
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDownKeyEvent(I)V
    .locals 16
    .parameter "keyEventCode"

    .prologue
    .line 213
    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v15

    .line 215
    .local v15, ic:Landroid/view/inputmethod/InputConnection;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 217
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move/from16 v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 221
    .local v0, downKeyEvent:Landroid/view/KeyEvent;
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    move-wide v6, v1

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 225
    .local v3, upKeyEvent:Landroid/view/KeyEvent;
    if-eqz v15, :cond_0

    .line 226
    invoke-interface {v15, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 227
    invoke-interface {v15, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 229
    :cond_0
    return-void
.end method

.method public setDownPosition(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "me"

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownX:F

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownY:F

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    .line 74
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownX:F

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeX:F

    .line 75
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownY:F

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeY:F

    .line 77
    :cond_0
    return-void
.end method
