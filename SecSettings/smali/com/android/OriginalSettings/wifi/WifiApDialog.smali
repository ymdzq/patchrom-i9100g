.class public Lcom/android/OriginalSettings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private isShowPassword:Z

.field private mChannel:Landroid/widget/Spinner;

.field private mContext:Landroid/content/Context;

.field public mDismissIfOpen:Z

.field private mHideSsid:Landroid/widget/CheckBox;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMacaddrAcl:I

.field private mPassword:Landroid/widget/EditText;

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityMsg:Landroid/widget/TextView;

.field private mSecurityTypeIndex:I

.field private mSelectedChannel:I

.field private mSelectedMaxClient:I

.field private mSsid:Landroid/widget/EditText;

.field private mTempPassworld:Ljava/lang/String;

.field private mTempSecurityTypeIndex:I

.field private mTempSsid:Ljava/lang/String;

.field private mUserSelectOpenSecurity:Z

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "wifiConfig"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    const v0, 0x7f10002b

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 82
    iput v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 83
    iput v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 87
    iput v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 99
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    .line 100
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    .line 104
    iput v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 105
    iput v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSelectedMaxClient:I

    .line 107
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mDismissIfOpen:Z

    .line 110
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->isShowPassword:Z

    .line 460
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiApDialog$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 484
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiApDialog$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog$2;-><init>(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 116
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 117
    iput-object p3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 118
    if-eqz p3, :cond_0

    .line 119
    invoke-static {p3}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 121
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 122
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 127
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->validate()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/OriginalSettings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->restartFocusedViewInput()V

    return-void
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "wifiConfig"

    .prologue
    const/4 v0, 0x1

    .line 160
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    :goto_0
    return v0

    .line 162
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    const/4 v0, 0x2

    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restartFocusedViewInput()V
    .locals 2

    .prologue
    .line 700
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 701
    .local v0, focusedView:Landroid/view/View;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 702
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 704
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 705
    :cond_2
    if-eqz v0, :cond_0

    .line 706
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->restartViewInput(Landroid/view/View;)V

    goto :goto_0
.end method

.method private restartViewInput(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 714
    if-eqz p1, :cond_0

    .line 715
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 716
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 720
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private showSecurityFields()V
    .locals 6

    .prologue
    const v5, 0x7f0b0342

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 622
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0341

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    .line 623
    iget v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v1, :cond_1

    .line 624
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 625
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 626
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 628
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 629
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 636
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 637
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 640
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0343

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x90

    :goto_1
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 647
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 649
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    .line 642
    .end local v0           #password:Ljava/lang/String;
    :cond_3
    const/16 v1, 0x80

    goto :goto_1
.end method

.method private validate()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 510
    const/4 v2, 0x0

    .line 511
    .local v2, trimedSsidLength:I
    const/4 v1, 0x0

    .line 512
    .local v1, trimedPasswordLength:I
    const/4 v0, 0x1

    .line 514
    .local v0, enabled:Z
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    .line 515
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 517
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 518
    :cond_0
    const/4 v0, 0x0

    .line 522
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    .line 523
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 526
    :cond_2
    iget v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v3, v5, :cond_4

    :cond_3
    if-eqz v1, :cond_6

    :cond_4
    iget v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v3, v5, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_7

    .line 528
    :cond_6
    const/4 v0, 0x0

    .line 531
    :cond_7
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 532
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->validate()V

    .line 571
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 567
    return-void
.end method

.method public dismissSpinnerPopup()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 658
    :cond_1
    return-void
.end method

.method public getCheckShowPassword()Z
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0343

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 178
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 183
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 184
    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 185
    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mMacaddrAcl:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 190
    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 213
    const/4 v0, 0x0

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-object v0

    .line 192
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 197
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 198
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 205
    .end local v1           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 206
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 207
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    .restart local v1       #password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOpenWarningFlag()Z
    .locals 1

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0340

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 441
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v0, :pswitch_data_0

    .line 457
    :cond_2
    :goto_0
    return-void

    .line 443
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 446
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 447
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 450
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 451
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 561
    .end local p1
    :goto_0
    return-void

    .line 538
    .restart local p1
    :pswitch_0
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x90

    :goto_1
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 543
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 545
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    .line 538
    .end local v0           #password:Ljava/lang/String;
    :cond_0
    const/16 v1, 0x80

    goto :goto_1

    .line 548
    .restart local p1
    :pswitch_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0345

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_2

    .line 536
    :pswitch_data_0
    .packed-switch 0x7f0b0343
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f0b0343

    const/16 v10, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 271
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f040113

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 272
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b0340

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    .line 274
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 275
    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 278
    .local v1, context:Landroid/content/Context;
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    .line 279
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/OriginalSettings/wifi/WifiApDialog;->sSalesCode:Ljava/lang/String;

    .line 281
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b01a6

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b033e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    .line 284
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b0304

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 285
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 288
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b033f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    .line 289
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 290
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v8, v8, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 291
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b0344

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 294
    .local v0, advanced:Landroid/widget/CheckBox;
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 295
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b0346

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    .line 298
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 299
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    iget v8, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSelectedChannel:I

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 302
    const/4 v5, -0x1

    const v8, 0x7f09035c

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v8, v9}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 303
    const/4 v5, -0x2

    const v8, 0x7f09035d

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v8, v9}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 306
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v5, :cond_1

    .line 307
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v8, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 309
    const v5, 0x7f090344

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setTitle(I)V

    .line 314
    :goto_0
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v8, v8, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 323
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    iget v8, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 324
    iget v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_1

    .line 326
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v8, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 327
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 337
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 338
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 340
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 343
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 344
    .local v3, defaultValue:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Wifi_EnableShowPasswordAsDefault"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "USC"

    sget-object v8, Lcom/android/OriginalSettings/wifi/WifiApDialog;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 346
    :cond_2
    const/4 v3, 0x1

    .line 348
    :cond_3
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const-string v8, "wifi_ap_show_passwd"

    invoke-static {v2, v8, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_6

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 352
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 354
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b0348

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 404
    .local v4, maxClientSpinner:Landroid/widget/Spinner;
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b0347

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 405
    invoke-virtual {v4, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 408
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 410
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->showSecurityFields()V

    .line 411
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->validate()V

    .line 412
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 413
    return-void

    .line 311
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #defaultValue:I
    .end local v4           #maxClientSpinner:Landroid/widget/Spinner;
    :cond_4
    const v5, 0x7f0903e3

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setTitle(I)V

    goto/16 :goto_0

    .line 329
    :cond_5
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v3       #defaultValue:I
    :cond_6
    move v6, v7

    .line 348
    goto :goto_2
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 576
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 608
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiApDialog$3;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog$3;-><init>(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 615
    :cond_0
    return-void

    .line 578
    :sswitch_0
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 579
    iput p3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 597
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->showSecurityFields()V

    .line 598
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->validate()V

    goto :goto_0

    .line 601
    :sswitch_1
    iput p3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSelectedChannel:I

    goto :goto_0

    .line 605
    :sswitch_2
    iput p3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSelectedMaxClient:I

    goto :goto_0

    .line 576
    :sswitch_data_0
    .sparse-switch
        0x7f0b0340 -> :sswitch_0
        0x7f0b0346 -> :sswitch_1
        0x7f0b0348 -> :sswitch_2
    .end sparse-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 619
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 564
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .parameter "hasFocus"

    .prologue
    const v6, 0x7f0b0343

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 667
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 669
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0340

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 670
    .local v1, mSecurity:Landroid/widget/Spinner;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 671
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 672
    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 673
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 674
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 681
    :goto_0
    return-void

    .line 676
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 677
    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 678
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 679
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setCheckShowPassword(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 662
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->isShowPassword:Z

    .line 663
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 417
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 418
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0345

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0344

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :cond_1
    return-void

    .line 425
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method
