.class Lcom/sec/android/app/FileShareClient/Outbound$3;
.super Landroid/content/BroadcastReceiver;
.source "Outbound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileShareClient/Outbound;
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
    .line 454
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/Outbound$3;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "ctx"
    .parameter "it"

    .prologue
    .line 461
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, action:Ljava/lang/String;
    const-string v6, "[FileShare][Client]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Outbound : onReceive: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 466
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/Outbound$3;->isInitialStickyBroadcast()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 467
    const-string v6, "[FileShare][Client]"

    const-string v7, "Outbound : onReceive: ignore this"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 469
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 470
    .local v4, netInfo:Landroid/net/NetworkInfo;
    const-string v6, "connectedDevAddress"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, connectedDevAddr:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 473
    const-string v6, "[FileShare][Client]"

    const-string v7, "Outbound : android.net.wifi.p2p.CONNECTION_STATE_CHANGE connected"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v6, p0, Lcom/sec/android/app/FileShareClient/Outbound$3;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    const/4 v7, 0x1

    #calls: Lcom/sec/android/app/FileShareClient/Outbound;->setConnectionStatus(ZLjava/lang/String;)V
    invoke-static {v6, v7, v1}, Lcom/sec/android/app/FileShareClient/Outbound;->access$800(Lcom/sec/android/app/FileShareClient/Outbound;ZLjava/lang/String;)V

    .line 475
    iget-object v6, p0, Lcom/sec/android/app/FileShareClient/Outbound$3;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #calls: Lcom/sec/android/app/FileShareClient/Outbound;->requestServiceProvider()V
    invoke-static {v6}, Lcom/sec/android/app/FileShareClient/Outbound;->access$900(Lcom/sec/android/app/FileShareClient/Outbound;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #connectedDevAddr:Ljava/lang/String;
    .end local v4           #netInfo:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    .line 514
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "[FileShare][Client]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Outbound : BroadcastReceiver.onReceive Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 477
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #connectedDevAddr:Ljava/lang/String;
    .restart local v4       #netInfo:Landroid/net/NetworkInfo;
    :cond_2
    :try_start_1
    const-string v6, "[FileShare][Client]"

    const-string v7, "Outbound : android.net.wifi.p2p.CONNECTION_STATE_CHANGE disconnected"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v6, p0, Lcom/sec/android/app/FileShareClient/Outbound$3;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #getter for: Lcom/sec/android/app/FileShareClient/Outbound;->mFileArrayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/FileShareClient/Outbound;->access$1000(Lcom/sec/android/app/FileShareClient/Outbound;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_3

    .line 479
    iget-object v6, p0, Lcom/sec/android/app/FileShareClient/Outbound$3;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    const/4 v7, 0x0

    #setter for: Lcom/sec/android/app/FileShareClient/Outbound;->mbShowWait:Z
    invoke-static {v6, v7}, Lcom/sec/android/app/FileShareClient/Outbound;->access$1102(Lcom/sec/android/app/FileShareClient/Outbound;Z)Z

    .line 481
    :cond_3
    if-nez v1, :cond_6

    .line 482
    iget-object v6, p0, Lcom/sec/android/app/FileShareClient/Outbound$3;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #getter for: Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/FileShareClient/Outbound;->access$1200(Lcom/sec/android/app/FileShareClient/Outbound;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_5

    .line 483
    const-string v6, "[FileShare][Client]"

    const-string v7, "Outbound : onReceive : mReceiverList is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/FileShareClient/Outbound$3;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #calls: Lcom/sec/android/app/FileShareClient/Outbound;->destroyServiceProvider()V
    invoke-static {v6}, Lcom/sec/android/app/FileShareClient/Outbound;->access$1300(Lcom/sec/android/app/FileShareClient/Outbound;)V

    .line 491
    iget-object v6, p0, Lcom/sec/android/app/FileShareClient/Outbound$3;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #getter for: Lcom/sec/android/app/FileShareClient/Outbound;->mIfg:Lcom/sec/android/app/FileShareClient/Outbound$IOutboundForeground;
    invoke-static {v6}, Lcom/sec/android/app/FileShareClient/Outbound;->access$1400(Lcom/sec/android/app/FileShareClient/Outbound;)Lcom/sec/android/app/FileShareClient/Outbound$IOutboundForeground;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/FileShareClient/Outbound$IOutboundForeground;->releaseWakeLock()V

    goto :goto_0

    .line 485
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/FileShareClient/Outbound$3;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #getter for: Lcom/sec/android/app/FileShareClient/Outbound;->mReceiverList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/FileShareClient/Outbound;->access$1200(Lcom/sec/android/app/FileShareClient/Outbound;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/FileShareClient/Receiver;

    .line 486
    .local v5, r:Lcom/sec/android/app/FileShareClient/Receiver;
    const/16 v6, 0x3ef

    invoke-virtual {v5, v6}, Lcom/sec/android/app/FileShareClient/Receiver;->setStatus(I)V

    .line 487
    invoke-virtual {v5}, Lcom/sec/android/app/FileShareClient/Receiver;->updateStatus()V

    goto :goto_1

    .line 493
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #r:Lcom/sec/android/app/FileShareClient/Receiver;
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/FileShareClient/Outbound$3;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    const/4 v7, 0x0

    #calls: Lcom/sec/android/app/FileShareClient/Outbound;->setConnectionStatus(ZLjava/lang/String;)V
    invoke-static {v6, v7, v1}, Lcom/sec/android/app/FileShareClient/Outbound;->access$800(Lcom/sec/android/app/FileShareClient/Outbound;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 498
    .end local v1           #connectedDevAddr:Ljava/lang/String;
    .end local v4           #netInfo:Landroid/net/NetworkInfo;
    :cond_7
    const-string v6, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 499
    const-string v6, "connectedDevAddress"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 500
    .restart local v1       #connectedDevAddr:Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 501
    iget-object v6, p0, Lcom/sec/android/app/FileShareClient/Outbound$3;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #calls: Lcom/sec/android/app/FileShareClient/Outbound;->changedPeer(Ljava/lang/String;)V
    invoke-static {v6, v1}, Lcom/sec/android/app/FileShareClient/Outbound;->access$1500(Lcom/sec/android/app/FileShareClient/Outbound;Ljava/lang/String;)V

    .line 502
    const-string v6, "[FileShare][Client]"

    const-string v7, "Outbound : onReceive : call changedPeer"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 504
    :cond_8
    const-string v6, "[FileShare][Client]"

    const-string v7, "Outbound : onReceive: ignore this"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 507
    .end local v1           #connectedDevAddr:Ljava/lang/String;
    :cond_9
    const-string v6, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_0
.end method
