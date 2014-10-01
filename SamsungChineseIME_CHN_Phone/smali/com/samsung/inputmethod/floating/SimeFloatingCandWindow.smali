.class public Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;
.super Landroid/widget/PopupWindow;
.source "SimeFloatingCandWindow.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "NewApi"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SimeFloatingCandWindow"


# instance fields
.field mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mParentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 47
    check-cast p1, Lcom/samsung/inputmethod/SamsungIME;

    .end local p1
    iput-object p1, p0, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 49
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->setInputMethodMode(I)V

    .line 50
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->setSplitTouchEnabled(Z)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->setClippingEnabled(Z)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->setLayoutInScreenEnabled(Z)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/16 v0, 0x7dc

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->setWindowLayoutType(I)V

    .line 57
    :cond_0
    iput-object p2, p0, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->mParentView:Landroid/view/View;

    .line 59
    return-void
.end method


# virtual methods
.method public show(II)V
    .locals 2
    .parameter "locationX"
    .parameter "locationY"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->mParentView:Landroid/view/View;

    const/16 v1, 0x53

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->showAtLocation(Landroid/view/View;III)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->getHeight()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/inputmethod/floating/SimeFloatingCandWindow;->update(IIII)V

    goto :goto_0
.end method
