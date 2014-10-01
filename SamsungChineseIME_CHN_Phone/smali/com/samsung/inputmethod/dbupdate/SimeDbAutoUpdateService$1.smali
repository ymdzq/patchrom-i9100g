.class Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "SimeDbAutoUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$1;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 96
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$1;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->DEBUG:Z
    invoke-static {v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->access$000(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SimeDbAutoUpdateService"

    const-string v2, "network down"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$1;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->stopSelf()V

    .line 104
    .end local v0           #info:Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return-void

    .line 100
    .restart local v0       #info:Landroid/net/NetworkInfo;
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$1;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->DEBUG:Z
    invoke-static {v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->access$000(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SimeDbAutoUpdateService"

    const-string v2, "network connected "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
