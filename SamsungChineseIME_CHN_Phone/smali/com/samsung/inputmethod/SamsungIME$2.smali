.class Lcom/samsung/inputmethod/SamsungIME$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 4821
    iput-object p1, p0, Lcom/samsung/inputmethod/SamsungIME$2;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4826
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME$2;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, "OCR_SIP_TEXT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/inputmethod/SamsungIME;->mStringfromOcr:Ljava/lang/String;

    .line 4828
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME$2;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->setGetOcrString(Z)V

    .line 4830
    return-void
.end method
