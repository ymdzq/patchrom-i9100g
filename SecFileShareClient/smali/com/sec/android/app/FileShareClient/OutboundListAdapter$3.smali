.class Lcom/sec/android/app/FileShareClient/OutboundListAdapter$3;
.super Ljava/lang/Object;
.source "OutboundListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->showCancelConfirmDialog(Lcom/sec/android/app/FileShareClient/Receiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

.field final synthetic val$receiver:Lcom/sec/android/app/FileShareClient/Receiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileShareClient/OutboundListAdapter;Lcom/sec/android/app/FileShareClient/Receiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$3;->this$0:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$3;->val$receiver:Lcom/sec/android/app/FileShareClient/Receiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 202
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboundListAdapter : Cancel clicked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$3;->val$receiver:Lcom/sec/android/app/FileShareClient/Receiver;

    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/Receiver;->cancel()V

    .line 204
    return-void
.end method
