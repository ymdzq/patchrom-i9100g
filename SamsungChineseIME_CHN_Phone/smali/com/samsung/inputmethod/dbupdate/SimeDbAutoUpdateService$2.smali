.class Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$2;
.super Ljava/lang/Object;
.source "SimeDbAutoUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;
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
    .line 150
    iput-object p1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$2;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 154
    const-wide/32 v1, 0x1b7740

    .line 156
    .local v1, delayTime:J
    const/4 v3, 0x7

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 158
    .local v0, dbType:[I
    iget-object v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$2;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getNextUpdateTime()J
    invoke-static {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->access$100(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)J

    move-result-wide v1

    .line 160
    iget-object v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$2;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->DEBUG:Z
    invoke-static {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->access$000(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SimeDbAutoUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoUpdate delayTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$2;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getAutoUpdateDb([I)I
    invoke-static {v3, v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->access$200(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;[I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    iget-object v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$2;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;
    invoke-static {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->access$300(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getGetDbNotice()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$2;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getAutoUpdateOption()I
    invoke-static {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->access$400(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)I

    move-result v3

    if-nez v3, :cond_3

    .line 166
    iget-object v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$2;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->access$500(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->dBUpdate([II)I

    .line 167
    const-wide/32 v1, 0x36ee80

    .line 184
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$2;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->DEBUG:Z
    invoke-static {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->access$000(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SimeDbAutoUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoUpdate delayTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$2;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->access$800(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$2;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->access$700(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    return-void

    .line 171
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$2;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    #calls: Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getAutoUpdateWLANOnly()Z
    invoke-static {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->access$600(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 172
    iget-object v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$2;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->access$500(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->isWLANConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    iget-object v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$2;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->access$500(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->dBUpdate([II)I

    .line 174
    const-wide/32 v1, 0x1b7740

    goto :goto_0

    .line 178
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$2;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->access$500(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->dBUpdate([II)I

    .line 179
    const-wide/32 v1, 0x1b7740

    goto :goto_0

    .line 156
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method
