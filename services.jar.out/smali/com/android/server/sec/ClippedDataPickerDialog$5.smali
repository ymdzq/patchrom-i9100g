.class Lcom/android/server/sec/ClippedDataPickerDialog$5;
.super Landroid/content/BroadcastReceiver;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 596
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 598
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardServiceEx"

    const-string v4, "clipboard dialog get ACTION_CONFIGURATION_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$700(Lcom/android/server/sec/ClippedDataPickerDialog;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 605
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/ClipboardExManager;->showUIDataDialog()V

    .line 681
    :cond_1
    :goto_0
    return-void

    .line 607
    :cond_2
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v3, v4}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$702(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    goto :goto_0

    .line 614
    :cond_3
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 615
    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, reason:Ljava/lang/String;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reason :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_4
    const-string v3, "homekey"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 619
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "ClipboardServiceEx"

    const-string v4, "clipboard dialog get ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_5
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 621
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 622
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 623
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto :goto_0

    .line 626
    :cond_6
    const-string v3, "recentapps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 627
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "ClipboardServiceEx"

    const-string v4, "clipboard dialog get SYSTEM_DIALOG_REASON_RECENT_APPS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_7
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 630
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 631
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 632
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto/16 :goto_0

    .line 636
    :cond_8
    const-string v3, "globalactions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 638
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 639
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 640
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto/16 :goto_0

    .line 643
    :cond_9
    if-nez v2, :cond_1

    .line 645
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 646
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 647
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 648
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto/16 :goto_0

    .line 652
    .end local v2           #reason:Ljava/lang/String;
    :cond_a
    const-string v3, "DismissClipboardDialogFromIMMService"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 653
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v3, v4}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$702(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    .line 654
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "ClipboardServiceEx"

    const-string v4, "clipboard dialog get DismissClipboardDialogFromIMMService"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_b
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 656
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 657
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 658
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto/16 :goto_0

    .line 661
    :cond_c
    const-string v3, "DismissClipboardDialogFromPhoneStatusBar"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 662
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_d

    const-string v3, "ClipboardServiceEx"

    const-string v4, "clipboard dialog get DismissClipboardDialogFromPhoneStatusBar"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_d
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 664
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 665
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 666
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto/16 :goto_0

    .line 669
    :cond_e
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 670
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_f

    const-string v3, "ClipboardServiceEx"

    const-string v4, "clipboard dialog get ACTION_USER_PRESENT"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_f
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 672
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 673
    .local v1, mHandler:Landroid/os/Handler;
    new-instance v3, Lcom/android/server/sec/ClippedDataPickerDialog$5$1;

    invoke-direct {v3, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$5$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$5;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
