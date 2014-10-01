.class public Lcom/samsung/inputmethod/floating/SimeMoveHandler;
.super Landroid/widget/PopupWindow;
.source "SimeMoveHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MIN_DISTANCE_X:I = 0x1

.field private static final MIN_DISTANCE_Y:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SimeFloatingInputWindow"


# instance fields
.field private mContentView:Landroid/widget/Button;

.field private mDownPoint:Landroid/graphics/Point;

.field mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mParentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .parameter "context"
    .parameter "parent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object v2, p1

    .line 59
    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    iput-object v2, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 61
    .local v1, r:Landroid/content/res/Resources;
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 63
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->setInputMethodMode(I)V

    .line 64
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->setSplitTouchEnabled(Z)V

    .line 65
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->setClippingEnabled(Z)V

    .line 66
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->setLayoutInScreenEnabled(Z)V

    .line 68
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->mContentView:Landroid/widget/Button;

    .line 69
    iget-object v2, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->mContentView:Landroid/widget/Button;

    const v3, 0x7f020010

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 70
    iget-object v2, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->mContentView:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    iget-object v2, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->mContentView:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->setContentView(Landroid/view/View;)V

    .line 73
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const/16 v2, 0x7dc

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->setWindowLayoutType(I)V

    .line 78
    :cond_0
    iput-object p2, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->mParentView:Landroid/view/View;

    .line 80
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getMoveHandlerHeight()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->setHeight(I)V

    .line 81
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->setWidth(I)V

    .line 83
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->mDownPoint:Landroid/graphics/Point;

    .line 84
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "arg0"
    .parameter "event"

    .prologue
    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 109
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v3, v5

    .line 110
    .local v3, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v4, v5

    .line 112
    .local v4, y:I
    const/4 v1, 0x0

    .line 113
    .local v1, distanceX:I
    const/4 v2, 0x0

    .line 115
    .local v2, distanceY:I
    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    :pswitch_0
    const/4 v5, 0x0

    return v5

    .line 119
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->mDownPoint:Landroid/graphics/Point;

    iput v3, v5, Landroid/graphics/Point;->x:I

    .line 120
    iget-object v5, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->mDownPoint:Landroid/graphics/Point;

    iput v4, v5, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->mDownPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v5

    .line 124
    iget-object v5, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->mDownPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v2, v4, v5

    .line 131
    iget-object v5, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->mDownPoint:Landroid/graphics/Point;

    iput v3, v5, Landroid/graphics/Point;->x:I

    .line 132
    iget-object v5, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->mDownPoint:Landroid/graphics/Point;

    iput v4, v5, Landroid/graphics/Point;->y:I

    .line 133
    iget-object v5, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->updateFloatingPanel(II)V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public show(II)V
    .locals 2
    .parameter "locationX"
    .parameter "locationY"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->mParentView:Landroid/view/View;

    const/16 v1, 0x53

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->getHeight()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/inputmethod/floating/SimeMoveHandler;->update(IIII)V

    goto :goto_0
.end method
