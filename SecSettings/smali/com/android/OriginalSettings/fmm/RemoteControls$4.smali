.class Lcom/android/OriginalSettings/fmm/RemoteControls$4;
.super Ljava/lang/Object;
.source "RemoteControls.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/fmm/RemoteControls;->showNotificationChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/fmm/RemoteControls;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/fmm/RemoteControls;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$4;->this$0:Lcom/android/OriginalSettings/fmm/RemoteControls;

    iput-object p2, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$4;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 248
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$4;->this$0:Lcom/android/OriginalSettings/fmm/RemoteControls;

    #calls: Lcom/android/OriginalSettings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/OriginalSettings/fmm/RemoteControls;->access$800(Lcom/android/OriginalSettings/fmm/RemoteControls;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$4;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    sput-boolean v2, Lcom/android/OriginalSettings/fmm/RemoteControls;->chkboxFlag:Z

    .line 252
    :cond_0
    return-void
.end method
