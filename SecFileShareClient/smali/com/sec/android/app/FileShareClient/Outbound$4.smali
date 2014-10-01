.class Lcom/sec/android/app/FileShareClient/Outbound$4;
.super Ljava/lang/Object;
.source "Outbound.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileShareClient/Outbound;->requestPeers(Ljava/lang/String;)V
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
    .line 609
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/Outbound$4;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    .line 614
    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/Outbound$4;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #getter for: Lcom/sec/android/app/FileShareClient/Outbound;->mListenDevList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/FileShareClient/Outbound;->access$1600(Lcom/sec/android/app/FileShareClient/Outbound;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 615
    const-string v3, "[FileShare][Client]"

    const-string v4, "Outbound : requestPeers:onPeersAvailable > there is no item to listen"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/Outbound$4;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #getter for: Lcom/sec/android/app/FileShareClient/Outbound;->mListenDevList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/FileShareClient/Outbound;->access$1600(Lcom/sec/android/app/FileShareClient/Outbound;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 620
    .local v1, devAddr:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/Outbound$4;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #getter for: Lcom/sec/android/app/FileShareClient/Outbound;->mListenDevList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/FileShareClient/Outbound;->access$1600(Lcom/sec/android/app/FileShareClient/Outbound;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 621
    const-string v3, "[FileShare][Client]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Outbound : requestPeers:onPeersAvailable >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 624
    .local v0, dev:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 625
    const-string v3, "[FileShare][Client]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Outbound : requestPeers:onPeersAvailable >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 628
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/Outbound$4;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    const/4 v4, 0x1

    #calls: Lcom/sec/android/app/FileShareClient/Outbound;->setConnectionStatus(ZLjava/lang/String;)V
    invoke-static {v3, v4, v1}, Lcom/sec/android/app/FileShareClient/Outbound;->access$800(Lcom/sec/android/app/FileShareClient/Outbound;ZLjava/lang/String;)V

    goto :goto_0

    .line 633
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/FileShareClient/Outbound$4;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #calls: Lcom/sec/android/app/FileShareClient/Outbound;->setConnectionStatus(ZLjava/lang/String;)V
    invoke-static {v3, v6, v1}, Lcom/sec/android/app/FileShareClient/Outbound;->access$800(Lcom/sec/android/app/FileShareClient/Outbound;ZLjava/lang/String;)V

    goto :goto_0

    .line 636
    :pswitch_2
    const-string v3, "[FileShare][Client]"

    const-string v4, "Outbound : requestPeers:onPeersAvailable > ignore this status"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 626
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
