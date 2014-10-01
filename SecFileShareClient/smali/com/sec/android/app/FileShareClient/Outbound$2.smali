.class Lcom/sec/android/app/FileShareClient/Outbound$2;
.super Ljava/lang/Object;
.source "Outbound.java"

# interfaces
.implements Lcom/sec/android/allshare/ServiceConnector$IServiceConnectEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileShareClient/Outbound;->requestServiceProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileShareClient/Outbound;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileShareClient/Outbound;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/Outbound$2;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/sec/android/allshare/ServiceProvider;Lcom/sec/android/allshare/ServiceConnector$ServiceState;)V
    .locals 3
    .parameter "sprovider"
    .parameter "state"

    .prologue
    .line 281
    const-string v0, "[FileShare][Client]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outbound : requestServiceProvider: createServiceProvider >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound$2;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/FileShareClient/Outbound;->mbReqSvcProvider:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/FileShareClient/Outbound;->access$302(Lcom/sec/android/app/FileShareClient/Outbound;Z)Z

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound$2;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #setter for: Lcom/sec/android/app/FileShareClient/Outbound;->mServiceProvider:Lcom/sec/android/allshare/ServiceProvider;
    invoke-static {v0, p1}, Lcom/sec/android/app/FileShareClient/Outbound;->access$402(Lcom/sec/android/app/FileShareClient/Outbound;Lcom/sec/android/allshare/ServiceProvider;)Lcom/sec/android/allshare/ServiceProvider;

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound$2;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #calls: Lcom/sec/android/app/FileShareClient/Outbound;->refreshAndFindDev()V
    invoke-static {v0}, Lcom/sec/android/app/FileShareClient/Outbound;->access$500(Lcom/sec/android/app/FileShareClient/Outbound;)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound$2;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #calls: Lcom/sec/android/app/FileShareClient/Outbound;->isConnectedDevice()Z
    invoke-static {v0}, Lcom/sec/android/app/FileShareClient/Outbound;->access$600(Lcom/sec/android/app/FileShareClient/Outbound;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound$2;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #calls: Lcom/sec/android/app/FileShareClient/Outbound;->sendRefreshTimeout()V
    invoke-static {v0}, Lcom/sec/android/app/FileShareClient/Outbound;->access$700(Lcom/sec/android/app/FileShareClient/Outbound;)V

    .line 290
    :cond_0
    return-void
.end method

.method public onDeleted(Lcom/sec/android/allshare/ServiceProvider;)V
    .locals 2
    .parameter "sprovider"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound$2;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/FileShareClient/Outbound;->mbReqSvcProvider:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/FileShareClient/Outbound;->access$302(Lcom/sec/android/app/FileShareClient/Outbound;Z)Z

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound$2;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/FileShareClient/Outbound;->mServiceProvider:Lcom/sec/android/allshare/ServiceProvider;
    invoke-static {v0, v1}, Lcom/sec/android/app/FileShareClient/Outbound;->access$402(Lcom/sec/android/app/FileShareClient/Outbound;Lcom/sec/android/allshare/ServiceProvider;)Lcom/sec/android/allshare/ServiceProvider;

    .line 296
    const-string v0, "[FileShare][Client]"

    const-string v1, "Outbound : requestServiceProvider: onDeleted"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method
