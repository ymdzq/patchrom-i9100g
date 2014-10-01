.class Lcom/sec/android/app/FileShareClient/OutboundFragment$1;
.super Ljava/lang/Object;
.source "OutboundFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileShareClient/OutboundFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$1;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$1;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    #getter for: Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbReadyFileList:Z
    invoke-static {v0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$000(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$1;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    #getter for: Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCustomAdapter:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$400(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$1;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    #getter for: Lcom/sec/android/app/FileShareClient/OutboundFragment;->mSendFileList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$100(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$1;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    #getter for: Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbCompleted:Z
    invoke-static {v2}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$200(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$1;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    #getter for: Lcom/sec/android/app/FileShareClient/OutboundFragment;->mCurrentStateText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$300(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->showSendFileListDialog(Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method
