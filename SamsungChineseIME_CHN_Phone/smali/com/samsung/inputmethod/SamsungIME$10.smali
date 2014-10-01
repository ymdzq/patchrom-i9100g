.class Lcom/samsung/inputmethod/SamsungIME$10;
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
    .line 5791
    iput-object p1, p0, Lcom/samsung/inputmethod/SamsungIME$10;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "di"
    .parameter "position"

    .prologue
    .line 5794
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME$10;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    #getter for: Lcom/samsung/inputmethod/SamsungIME;->mOptionsDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/samsung/inputmethod/SamsungIME;->access$800(Lcom/samsung/inputmethod/SamsungIME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 5795
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5796
    packed-switch p2, :pswitch_data_0

    .line 5806
    :goto_0
    return-void

    .line 5798
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME$10;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    #calls: Lcom/samsung/inputmethod/SamsungIME;->launchSettings()V
    invoke-static {v0}, Lcom/samsung/inputmethod/SamsungIME;->access$900(Lcom/samsung/inputmethod/SamsungIME;)V

    goto :goto_0

    .line 5801
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME$10;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_0

    .line 5796
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
