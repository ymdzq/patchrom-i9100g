.class final Landroid/hardware/motion/MotionRecognitionService$PollIntThread;
.super Ljava/lang/Thread;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PollIntThread"
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mMainHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method public constructor <init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 293
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 294
    iput-object p2, p0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->mMainHandler:Landroid/os/Handler;

    .line 295
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 297
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 299
    new-instance v0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread$1;

    invoke-direct {v0, p0}, Landroid/hardware/motion/MotionRecognitionService$PollIntThread$1;-><init>(Landroid/hardware/motion/MotionRecognitionService$PollIntThread;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->mHandler:Landroid/os/Handler;

    .line 364
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 365
    return-void
.end method
