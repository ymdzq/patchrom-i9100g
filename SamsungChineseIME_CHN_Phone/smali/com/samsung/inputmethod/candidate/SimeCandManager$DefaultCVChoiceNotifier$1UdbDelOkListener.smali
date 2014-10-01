.class Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier$1UdbDelOkListener;
.super Ljava/lang/Object;
.source "SimeCandManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->onLongPressChoice(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UdbDelOkListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier$1UdbDelOkListener;->this$1:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier$1UdbDelOkListener;->this$1:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->mActionChoiceId:I
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->access$100(Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier$1UdbDelOkListener;->this$1:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9DecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier$1UdbDelOkListener;->this$1:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->mActionChoiceId:I
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->access$100(Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->delUdbPhrase(I)Z

    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier$1UdbDelOkListener;->this$1:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1561
    return-void
.end method
