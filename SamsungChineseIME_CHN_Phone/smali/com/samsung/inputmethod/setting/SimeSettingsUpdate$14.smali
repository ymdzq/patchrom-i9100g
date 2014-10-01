.class Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$14;
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
    .line 422
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$14;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$14;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->dbUpdatePrepare()V
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$500(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    .line 427
    return-void
.end method
