.class Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$11;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$11;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$11;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 1029
    invoke-static {}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$3100()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$11;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$3100()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$11;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z
    invoke-static {v0, v2}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$3302(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 1034
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$11;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$11;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1035
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1036
    return-void
.end method
