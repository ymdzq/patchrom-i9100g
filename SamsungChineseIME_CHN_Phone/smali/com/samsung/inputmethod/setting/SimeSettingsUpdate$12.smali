.class Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$12;
.super Ljava/lang/Object;
.source "SimeSettingsUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->showAlertDialog(I)V
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
    .line 392
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$12;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 397
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$12;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    const-class v2, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 398
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$12;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->startActivity(Landroid/content/Intent;)V

    .line 399
    return-void
.end method
