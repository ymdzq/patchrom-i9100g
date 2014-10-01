.class public Lcom/samsung/inputmethod/candidate/SimeCandManager;
.super Landroid/widget/LinearLayout;
.source "SimeCandManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/candidate/SimeCandManager$1;,
        Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;,
        Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;,
        Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;,
        Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;,
        Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;,
        Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeCandManager"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

.field private mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

.field private mDefaultListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

.field private mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

.field private mExpandListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;

.field private mExpandWindow:Landroid/widget/PopupWindow;

.field private mFetchCandHandler:Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;

.field private mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

.field private mHWRListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;

.field private mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

.field private mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mKorT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

.field private mPinYinListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;

.field private mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

.field private mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

.field private mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

.field private mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

.field private mVerticalWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mFetchCandHandler:Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;

    .line 158
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->inflater:Landroid/view/LayoutInflater;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/SamsungIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/comm/SimeSoundManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    return-object v0
.end method

.method private getCommonItemLayoutParameter()Landroid/widget/LinearLayout$LayoutParams;
    .locals 6

    .prologue
    const/4 v3, -0x2

    const/4 v5, 0x0

    .line 162
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 163
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 164
    .local v2, r:Landroid/content/res/Resources;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 167
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_1

    .line 168
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getOneHandMode()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    if-ne v3, v4, :cond_0

    .line 169
    const v3, 0x7f0a001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 174
    :goto_0
    return-object v1

    .line 171
    :cond_0
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private showLeftWindow(Z)V
    .locals 10
    .parameter "show"

    .prologue
    const/16 v9, 0x3c

    const/16 v8, 0x32

    const/16 v7, 0x2a

    const/4 v5, 0x0

    const/16 v6, 0x53

    .line 1393
    if-eqz p1, :cond_b

    .line 1395
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 1396
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1398
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1399
    .local v2, r:Landroid/content/res/Resources;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_1

    .line 1400
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, p0, v6, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1440
    .end local v1           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .end local v2           #r:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 1401
    .restart local v1       #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .restart local v2       #r:Landroid/content/res/Resources;
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_7

    .line 1402
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getOneHandMode()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    if-ne v3, v4, :cond_4

    .line 1403
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1404
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    const/16 v4, 0x5c

    invoke-virtual {v3, p0, v6, v4, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1405
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw360dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1406
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    const/16 v4, 0x74

    invoke-virtual {v3, p0, v6, v4, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1408
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    const/16 v4, 0x8a

    invoke-virtual {v3, p0, v6, v4, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1411
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1412
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    const/16 v4, 0x12

    invoke-virtual {v3, p0, v6, v4, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1413
    :cond_5
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw360dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1414
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    const/16 v4, 0x18

    invoke-virtual {v3, p0, v6, v4, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1416
    :cond_6
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    const/16 v4, 0x20

    invoke-virtual {v3, p0, v6, v4, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1419
    :cond_7
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_0

    .line 1421
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 1422
    .local v0, anchor:Landroid/graphics/Point;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1423
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v3, p0, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1424
    :cond_8
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1425
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v3, p0, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 1427
    :cond_9
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, p0, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 1431
    .end local v0           #anchor:Landroid/graphics/Point;
    .end local v2           #r:Landroid/content/res/Resources;
    :cond_a
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->update()V

    goto/16 :goto_0

    .line 1435
    .end local v1           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    :cond_b
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 1436
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 1437
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected FocusOnTopItem(I)Z
    .locals 2
    .parameter "choiceId"

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, bRet:Z
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWTopHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 568
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->hwFocusOnItem(I)Z

    move-result v0

    .line 576
    :cond_1
    :goto_0
    return v0

    .line 569
    :cond_2
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->pinyinFocusOnItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected ProcessHzCommonKey(IZZ)Z
    .locals 9
    .parameter "keyCode"
    .parameter "realAction"
    .parameter "isLongPressed"

    .prologue
    const/4 v7, 0x0

    .line 682
    const/4 v3, 0x0

    .line 683
    .local v3, bRet:Z
    const/4 v4, -0x1

    .line 684
    .local v4, globalChoiceId:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 689
    .local v5, ic:Landroid/view/inputmethod/InputConnection;
    packed-switch p1, :pswitch_data_0

    .line 788
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 691
    :pswitch_1
    if-eqz p2, :cond_1

    .line 694
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->activeCurseBackward()Z

    .line 696
    :cond_1
    const/4 v3, 0x1

    .line 697
    goto :goto_0

    .line 699
    :pswitch_2
    if-eqz p2, :cond_2

    .line 702
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->activeCurseForward()Z

    .line 704
    :cond_2
    const/4 v3, 0x1

    .line 705
    goto :goto_0

    .line 707
    :pswitch_3
    if-eqz p2, :cond_3

    .line 710
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->isFirstPage()Z

    move-result v6

    if-nez v6, :cond_4

    .line 711
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageBackward(Z)Z

    .line 727
    :cond_3
    :goto_1
    const/4 v3, 0x1

    .line 728
    goto :goto_0

    .line 715
    :cond_4
    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 718
    :cond_5
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    goto :goto_1

    .line 730
    :pswitch_4
    if-eqz p2, :cond_6

    .line 734
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageForward(Z)Z

    .line 736
    :cond_6
    const/4 v3, 0x1

    .line 737
    goto :goto_0

    .line 739
    :pswitch_5
    if-eqz p2, :cond_7

    .line 743
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v1

    .line 745
    .local v1, activeCandNo:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDefaultListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->onSelectChoice(I)Z

    .line 747
    .end local v1           #activeCandNo:I
    :cond_7
    const/4 v3, 0x1

    .line 749
    goto :goto_0

    .line 760
    :pswitch_6
    const-string v6, "SimeCandManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------type is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v6

    if-nez v6, :cond_9

    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v6

    if-nez v6, :cond_9

    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez p3, :cond_9

    :cond_8
    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 770
    :cond_9
    if-eqz p2, :cond_a

    .line 771
    add-int/lit8 v6, p1, -0x7

    add-int/lit8 v0, v6, -0x1

    .line 774
    .local v0, activeCandInPage:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v6, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setActiveCand(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 775
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v2

    .line 778
    .local v2, activeGlobalPos:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDefaultListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

    invoke-virtual {v6, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->onSelectChoice(I)Z

    .line 781
    .end local v0           #activeCandInPage:I
    .end local v2           #activeGlobalPos:I
    :cond_a
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 689
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public dismissRealCandidates()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 260
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 263
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 266
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 268
    return-void
.end method

.method public getActivCCItem()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    return-object v0
.end method

.method public getCCShowType()Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    return-object v0
.end method

.method public getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    return-object v0
.end method

.method public getExpandCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    return-object v0
.end method

.method public getTopCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    return-object v0
.end method

.method protected hwFocusOnItem(I)Z
    .locals 7
    .parameter "choiceId"

    .prologue
    const/4 v6, 0x1

    .line 511
    const/4 v0, 0x0

    .line 516
    .local v0, bRet:Z
    if-ltz p1, :cond_2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    iget-object v3, v3, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 518
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    iget-object v3, v3, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, choice:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 521
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 522
    invoke-interface {v2, v1, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 528
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->predictChoice(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 530
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 531
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v5, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    .line 533
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(Z)V

    .line 539
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 541
    .end local v1           #choice:Ljava/lang/String;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2
    return v0

    .line 535
    .restart local v1       #choice:Ljava/lang/String;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v5, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    goto :goto_0
.end method

.method protected hwSelectItem(I)Z
    .locals 5
    .parameter "choiceId"

    .prologue
    const/4 v4, 0x0

    .line 486
    const/4 v0, 0x0

    .line 491
    .local v0, bRet:Z
    if-ltz p1, :cond_2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    iget-object v3, v3, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 493
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    iget-object v3, v3, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, choice:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 496
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 497
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 499
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->predictChoice(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 500
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->changeToStatePredict(Z)V

    .line 501
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    .line 503
    :cond_1
    const/4 v0, 0x1

    .line 506
    .end local v1           #choice:Ljava/lang/String;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2
    return v0
.end method

.method public initialize(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/comm/SimeBalloonHint;)V
    .locals 6
    .parameter "ime"
    .parameter "balloonHint"

    .prologue
    const v1, 0x7f030001

    const/16 v5, 0x7dc

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 178
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 179
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-static {v0}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    .line 181
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    .line 182
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->addView(Landroid/view/View;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    .line 186
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->addView(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 188
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDefaultListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

    .line 190
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030007

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    .line 191
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->setVisibility(I)V

    .line 192
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    .line 193
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 195
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030003

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    .line 202
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 203
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    .line 204
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 206
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 209
    :cond_1
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWRListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;

    .line 210
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mPinYinListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;

    .line 211
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;

    .line 213
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0, v2, p2, p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->initialize(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    .line 214
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mPinYinListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;

    invoke-virtual {v0, v1, p2, p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->initialize(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    .line 215
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDefaultListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

    invoke-virtual {v0, v1, p2, p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->initialize(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    .line 216
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->initialize(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V

    .line 218
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 223
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v0

    if-nez v0, :cond_2

    .line 236
    :goto_0
    return-void

    .line 225
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    .line 226
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getHWDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    .line 227
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9DecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    .line 229
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mKorT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    .line 231
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setVerticalGravity(I)V

    .line 233
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->invalidate()V

    .line 234
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->requestLayout()V

    goto :goto_0
.end method

.method public isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z
    .locals 2
    .parameter "showType"

    .prologue
    .line 1150
    const/4 v0, 0x0

    .line 1151
    .local v0, ret:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-ne p1, v1, :cond_0

    .line 1152
    const/4 v0, 0x1

    .line 1154
    :cond_0
    return v0
.end method

.method public isExpandWindowShown()Z
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    const/4 v0, 0x1

    .line 1257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowOneItem()Z
    .locals 2

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWTopHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinLeftAndCommon:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-ne v0, v1, :cond_1

    .line 1248
    :cond_0
    const/4 v0, 0x1

    .line 1250
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 1481
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 1482
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_0

    .line 1485
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v2

    .line 1490
    .local v2, measuredWidth:I
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1492
    const/4 v3, -0x2

    invoke-super {p0, p1, v3}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1509
    .end local v2           #measuredWidth:I
    :goto_0
    return-void

    .line 1495
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->isFullscreenMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1496
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    .line 1497
    .restart local v2       #measuredWidth:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getPaddingTop()I

    move-result v1

    .line 1498
    .local v1, measuredHeight:I
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 1501
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1502
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1504
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 1507
    .end local v1           #measuredHeight:I
    .end local v2           #measuredWidth:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 470
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    if-ne p1, v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    .line 481
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    if-ne p1, v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    goto :goto_0

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    if-ne p1, v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    goto :goto_0
.end method

.method protected pinyinFocusOnItem(I)Z
    .locals 5
    .parameter "choiceId"

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 551
    .local v0, bRet:Z
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    iget-object v2, v2, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 553
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    iget-object v2, v2, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, choice:Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mPinYinListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 556
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v3, v3, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getArrowShowType()Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    .line 558
    const/4 v0, 0x1

    .line 560
    .end local v1           #choice:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public preparePageCands()Z
    .locals 3

    .prologue
    .line 1376
    const/4 v0, 0x0

    .line 1380
    .local v0, bNewCandsAdded:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCandFetchOver()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1382
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->prepareCandidatesList(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 1383
    const/4 v0, 0x1

    .line 1388
    :cond_0
    return v0
.end method

.method protected processHzTopKey(IZZ)Z
    .locals 6
    .parameter "keyCode"
    .parameter "realAction"
    .parameter "isLongPressed"

    .prologue
    const/4 v5, 0x0

    .line 584
    const/4 v1, 0x0

    .line 585
    .local v1, bRet:Z
    const/4 v2, -0x1

    .line 586
    .local v2, globalChoiceId:I
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 591
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    packed-switch p1, :pswitch_data_0

    .line 677
    :goto_0
    return v1

    .line 593
    :pswitch_0
    if-eqz p2, :cond_0

    .line 596
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->activeCurseBackward()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 597
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v2

    .line 598
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->FocusOnTopItem(I)Z

    .line 601
    :cond_0
    const/4 v1, 0x1

    .line 602
    goto :goto_0

    .line 604
    :pswitch_1
    if-eqz p2, :cond_1

    .line 607
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->activeCurseForward()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 608
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v2

    .line 609
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->FocusOnTopItem(I)Z

    .line 612
    :cond_1
    const/4 v1, 0x1

    .line 613
    goto :goto_0

    .line 615
    :pswitch_2
    if-eqz p2, :cond_2

    .line 618
    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWTopHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 619
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->isFirstPage()Z

    move-result v4

    if-nez v4, :cond_2

    .line 620
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageBackward(Z)Z

    .line 629
    :cond_2
    const/4 v1, 0x1

    .line 630
    goto :goto_0

    .line 632
    :pswitch_3
    if-eqz p2, :cond_4

    .line 636
    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 639
    :cond_3
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    .line 648
    :cond_4
    :goto_1
    const/4 v1, 0x1

    .line 649
    goto :goto_0

    .line 640
    :cond_5
    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWTopHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 641
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageForward(Z)Z

    goto :goto_1

    .line 651
    :pswitch_4
    if-eqz p2, :cond_7

    .line 654
    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 656
    :cond_6
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    .line 670
    :cond_7
    :goto_2
    const/4 v1, 0x1

    .line 672
    goto/16 :goto_0

    .line 657
    :cond_8
    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWTopHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 660
    :cond_9
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v0

    .line 661
    .local v0, activeCandNo:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->hwSelectItem(I)Z

    goto :goto_2

    .line 591
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public processKey(IZ)Z
    .locals 5
    .parameter "keyCode"
    .parameter "realAction"

    .prologue
    const/4 v4, 0x0

    .line 794
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 795
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v0, 0x0

    .line 800
    .local v0, bRet:Z
    if-eqz v1, :cond_0

    .line 803
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 805
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 809
    packed-switch p1, :pswitch_data_0

    .line 836
    :cond_0
    :goto_0
    return v0

    .line 815
    :pswitch_0
    const/4 v0, 0x1

    .line 816
    goto :goto_0

    .line 822
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    if-ne v2, v3, :cond_2

    .line 823
    invoke-virtual {p0, p1, p2, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processHzTopKey(IZZ)Z

    move-result v0

    goto :goto_0

    .line 825
    :cond_2
    invoke-virtual {p0, p1, p2, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->ProcessHzCommonKey(IZZ)Z

    move-result v0

    goto :goto_0

    .line 809
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processLongPressKey(I)Z
    .locals 5
    .parameter "keyCode"

    .prologue
    const/4 v4, 0x1

    .line 843
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 844
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 845
    const/4 v0, 0x0

    .line 886
    :cond_0
    :goto_0
    return v0

    .line 846
    :cond_1
    const/4 v0, 0x0

    .line 849
    .local v0, bRet:Z
    packed-switch p1, :pswitch_data_0

    .line 867
    const/4 v2, 0x7

    if-lt p1, v2, :cond_0

    const/16 v2, 0x10

    if-gt p1, v2, :cond_0

    .line 868
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 869
    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    if-eq v2, v3, :cond_5

    .line 872
    invoke-virtual {p0, p1, v4, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->ProcessHzCommonKey(IZZ)Z

    move-result v0

    goto :goto_0

    .line 855
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 856
    const/4 v0, 0x1

    goto :goto_0

    .line 859
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    if-ne v2, v3, :cond_4

    .line 860
    invoke-virtual {p0, p1, v4, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processHzTopKey(IZZ)Z

    move-result v0

    goto :goto_0

    .line 862
    :cond_4
    invoke-virtual {p0, p1, v4, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->ProcessHzCommonKey(IZZ)Z

    move-result v0

    .line 865
    goto :goto_0

    .line 873
    :cond_5
    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 875
    :cond_6
    invoke-virtual {p0, p1, v4, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->ProcessHzCommonKey(IZZ)Z

    move-result v0

    goto :goto_0

    .line 849
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public resetAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 249
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 250
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 251
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(Z)V

    .line 252
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showLeftWindow(Z)V

    .line 254
    return-void
.end method

.method public setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V
    .locals 5
    .parameter "activeItem"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1163
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    if-ne v1, p1, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    .line 1170
    const/4 v0, 0x0

    .line 1171
    .local v0, isActiveHightLight:Z
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CAND_HIGHTLIGHT_ALWAYS:Z

    if-eqz v1, :cond_2

    .line 1172
    const/4 v0, 0x1

    .line 1176
    :cond_2
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$1;->$SwitchMap$com$samsung$inputmethod$candidate$SimeCandManager$CCShowType:[I

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1224
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    if-ne v1, v2, :cond_3

    .line 1225
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    .line 1227
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-ne v1, v2, :cond_0

    .line 1229
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteHighlight(ZZ)V

    goto :goto_0

    .line 1182
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    .line 1183
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    if-ne v1, v2, :cond_4

    .line 1186
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v4, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteHighlight(ZZ)V

    .line 1192
    :goto_1
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    if-eq v1, v2, :cond_0

    .line 1193
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    goto :goto_0

    .line 1188
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    .line 1190
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteHighlight(ZZ)V

    goto :goto_1

    .line 1201
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    .line 1202
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    if-eq v1, v2, :cond_5

    .line 1203
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    .line 1204
    :cond_5
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    if-eq v1, v2, :cond_6

    .line 1205
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    .line 1206
    :cond_6
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->enableActiveHighlight(Z)V

    goto :goto_0

    .line 1212
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    .line 1213
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    if-eq v1, v2, :cond_7

    .line 1214
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    .line 1215
    :cond_7
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    if-eq v1, v2, :cond_0

    .line 1216
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    goto/16 :goto_0

    .line 1233
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    if-ne v1, v2, :cond_0

    .line 1234
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    goto/16 :goto_0

    .line 1176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public show(II)V
    .locals 7
    .parameter "locationX"
    .parameter "locationY"

    .prologue
    .line 1442
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_0

    .line 1460
    :goto_0
    return-void

    .line 1448
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 1449
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 1450
    .local v0, anchor:Landroid/graphics/Point;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1452
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x64

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1453
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1454
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x64

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1457
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x32

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method public showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V
    .locals 10
    .parameter "type"
    .parameter "enableActiveHighlight"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 274
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonItemLayoutParameter()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CAND_HIGHTLIGHT_ALWAYS:Z

    if-eqz v4, :cond_1

    .line 281
    const/4 v0, 0x1

    .line 285
    .local v0, isActiveHighlight:Z
    :goto_0
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 291
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(Z)V

    .line 295
    :cond_0
    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$1;->$SwitchMap$com$samsung$inputmethod$candidate$SimeCandManager$CCShowType:[I

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 467
    :goto_1
    return-void

    .line 283
    .end local v0           #isActiveHighlight:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #isActiveHighlight:Z
    goto :goto_0

    .line 298
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 299
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 301
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v4, v8}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 302
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 304
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 305
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 307
    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-ne v4, v5, :cond_2

    .line 308
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 309
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v5, v5, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v6, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v4, v5, v6, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 317
    :goto_2
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    goto :goto_1

    .line 312
    :cond_2
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v9, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 313
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteHighlight(ZZ)V

    .line 314
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v5, v5, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v6, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v4, v5, v6, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    goto :goto_2

    .line 322
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 323
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 325
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v4, v8}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 326
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 328
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 329
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 330
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWRListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setCandidateViewListener(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V

    .line 332
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 333
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    iget-object v5, v5, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v6, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v4, v5, v6, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 334
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    goto/16 :goto_1

    .line 338
    :pswitch_2
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v3

    .line 340
    .local v3, recogSize:I
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 341
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 342
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWRListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setCandidateViewListener(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V

    .line 344
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 345
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    iget-object v5, v5, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v6, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v4, v5, v6, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 347
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v4, v8}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 348
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 350
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 351
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 353
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 354
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v5, v5, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v6, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 355
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    goto/16 :goto_1

    .line 361
    .end local v3           #recogSize:I
    :pswitch_3
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v1

    .line 365
    .local v1, pinyinCandSize:I
    if-gtz v1, :cond_4

    .line 366
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 367
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 369
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v4, v8}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 370
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 372
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 373
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 376
    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-ne v4, v5, :cond_3

    .line 378
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 380
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v5, v5, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v6, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v4, v5, v6, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 382
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    .line 383
    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    goto/16 :goto_1

    .line 386
    :cond_3
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v9, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 387
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteHighlight(ZZ)V

    .line 389
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v5, v5, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v6, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v4, v5, v6, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 391
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    .line 392
    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    goto/16 :goto_1

    .line 395
    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 396
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 397
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mPinYinListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setCandidateViewListener(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V

    .line 399
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 401
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    iget-object v5, v5, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v6, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v4, v5, v6, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 404
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v4, v8}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 405
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 406
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 407
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 408
    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-ne v4, v5, :cond_5

    .line 410
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 412
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v5, v5, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v6, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 420
    :goto_3
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    goto/16 :goto_1

    .line 415
    :cond_5
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v9, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 416
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteHighlight(ZZ)V

    .line 418
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v5, v5, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v6, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    goto :goto_3

    .line 427
    .end local v1           #pinyinCandSize:I
    :pswitch_4
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    .line 431
    .local v2, pinyinSize:I
    if-gtz v2, :cond_6

    .line 432
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v4, v8}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 433
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 435
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 436
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 438
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 439
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 441
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 442
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v5, v5, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v6, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v4, v5, v6, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 445
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    .line 446
    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    goto/16 :goto_1

    .line 449
    :cond_6
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 450
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v4, v7}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 451
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    iget-object v5, v5, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v4, v5, v0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Z)V

    .line 453
    invoke-direct {p0, v9}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showLeftWindow(Z)V

    .line 455
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 456
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 458
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 459
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v4, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 460
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v5, v5, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    sget-object v6, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v4, v5, v6, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 461
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    goto/16 :goto_1

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public showExpand(II)V
    .locals 7
    .parameter "locationX"
    .parameter "locationY"

    .prologue
    .line 1463
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_0

    .line 1479
    :goto_0
    return-void

    .line 1466
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 1467
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 1468
    .local v0, anchor:Landroid/graphics/Point;
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1469
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0x53

    add-int/lit16 v4, p2, -0x226

    invoke-virtual {v2, p0, v3, p1, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1471
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1473
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x32

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1476
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x32

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method public showExpandItem(Z)V
    .locals 10
    .parameter "show"

    .prologue
    const/4 v6, -0x2

    const/16 v9, 0x53

    const/4 v8, 0x0

    .line 1262
    if-eqz p1, :cond_b

    .line 1264
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v1

    .line 1265
    .local v1, candidateHeight:I
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 1266
    .local v2, mParentLocation:[I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isShowOneItem()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1267
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getLocationInWindow([I)V

    .line 1270
    :goto_0
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1274
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mFetchCandHandler:Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->stopPrepareCandidatesTimer()V

    .line 1276
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    invoke-virtual {v5, v6, v6}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->measure(II)V

    .line 1277
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->setVisibility(I)V

    .line 1279
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCandFetchOver()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1281
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mFetchCandHandler:Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->PrepareCandidates(Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 1285
    :cond_0
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v6, v6, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->showExpandCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V

    .line 1286
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_4

    .line 1288
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1289
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v4

    .line 1298
    .local v4, view:Landroid/view/View;
    :goto_1
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    neg-int v6, v6

    invoke-virtual {v5, v4, v9, v8, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1367
    .end local v1           #candidateHeight:I
    .end local v2           #mParentLocation:[I
    .end local v4           #view:Landroid/view/View;
    :cond_1
    :goto_2
    return-void

    .line 1269
    .restart local v1       #candidateHeight:I
    .restart local v2       #mParentLocation:[I
    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getLocationInWindow([I)V

    goto :goto_0

    .line 1291
    :cond_3
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getCandManager()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1292
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getCandManager()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    .restart local v4       #view:Landroid/view/View;
    goto :goto_1

    .line 1299
    .end local v4           #view:Landroid/view/View;
    :cond_4
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_7

    .line 1300
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1301
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getOneHandContainer()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    move-result-object v4

    .line 1310
    .restart local v4       #view:Landroid/view/View;
    :goto_3
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getOneHandMode()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    if-ne v5, v6, :cond_6

    .line 1311
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a001f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v5, v4, v9, v6, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2

    .line 1303
    .end local v4           #view:Landroid/view/View;
    :cond_5
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getCandManager()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1304
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getCandManager()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    .restart local v4       #view:Landroid/view/View;
    goto :goto_3

    .line 1313
    :cond_6
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v4, v9, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2

    .line 1315
    .end local v4           #view:Landroid/view/View;
    :cond_7
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_1

    .line 1317
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getDummyInputView()Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    move-result-object v3

    .line 1318
    .local v3, parentView:Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1319
    move-object v4, v3

    .line 1328
    .restart local v4       #view:Landroid/view/View;
    :goto_4
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 1329
    .local v0, anchor:Landroid/graphics/Point;
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v4, v9, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    .line 1321
    .end local v0           #anchor:Landroid/graphics/Point;
    .end local v4           #view:Landroid/view/View;
    :cond_8
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getCandManager()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1322
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getCandManager()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    .restart local v4       #view:Landroid/view/View;
    goto :goto_4

    .line 1336
    .end local v3           #parentView:Landroid/view/View;
    .end local v4           #view:Landroid/view/View;
    :cond_9
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mFetchCandHandler:Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->stopPrepareCandidatesTimer()V

    .line 1337
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCandFetchOver()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1339
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mFetchCandHandler:Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->PrepareCandidates(Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 1342
    :cond_a
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v6, v6, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->showExpandCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V

    .line 1343
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->update()V

    goto/16 :goto_2

    .line 1359
    .end local v1           #candidateHeight:I
    .end local v2           #mParentLocation:[I
    :cond_b
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mFetchCandHandler:Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PrepareCandidatesTimer;->stopPrepareCandidatesTimer()V

    .line 1362
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->setVisibility(I)V

    .line 1363
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->reset()V

    .line 1364
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_2
.end method
