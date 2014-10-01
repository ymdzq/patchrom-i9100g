.class public Lcom/samsung/inputmethod/dbupdate/SimeAutoUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimeAutoUpdateReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimeAutoUpdateReceiver"

.field public static final mAutoUpdateExtra:Ljava/lang/String; = "com.samsung.inputmethod.dbupdate.auto"


# instance fields
.field private DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeAutoUpdateReceiver;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DB_UPDATE_ONLINE:Z

    if-eqz v2, :cond_1

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 42
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    iget-boolean v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeAutoUpdateReceiver;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SimeAutoUpdateReceiver"

    const-string v3, "network connected "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v1, serviceIntent:Landroid/content/Intent;
    const-string v2, "com.samsung.inputmethod.dbupdate.auto"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 50
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v1           #serviceIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method
