.class Lcom/samsung/inputmethod/SamsungIME$7;
.super Ljava/lang/Object;
.source "SamsungIME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/SamsungIME;->showOptionsMenu()V
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
    .line 5759
    iput-object p1, p0, Lcom/samsung/inputmethod/SamsungIME$7;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5761
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME$7;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    #getter for: Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v0}, Lcom/samsung/inputmethod/SamsungIME;->access$200(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5763
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME$7;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    #getter for: Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    invoke-static {v0}, Lcom/samsung/inputmethod/SamsungIME;->access$000(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 5764
    :cond_0
    return-void
.end method
