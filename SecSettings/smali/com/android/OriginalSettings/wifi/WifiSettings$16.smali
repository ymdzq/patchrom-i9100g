.class Lcom/android/OriginalSettings/wifi/WifiSettings$16;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WifiSettings;->showDurationDialog(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1634
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$16;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$16;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$16;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Ljava/lang/Runnable;

    move-result-object v1

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->removeDialogTimer(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1100(Lcom/android/OriginalSettings/wifi/WifiSettings;Ljava/lang/Runnable;)V

    .line 1637
    return-void
.end method
