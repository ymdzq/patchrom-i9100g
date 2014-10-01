.class Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$1;
.super Landroid/content/BroadcastReceiver;
.source "SimeSettingsUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->onCreate(Landroid/os/Bundle;)V
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
    .line 118
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 127
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->bInDownloadingProcess()Z
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$000(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$100(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->dbUpdateStop(I)V

    .line 134
    .end local v0           #info:Landroid/net/NetworkInfo;
    :cond_0
    return-void
.end method
