.class Lcom/android/server/TvoutService$4;
.super Landroid/content/BroadcastReceiver;
.source "TvoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvoutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvoutService;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, action:Ljava/lang/String;
    const-string v12, "TvoutService_Java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TvoutService Action : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v12, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 341
    const-string v12, "state"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 344
    .local v7, bStatus:Z
    const-string v12, "TvoutService_Java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TvoutService HDMI : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " status : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v12, 0x1

    if-ne v7, v12, :cond_3

    .line 349
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$800(Lcom/android/server/TvoutService;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 351
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$802(Lcom/android/server/TvoutService;Z)Z

    .line 352
    const-string v12, "TvoutService_Java"

    const-string v13, "HDMI is connected, send intent to terminate screen recorder"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v1, Landroid/content/Intent;

    const-string v12, "android.intent.action.SCREENRECORDER_HDMI"

    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, SRActionIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$900(Lcom/android/server/TvoutService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 356
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 357
    .local v9, msg:Landroid/os/Message;
    const-string v12, "HDMI connected. ScreenRecorder is  turned off"

    iput-object v12, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 358
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$1000(Lcom/android/server/TvoutService;)Landroid/os/Handler;

    move-result-object v12

    const-wide/16 v13, 0x7d0

    invoke-virtual {v12, v9, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 361
    .end local v1           #SRActionIntent:Landroid/content/Intent;
    .end local v9           #msg:Landroid/os/Message;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x1

    #setter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$602(Lcom/android/server/TvoutService;Z)Z

    .line 362
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 363
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 365
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutTeminateWFD()Z

    .line 366
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    .line 367
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 368
    .restart local v9       #msg:Landroid/os/Message;
    const-string v12, "HDMI connected. AllShare Cast turned off"

    iput-object v12, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 369
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$1000(Lcom/android/server/TvoutService;)Landroid/os/Handler;

    move-result-object v12

    const-wide/16 v13, 0x7d0

    invoke-virtual {v12, v9, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 602
    .end local v7           #bStatus:Z
    .end local v9           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    const-string v12, "persist.sys.camera.connect"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v13}, Lcom/android/server/TvoutService;->access$1200(Lcom/android/server/TvoutService;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    return-void

    .line 373
    .restart local v7       #bStatus:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12, v7}, Lcom/android/server/TvoutService;->TvoutSetStatus(Z)Z

    .line 374
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12, v7}, Lcom/android/server/TvoutService;->TvoutSetCableStatus(Z)Z

    .line 375
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v12, v7}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    .line 376
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutSetDefaultString()Z

    .line 377
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutGetAudioChannel()I

    .line 378
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 381
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-string v13, "/sys/power/gpu_lock"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/android/server/TvoutService;->TvoutSetGpuLock(Ljava/lang/String;I)Z

    .line 383
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$1200(Lcom/android/server/TvoutService;)J

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmp-long v12, v12, v14

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v12

    if-nez v12, :cond_1

    .line 385
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutCreateSmartDockSurface()Z

    goto :goto_0

    .line 422
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutGetCableStatus()Z

    move-result v8

    .line 423
    .local v8, cable_status:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12, v7}, Lcom/android/server/TvoutService;->TvoutSetStatus(Z)Z

    .line 424
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12, v7}, Lcom/android/server/TvoutService;->TvoutSetCableStatus(Z)Z

    .line 425
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v12, v7}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    .line 426
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$602(Lcom/android/server/TvoutService;Z)Z

    .line 428
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-string v13, "/sys/power/gpu_lock"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/server/TvoutService;->TvoutSetGpuLock(Ljava/lang/String;I)Z

    .line 430
    const-string v12, "persist.sys.camera.transform"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v12, "persist.sys.camera.connect"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/TvoutService;->TvoutSetVideoRotation(I)Z

    .line 433
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 435
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v13}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v13

    if-ne v12, v13, :cond_4

    .line 437
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    .line 440
    :cond_4
    const/4 v12, 0x1

    if-ne v8, v12, :cond_1

    .line 441
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    goto/16 :goto_0

    .line 444
    .end local v7           #bStatus:Z
    .end local v8           #cable_status:Z
    :cond_5
    const-string v12, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 447
    const-string v12, "TvoutService_Java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Locale changed : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutSetDefaultString()Z

    goto/16 :goto_0

    .line 451
    :cond_6
    const-string v12, "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 454
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v13}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v13

    if-ne v12, v13, :cond_7

    .line 456
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    .line 458
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v12

    if-eqz v12, :cond_b

    .line 459
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v13}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v13

    add-int/lit16 v13, v13, 0xb4

    rem-int/lit16 v13, v13, 0x168

    #setter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$1302(Lcom/android/server/TvoutService;I)I

    .line 460
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v13}, Lcom/android/server/TvoutService;->access$1300(Lcom/android/server/TvoutService;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    .line 461
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_a

    .line 462
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v13, 0x2

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v12, v13, v14}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 465
    :cond_8
    :goto_1
    const-string v12, "persist.sys.camera.transform"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v13}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 471
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v13, 0x1

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v12, v13, v14}, Lcom/android/server/TvoutService;->access$1202(Lcom/android/server/TvoutService;J)J

    .line 472
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;I)I

    .line 473
    const-string v12, "ro.product.device"

    const-string v13, "-1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 474
    .local v11, product_name:Ljava/lang/String;
    const-string v12, "GT-I9100G"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 475
    const-string v12, "persist.hwc.docking.enabled"

    const-string v13, "1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 463
    .end local v11           #product_name:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v12

    const-wide/16 v14, 0x2

    cmp-long v12, v12, v14

    if-nez v12, :cond_8

    .line 464
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v13, 0x0

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v12, v13, v14}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto :goto_1

    .line 468
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v13}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    goto :goto_2

    .line 479
    :cond_c
    const-string v12, "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 481
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v13}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v13

    if-ne v12, v13, :cond_d

    .line 483
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    .line 485
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_11

    .line 486
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v13}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v13

    add-int/lit16 v13, v13, 0xb4

    rem-int/lit16 v13, v13, 0x168

    #setter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$1302(Lcom/android/server/TvoutService;I)I

    .line 487
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v13}, Lcom/android/server/TvoutService;->access$1300(Lcom/android/server/TvoutService;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/server/TvoutService;->TvoutSetFrontCameraRotation(I)Z

    .line 488
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_10

    .line 489
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v13, 0x2

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v12, v13, v14}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 492
    :cond_e
    :goto_3
    const-string v12, "persist.sys.camera.transform"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v13}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :goto_4
    const-string v12, "ro.product.device"

    const-string v13, "-1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 497
    .restart local v11       #product_name:Ljava/lang/String;
    const-string v12, "GT-I9100G"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 498
    const-string v12, "persist.hwc.docking.enabled"

    const-string v13, "1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    .line 500
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;I)I

    .line 501
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 502
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v13, 0x1

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v12, v13, v14}, Lcom/android/server/TvoutService;->access$1202(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_0

    .line 490
    .end local v11           #product_name:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v12

    const-wide/16 v14, 0x2

    cmp-long v12, v12, v14

    if-nez v12, :cond_e

    .line 491
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v13, 0x0

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v12, v13, v14}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto :goto_3

    .line 495
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v13}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/server/TvoutService;->TvoutSetFrontCameraRotation(I)Z

    goto :goto_4

    .line 504
    :cond_12
    const-string v12, "com.sec.android.app.camera.ACTION_STOP_CAMERA"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 507
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v12

    if-nez v12, :cond_13

    .line 509
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutCreateSmartDockSurface()Z

    .line 511
    :cond_13
    const-string v12, "ro.product.device"

    const-string v13, "-1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 512
    .restart local v11       #product_name:Ljava/lang/String;
    const-string v12, "GT-I9100G"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 513
    const-string v12, "persist.hwc.docking.enabled"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    .line 515
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 516
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/TvoutService;->TvoutSetVideoRotation(I)Z

    .line 517
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v13, 0x0

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v12, v13, v14}, Lcom/android/server/TvoutService;->access$1202(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_0

    .line 519
    .end local v11           #product_name:Ljava/lang/String;
    :cond_15
    const-string v12, "com.sec.android.allshare.intent.action.CAST_GETSTATE"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 521
    const-string v12, "com.sec.android.allshare.intent.extra.CAST_STATE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 523
    .local v5, bAllShareCastConnectedFlag:Z
    if-eqz v5, :cond_16

    .line 524
    const-string v12, "TvoutService_Java"

    const-string v13, "AllShare Cast Connected !!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/TvoutService;->TvoutSetWFDStatus(Z)Z

    .line 526
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x1

    #setter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$702(Lcom/android/server/TvoutService;Z)Z

    .line 527
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 530
    :cond_16
    const-string v12, "TvoutService_Java"

    const-string v13, "AllShare Cast NOT Connected !!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/TvoutService;->TvoutSetWFDStatus(Z)Z

    .line 532
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$702(Lcom/android/server/TvoutService;Z)Z

    .line 533
    const-string v12, "persist.sys.camera.transform"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v12, "persist.sys.camera.connect"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 539
    .end local v5           #bAllShareCastConnectedFlag:Z
    :cond_17
    const-string v12, "android.intent.action.SCREENRECORDER_INFORMATION"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 541
    const-string v12, "TvoutService_Java"

    const-string v13, "Screen recorder intent is received"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v2, 0x0

    .line 543
    .local v2, SRState:Ljava/lang/String;
    const-string v12, "IsRunning"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 544
    const-string v12, "TvoutService_Java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ScreenRecorder State is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v12, "run"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 547
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x1

    #setter for: Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$802(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 548
    :cond_18
    const-string v12, "stop"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 549
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$802(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 552
    .end local v2           #SRState:Ljava/lang/String;
    :cond_19
    const-string v12, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 554
    const-string v12, "android.intent.extra.device_state"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 555
    .local v6, bMouseDockedFlag:I
    const-string v12, "TvoutService_Java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Smart Dock Event Received !!!!!  Dock Status :  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v12, 0x1

    if-ne v12, v6, :cond_1a

    .line 558
    const-string v12, "TvoutService_Java"

    const-string v13, "Mouse  Connected  Smart Dock!!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x1

    #setter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$1102(Lcom/android/server/TvoutService;Z)Z

    .line 561
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$1200(Lcom/android/server/TvoutService;)J

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmp-long v12, v12, v14

    if-eqz v12, :cond_1

    .line 563
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutCreateSmartDockSurface()Z

    goto/16 :goto_0

    .line 566
    :cond_1a
    if-nez v6, :cond_1

    .line 567
    const-string v12, "TvoutService_Java"

    const-string v13, "Mouse Disconnected from Smart Dock!!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$1102(Lcom/android/server/TvoutService;Z)Z

    .line 570
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v13}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v13

    if-ne v12, v13, :cond_1

    .line 572
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    goto/16 :goto_0

    .line 576
    .end local v6           #bMouseDockedFlag:I
    :cond_1b
    const-string v12, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 577
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v13, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v12, v13}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 583
    :cond_1c
    const-string v12, "android.intent.action.SCREEN_ON"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 586
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutGetCableStatus()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 589
    const-string v12, "TvoutService_Java"

    const-string v13, " VIVEK_AUDIO_CHECK Calling TvoutGetAudioChannel !!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutGetAudioChannel()I

    move-result v4

    .line 592
    .local v4, audioValue:I
    const-string v12, "TvoutService_Java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " VIVEK_AUDIO_CHECK TvoutGetAudioChannel audioValue is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v12, -0x1

    if-ne v4, v12, :cond_1

    .line 595
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 596
    .local v10, msg1:Landroid/os/Message;
    const-string v12, "HDMI connected.Audio is not turned on"

    iput-object v12, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 597
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mHandler1:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$1400(Lcom/android/server/TvoutService;)Landroid/os/Handler;

    move-result-object v12

    const-wide/16 v13, 0xbb8

    invoke-virtual {v12, v10, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
