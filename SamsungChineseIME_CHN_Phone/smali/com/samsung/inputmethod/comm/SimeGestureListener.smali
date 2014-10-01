.class public Lcom/samsung/inputmethod/comm/SimeGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SimeGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MIN_X_FOR_DRAG:I = 0x78

.field private static final MIN_Y_FOR_DRAG:I = 0x28

.field private static final TAG:Ljava/lang/String; = "OnGestureListener"

.field private static final VELOCITY_THRESHOLD_X1:F = 0.2f

.field private static final VELOCITY_THRESHOLD_X2:F = 0.6f

.field private static final VELOCITY_THRESHOLD_Y1:F = 0.1f

.field private static final VELOCITY_THRESHOLD_Y2:F = 0.9f


# instance fields
.field private mDirectionGestureHandle:Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;

.field private mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mGestureRecognized:Z

.field private mMinVelocityX:F

.field private mMinVelocityY:F

.field private mNotGesture:Z

.field private mReponseGestures:Z

.field private mTimeDown:J

.field private mTimeLastOnScroll:J


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter "reponseGestures"

    .prologue
    const v0, 0x7f7fffff

    .line 94
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 73
    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mMinVelocityX:F

    .line 76
    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mMinVelocityY:F

    .line 96
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 97
    iput-boolean p1, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mReponseGestures:Z

    .line 98
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/high16 v0, 0x4f00

    const/4 v2, 0x0

    .line 109
    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mMinVelocityX:F

    .line 110
    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mMinVelocityY:F

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mTimeDown:J

    .line 112
    iget-wide v0, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mTimeDown:J

    iput-wide v0, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mTimeLastOnScroll:J

    .line 113
    iput-boolean v2, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mNotGesture:Z

    .line 114
    iput-boolean v2, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mGestureRecognized:Z

    .line 115
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "me1"
    .parameter "me2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 209
    sget-boolean v7, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_POINTING_KEYBOARD_FEATURE:Z

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->GetSwipeOnKeyboard()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 210
    const/4 v7, 0x0

    .line 259
    :goto_0
    return v7

    .line 212
    :cond_0
    if-nez p1, :cond_1

    .line 213
    const/4 v7, 0x0

    goto :goto_0

    .line 214
    :cond_1
    if-nez p2, :cond_2

    .line 215
    const/4 v7, 0x0

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 218
    .local v4, xDistance:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 220
    .local v6, yDistance:F
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v7

    sget-object v8, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v7, v8, :cond_3

    .line 221
    iget-object v7, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    int-to-float v5, v7

    .line 225
    .local v5, xMinDistance:F
    :goto_1
    cmpg-float v7, v4, v5

    if-gez v7, :cond_4

    const/high16 v7, 0x4220

    cmpg-float v7, v6, v7

    if-gez v7, :cond_4

    .line 226
    const/4 v7, 0x0

    goto :goto_0

    .line 223
    .end local v5           #xMinDistance:F
    :cond_3
    iget-object v7, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v5, v7

    .restart local v5       #xMinDistance:F
    goto :goto_1

    .line 229
    :cond_4
    const v7, 0x3a83126f

    mul-float v0, p3, v7

    .line 230
    .local v0, VXTotal:F
    const v7, 0x3a83126f

    mul-float v1, p4, v7

    .line 232
    .local v1, VYTotal:F
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3a83126f

    mul-float v2, v7, v8

    .line 233
    .local v2, absVXTotal:F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3a83126f

    mul-float v3, v7, v8

    .line 235
    .local v3, absVYTotal:F
    const v7, 0x3e4ccccd

    cmpg-float v7, v2, v7

    if-gez v7, :cond_5

    const v7, 0x3dcccccd

    cmpg-float v7, v3, v7

    if-gez v7, :cond_5

    .line 236
    const/4 v7, 0x0

    goto :goto_0

    .line 240
    :cond_5
    const v7, 0x3f19999a

    cmpl-float v7, v0, v7

    if-lez v7, :cond_7

    const v7, 0x3f666666

    cmpg-float v7, v3, v7

    if-gez v7, :cond_7

    .line 242
    iget-boolean v7, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mReponseGestures:Z

    if-eqz v7, :cond_6

    cmpl-float v7, v4, v5

    if-ltz v7, :cond_6

    .line 243
    iget-object v7, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mDirectionGestureHandle:Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;

    const/4 v8, 0x5

    invoke-interface {v7, v8}, Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;->onDirectionGesture(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mGestureRecognized:Z

    .line 259
    :cond_6
    :goto_2
    iget-boolean v7, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mGestureRecognized:Z

    goto/16 :goto_0

    .line 245
    :cond_7
    const v7, -0x40e66666

    cmpg-float v7, v0, v7

    if-gez v7, :cond_8

    const v7, 0x3f666666

    cmpg-float v7, v3, v7

    if-gez v7, :cond_8

    .line 247
    iget-boolean v7, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mReponseGestures:Z

    if-eqz v7, :cond_6

    cmpl-float v7, v4, v5

    if-ltz v7, :cond_6

    .line 248
    iget-object v7, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mDirectionGestureHandle:Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;->onDirectionGesture(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mGestureRecognized:Z

    goto :goto_2

    .line 250
    :cond_8
    const v7, 0x3f666666

    cmpl-float v7, v1, v7

    if-lez v7, :cond_9

    const v7, 0x3f19999a

    cmpg-float v7, v2, v7

    if-gez v7, :cond_9

    .line 251
    iget-boolean v7, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mReponseGestures:Z

    if-eqz v7, :cond_6

    .line 252
    iget-object v7, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mDirectionGestureHandle:Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;

    const/16 v8, 0x50

    invoke-interface {v7, v8}, Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;->onDirectionGesture(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mGestureRecognized:Z

    goto :goto_2

    .line 254
    :cond_9
    const v7, -0x4099999a

    cmpg-float v7, v1, v7

    if-gez v7, :cond_6

    const v7, 0x3f19999a

    cmpg-float v7, v2, v7

    if-gez v7, :cond_6

    .line 255
    iget-boolean v7, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mReponseGestures:Z

    if-eqz v7, :cond_6

    .line 256
    iget-object v7, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mDirectionGestureHandle:Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;

    const/16 v8, 0x30

    invoke-interface {v7, v8}, Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;->onDirectionGesture(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mGestureRecognized:Z

    goto :goto_2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public setDirectionGestureHandle(Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;)V
    .locals 0
    .parameter "mHandle"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mDirectionGestureHandle:Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;

    .line 102
    return-void
.end method
