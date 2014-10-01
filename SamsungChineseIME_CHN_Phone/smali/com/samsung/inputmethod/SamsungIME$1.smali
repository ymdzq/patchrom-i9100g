.class Lcom/samsung/inputmethod/SamsungIME$1;
.super Landroid/os/Handler;
.source "SamsungIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/SamsungIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/SamsungIME;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 0
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/samsung/inputmethod/SamsungIME$1;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME$1;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    #getter for: Lcom/samsung/inputmethod/SamsungIME;->mTutorialDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/samsung/inputmethod/SamsungIME;->access$600(Lcom/samsung/inputmethod/SamsungIME;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME$1;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    #getter for: Lcom/samsung/inputmethod/SamsungIME;->mTutorialDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/samsung/inputmethod/SamsungIME;->access$600(Lcom/samsung/inputmethod/SamsungIME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME$1;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    #getter for: Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    invoke-static {v0}, Lcom/samsung/inputmethod/SamsungIME;->access$000(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 704
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME$1;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    #calls: Lcom/samsung/inputmethod/SamsungIME;->launchTutorial()V
    invoke-static {v0}, Lcom/samsung/inputmethod/SamsungIME;->access$700(Lcom/samsung/inputmethod/SamsungIME;)V

    .line 711
    :cond_1
    :goto_0
    return-void

    .line 707
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/inputmethod/SamsungIME$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
