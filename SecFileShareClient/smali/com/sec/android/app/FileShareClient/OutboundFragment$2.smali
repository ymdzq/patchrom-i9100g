.class Lcom/sec/android/app/FileShareClient/OutboundFragment$2;
.super Ljava/lang/Object;
.source "OutboundFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileShareClient/OutboundFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileShareClient/OutboundFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$2;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v3, 0x0

    .line 257
    const-string v1, "[FileShare][Client]"

    const-string v2, "OutboundFragments : onServiceConnected()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    .line 258
    check-cast v0, Lcom/sec/android/app/FileShareClient/ClientService$ClinetServiceBinder;

    .line 259
    .local v0, binder:Lcom/sec/android/app/FileShareClient/ClientService$ClinetServiceBinder;
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$2;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/FileShareClient/ClientService$ClinetServiceBinder;->getService()Lcom/sec/android/app/FileShareClient/ClientService;

    move-result-object v2

    #setter for: Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;
    invoke-static {v1, v2}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$502(Lcom/sec/android/app/FileShareClient/OutboundFragment;Lcom/sec/android/app/FileShareClient/ClientService;)Lcom/sec/android/app/FileShareClient/ClientService;

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$2;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    #setter for: Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbBindReq:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$602(Lcom/sec/android/app/FileShareClient/OutboundFragment;Z)Z

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$2;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    #getter for: Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbStopForegroundService:Z
    invoke-static {v1}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$700(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$2;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    #getter for: Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;
    invoke-static {v1}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$500(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Lcom/sec/android/app/FileShareClient/ClientService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/FileShareClient/ClientService;->stopOutboundForeground()V

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$2;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    #setter for: Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbStopForegroundService:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$702(Lcom/sec/android/app/FileShareClient/OutboundFragment;Z)Z

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$2;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    #getter for: Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbGetOutbound:Z
    invoke-static {v1}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$800(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$2;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    #calls: Lcom/sec/android/app/FileShareClient/OutboundFragment;->getOutbound()V
    invoke-static {v1}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$900(Lcom/sec/android/app/FileShareClient/OutboundFragment;)V

    .line 269
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$2;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    #setter for: Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbGetOutbound:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$802(Lcom/sec/android/app/FileShareClient/OutboundFragment;Z)Z

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$2;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    #getter for: Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbCreateOutbound:Z
    invoke-static {v1}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$1000(Lcom/sec/android/app/FileShareClient/OutboundFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$2;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    #calls: Lcom/sec/android/app/FileShareClient/OutboundFragment;->createOutbound()V
    invoke-static {v1}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$1100(Lcom/sec/android/app/FileShareClient/OutboundFragment;)V

    .line 274
    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$2;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    #setter for: Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbCreateOutbound:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$1002(Lcom/sec/android/app/FileShareClient/OutboundFragment;Z)Z

    .line 276
    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 281
    const-string v0, "[FileShare][Client]"

    const-string v1, "OutboundFragments : onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$2;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/FileShareClient/OutboundFragment;->mClientService:Lcom/sec/android/app/FileShareClient/ClientService;
    invoke-static {v0, v1}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$502(Lcom/sec/android/app/FileShareClient/OutboundFragment;Lcom/sec/android/app/FileShareClient/ClientService;)Lcom/sec/android/app/FileShareClient/ClientService;

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundFragment$2;->this$0:Lcom/sec/android/app/FileShareClient/OutboundFragment;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/FileShareClient/OutboundFragment;->mbBindReq:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/FileShareClient/OutboundFragment;->access$602(Lcom/sec/android/app/FileShareClient/OutboundFragment;Z)Z

    .line 284
    return-void
.end method
