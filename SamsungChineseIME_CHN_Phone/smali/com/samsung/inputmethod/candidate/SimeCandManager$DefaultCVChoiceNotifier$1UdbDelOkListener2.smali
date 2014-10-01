.class Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier$1UdbDelOkListener2;
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
    name = "UdbDelOkListener2"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier$1UdbDelOkListener2;->this$1:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier$1UdbDelOkListener2;->this$1:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/inputmethod/SamsungIME;->commitContactDialogData(I)V

    .line 1579
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier$1UdbDelOkListener2;->this$1:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1580
    return-void
.end method
