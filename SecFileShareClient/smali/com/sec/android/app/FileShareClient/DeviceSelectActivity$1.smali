.class Lcom/sec/android/app/FileShareClient/DeviceSelectActivity$1;
.super Ljava/lang/Object;
.source "DeviceSelectActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity$1;->this$0:Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 95
    const-string v1, "[FileShare][Client]"

    const-string v2, "DeviceSelectActivity : onServiceConnected()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    .line 96
    check-cast v0, Lcom/sec/android/app/FileShareClient/ClientService$ClinetServiceBinder;

    .line 97
    .local v0, binder:Lcom/sec/android/app/FileShareClient/ClientService$ClinetServiceBinder;
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity$1;->this$0:Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/ClientService$ClinetServiceBinder;->getService()Lcom/sec/android/app/FileShareClient/ClientService;

    move-result-object v2

    #setter for: Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;
    invoke-static {v1, v2}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->access$002(Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;Lcom/sec/android/app/FileShareClient/ClientService;)Lcom/sec/android/app/FileShareClient/ClientService;

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity$1;->this$0:Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;

    #getter for: Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mP2pDeviceInfoList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->access$100(Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "[FileShare][Client]"

    const-string v2, "DeviceSelectActivity : Late Service bind, Already done onActivityResult()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity$1;->this$0:Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;

    #calls: Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->startSending()V
    invoke-static {v1}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->access$200(Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;)V

    .line 104
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 108
    const-string v0, "[FileShare][Client]"

    const-string v1, "DeviceSelectActivity : onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity$1;->this$0:Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;
    invoke-static {v0, v1}, Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;->access$002(Lcom/sec/android/app/FileShareClient/DeviceSelectActivity;Lcom/sec/android/app/FileShareClient/ClientService;)Lcom/sec/android/app/FileShareClient/ClientService;

    .line 110
    return-void
.end method
