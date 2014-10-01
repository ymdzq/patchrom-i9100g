.class Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$7;
.super Ljava/lang/Object;
.source "SimeSettingsUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->showProgrocessDialog()V
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
    .line 333
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$7;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$7;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$100(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->dbUpdateStop(I)V

    .line 338
    return-void
.end method
