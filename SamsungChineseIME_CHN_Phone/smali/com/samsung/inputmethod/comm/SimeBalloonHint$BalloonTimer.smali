.class Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;
.super Landroid/os/Handler;
.source "SimeBalloonHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/comm/SimeBalloonHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BalloonTimer"
.end annotation


# static fields
.field public static final ACTION_HIDE:I = 0x2

.field public static final ACTION_SHOW:I = 0x1

.field public static final ACTION_UPDATE:I = 0x3


# instance fields
.field private mAction:I

.field private mHeight:I

.field private mPositionInParent:[I

.field private mTimerPending:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/samsung/inputmethod/comm/SimeBalloonHint;


# direct methods
.method private constructor <init>(Lcom/samsung/inputmethod/comm/SimeBalloonHint;)V
    .locals 1
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->this$0:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 310
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mPositionInParent:[I

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mTimerPending:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/inputmethod/comm/SimeBalloonHint;Lcom/samsung/inputmethod/comm/SimeBalloonHint$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;-><init>(Lcom/samsung/inputmethod/comm/SimeBalloonHint;)V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mAction:I

    return v0
.end method

.method public isPending()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mTimerPending:Z

    return v0
.end method

.method public removeTimer()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 334
    iget-boolean v1, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mTimerPending:Z

    if-eqz v1, :cond_0

    .line 335
    iput-boolean v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mTimerPending:Z

    .line 336
    invoke-virtual {p0, p0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 337
    const/4 v0, 0x1

    .line 340
    :cond_0
    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 348
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mAction:I

    packed-switch v0, :pswitch_data_0

    .line 363
    :goto_0
    iput-boolean v7, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mTimerPending:Z

    .line 364
    return-void

    .line 350
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->this$0:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    #getter for: Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParent:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->access$200(Lcom/samsung/inputmethod/comm/SimeBalloonHint;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->this$0:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    #getter for: Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParentLocationInWindow:[I
    invoke-static {v1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->access$100(Lcom/samsung/inputmethod/comm/SimeBalloonHint;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 351
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->this$0:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->this$0:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    #getter for: Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParent:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->access$200(Lcom/samsung/inputmethod/comm/SimeBalloonHint;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x33

    iget-object v3, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v4, v4, v6

    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->this$0:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    #getter for: Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParentLocationInWindow:[I
    invoke-static {v5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->access$100(Lcom/samsung/inputmethod/comm/SimeBalloonHint;)[I

    move-result-object v5

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 356
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->this$0:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->dismiss()V

    goto :goto_0

    .line 359
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->this$0:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    #getter for: Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParent:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->access$200(Lcom/samsung/inputmethod/comm/SimeBalloonHint;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->this$0:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    #getter for: Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParentLocationInWindow:[I
    invoke-static {v1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->access$100(Lcom/samsung/inputmethod/comm/SimeBalloonHint;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 360
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->this$0:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->this$0:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    #getter for: Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParentLocationInWindow:[I
    invoke-static {v3}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->access$100(Lcom/samsung/inputmethod/comm/SimeBalloonHint;)[I

    move-result-object v3

    aget v3, v3, v6

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mWidth:I

    iget v4, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->update(IIII)V

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startTimer(JI[III)V
    .locals 4
    .parameter "time"
    .parameter "action"
    .parameter "positionInParent"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 318
    iput p3, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mAction:I

    .line 319
    const/4 v0, 0x2

    if-eq v0, p3, :cond_0

    .line 320
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v1, p4, v3

    aput v1, v0, v3

    .line 321
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v1, p4, v2

    aput v1, v0, v2

    .line 323
    :cond_0
    iput p5, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mWidth:I

    .line 324
    iput p6, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mHeight:I

    .line 325
    invoke-virtual {p0, p0, p1, p2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 326
    iput-boolean v2, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->mTimerPending:Z

    .line 327
    return-void
.end method
