.class Lcom/android/OriginalSettings/DeviceAdminAdd$4;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/DeviceAdminAdd;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DeviceAdminAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/OriginalSettings/DeviceAdminAdd$4;->this$0:Lcom/android/OriginalSettings/DeviceAdminAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/OriginalSettings/DeviceAdminAdd$4;->this$0:Lcom/android/OriginalSettings/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/OriginalSettings/DeviceAdminAdd;->mDPM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/DeviceAdminAdd$4;->this$0:Lcom/android/OriginalSettings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/OriginalSettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 331
    iget-object v0, p0, Lcom/android/OriginalSettings/DeviceAdminAdd$4;->this$0:Lcom/android/OriginalSettings/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/DeviceAdminAdd;->finish()V

    .line 332
    return-void
.end method