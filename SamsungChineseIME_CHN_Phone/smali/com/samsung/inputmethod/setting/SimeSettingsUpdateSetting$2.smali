.class Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$2;
.super Ljava/lang/Object;
.source "SimeSettingsUpdateSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 290
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 291
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$700(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbType:[I
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$100(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->dbResetToDefault([I)V

    .line 292
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->setDbSummary()V
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$800(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)V

    .line 293
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    const v2, 0x7f0b0087

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 296
    return-void
.end method
