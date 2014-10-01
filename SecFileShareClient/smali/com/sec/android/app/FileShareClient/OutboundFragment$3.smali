.class Lcom/sec/android/app/FileShareClient/OutboundFragment$3;
.super Ljava/lang/Object;
.source "OutboundFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileShareClient/OutboundFragment;
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
    .line 434
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$3;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$3;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    #getter for: Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCustomAdapter:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$400(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->notifyDataSetChanged()V

    .line 439
    return-void
.end method
