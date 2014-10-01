.class Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$1;
.super Landroid/os/Handler;
.source "SimeDbUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$1;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager$1;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->sendUpdateNotification(I)V

    .line 284
    return-void
.end method
