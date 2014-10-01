.class Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;
.super Landroid/os/Handler;
.source "SimeSettingsUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 245
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 299
    :goto_0
    :pswitch_0
    return-void

    .line 249
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$800(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$800(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->showProgrocessDialog()V
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$900(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    .line 252
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;

    .line 253
    .local v0, nUpdateFileInfo:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$800(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$100(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-result-object v2

    iget v3, v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;->dbType:I

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getDbUpdateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$800(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget v2, v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;->updateProgress:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 258
    .end local v0           #nUpdateFileInfo:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateFileInfo;
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    const/4 v2, 0x7

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->showAlertDialog(I)V
    invoke-static {v1, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$400(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;I)V

    goto :goto_0

    .line 262
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->dissmissProgrocessDialog()V
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$1000(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    .line 263
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    const/4 v2, 0x1

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->showAlertDialog(I)V
    invoke-static {v1, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$400(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;I)V

    goto :goto_0

    .line 267
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    const/4 v2, 0x3

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->showAlertDialog(I)V
    invoke-static {v1, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$400(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;I)V

    goto :goto_0

    .line 271
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->dissmissProgrocessDialog()V
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$1000(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    .line 272
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    const/4 v2, 0x4

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->showAlertDialog(I)V
    invoke-static {v1, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$400(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;I)V

    goto :goto_0

    .line 276
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->dissmissProgrocessDialog()V
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$1000(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    .line 277
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    const/16 v2, 0x8

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->showAlertDialog(I)V
    invoke-static {v1, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$400(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;I)V

    goto :goto_0

    .line 281
    :pswitch_7
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->dissmissProgrocessDialog()V
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$1000(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    .line 282
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    const/4 v2, 0x5

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->showAlertDialog(I)V
    invoke-static {v1, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$400(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;I)V

    goto :goto_0

    .line 286
    :pswitch_8
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->dissmissProgrocessDialog()V
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$1000(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    .line 287
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    const/4 v2, 0x2

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->showAlertDialog(I)V
    invoke-static {v1, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$400(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;I)V

    goto/16 :goto_0

    .line 291
    :pswitch_9
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->dissmissProgrocessDialog()V
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$1000(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    .line 292
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$5;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    const/4 v2, 0x6

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->showAlertDialog(I)V
    invoke-static {v1, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$400(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;I)V

    goto/16 :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
