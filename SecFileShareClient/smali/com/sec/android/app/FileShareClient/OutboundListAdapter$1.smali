.class Lcom/sec/android/app/FileShareClient/OutboundListAdapter$1;
.super Ljava/lang/Object;
.source "OutboundListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    .line 116
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$1;->this$0:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$1;->val$receiver:Lcom/sec/android/app/FileShareClient/Receiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$1;->this$0:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$1;->val$receiver:Lcom/sec/android/app/FileShareClient/Receiver;

    #calls: Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->showCancelConfirmDialog(Lcom/sec/android/app/FileShareClient/Receiver;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->access$000(Lcom/sec/android/app/FileShareClient/OutboundListAdapter;Lcom/sec/android/app/FileShareClient/Receiver;)V

    .line 122
    return-void
.end method
