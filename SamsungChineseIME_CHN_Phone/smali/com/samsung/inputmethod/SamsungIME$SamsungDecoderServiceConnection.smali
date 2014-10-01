.class public Lcom/samsung/inputmethod/SamsungIME$SamsungDecoderServiceConnection;
.super Ljava/lang/Object;
.source "SamsungIME.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/SamsungIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SamsungDecoderServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/SamsungIME;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 0
    .parameter

    .prologue
    .line 7139
    iput-object p1, p0, Lcom/samsung/inputmethod/SamsungIME$SamsungDecoderServiceConnection;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 7143
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected service is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7144
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME$SamsungDecoderServiceConnection;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    #getter for: Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v0}, Lcom/samsung/inputmethod/SamsungIME;->access$1000(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setISamsungDecoderService(Lcom/samsung/inputmethod/ISamsungIMEDecoderService;)V

    .line 7145
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 7148
    const-string v0, "SamsungIME"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7149
    return-void
.end method
