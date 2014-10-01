.class Lcom/sec/android/app/FileShareClient/OutboundFragment$4;
.super Ljava/lang/Object;
.source "OutboundFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileShareClient/OutboundFragment;->updateReciver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileShareClient/OutboundFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$4;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$4;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    iget-object v0, v0, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$4;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    iget-object v1, v1, Lcom/sec/android/app/FileShareClient/OutboundFragment;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 454
    return-void
.end method
