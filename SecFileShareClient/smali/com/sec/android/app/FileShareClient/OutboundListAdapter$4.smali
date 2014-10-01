.class Lcom/sec/android/app/FileShareClient/OutboundListAdapter$4;
.super Ljava/lang/Object;
.source "OutboundListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->showSendFileListDialog(Ljava/util/ArrayList;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileShareClient/OutboundListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$4;->this$0:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 243
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutboundListAdapter : onTouch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 245
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 246
    const v0, 0x7f020017

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 253
    :cond_0
    :goto_0
    return v3

    .line 248
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 250
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$4;->this$0:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    #getter for: Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->access$100(Lcom/sec/android/app/FileShareClient/OutboundListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
