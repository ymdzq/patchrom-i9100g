.class Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$1;
.super Ljava/lang/Object;
.source "SimeLanguageSelectorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->showSelectLanguage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$1;->this$0:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, toast:Landroid/widget/Toast;
    iget-object v3, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$1;->this$0:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    #getter for: Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mOptionsDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->access$000(Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->hide()V

    .line 131
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 133
    iget-object v3, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$1;->this$0:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    #getter for: Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputLanguge:Ljava/util/Vector;
    invoke-static {v3}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->access$100(Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;

    iget v0, v3, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;->langMask:I

    .line 134
    .local v0, langMask:I
    iget-object v3, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$1;->this$0:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    #getter for: Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputLanguge:Ljava/util/Vector;
    invoke-static {v3}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->access$100(Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;

    iget-object v1, v3, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;->langStr:Ljava/lang/String;

    .line 135
    .local v1, langStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$1;->this$0:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    #getter for: Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->access$200(Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeBySelectLanguage(I)I

    .line 136
    iget-object v3, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$1;->this$0:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    #getter for: Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v3}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->access$300(Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 137
    iget-object v3, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$1;->this$0:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    #getter for: Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v3}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->access$300(Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 143
    return-void
.end method
