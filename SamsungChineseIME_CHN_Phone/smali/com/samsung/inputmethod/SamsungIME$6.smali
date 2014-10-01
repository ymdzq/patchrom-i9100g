.class Lcom/samsung/inputmethod/SamsungIME$6;
.super Ljava/lang/Object;
.source "SamsungIME.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/SamsungIME;->showTutorialDialog()V
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
    .line 5726
    iput-object p1, p0, Lcom/samsung/inputmethod/SamsungIME$6;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 5728
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setShowToturial(Z)V

    .line 5729
    return-void

    .line 5728
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
