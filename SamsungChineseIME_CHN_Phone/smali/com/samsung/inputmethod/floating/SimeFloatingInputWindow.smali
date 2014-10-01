.class public Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;
.super Landroid/widget/PopupWindow;
.source "SimeFloatingInputWindow.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SimeFloatingInputWindow"


# instance fields
.field mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mParentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "parent"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 48
    check-cast p1, Lcom/samsung/inputmethod/SamsungIME;

    .end local p1
    iput-object p1, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 50
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->setInputMethodMode(I)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->setSplitTouchEnabled(Z)V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->setClippingEnabled(Z)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->setLayoutInScreenEnabled(Z)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/16 v0, 0x7dc

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->setWindowLayoutType(I)V

    .line 59
    :cond_0
    iput-object p2, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->mParentView:Landroid/view/View;

    .line 61
    return-void
.end method


# virtual methods
.method public show(II)V
    .locals 2
    .parameter "locationX"
    .parameter "locationY"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->mParentView:Landroid/view/View;

    const/16 v1, 0x53

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->getHeight()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/inputmethod/floating/SimeFloatingInputWindow;->update(IIII)V

    goto :goto_0
.end method
