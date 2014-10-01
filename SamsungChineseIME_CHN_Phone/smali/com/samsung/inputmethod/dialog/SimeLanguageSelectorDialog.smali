.class public Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;
.super Ljava/lang/Object;
.source "SimeLanguageSelectorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeLanguageSelectorDialog"


# instance fields
.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mInputLanguge:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;",
            ">;"
        }
    .end annotation
.end field

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mOptionsDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 1
    .parameter "ime"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 58
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 59
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputLanguge:Ljava/util/Vector;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mOptionsDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputLanguge:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;)Lcom/samsung/inputmethod/SamsungIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    return-object v0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 169
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 170
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 174
    :cond_0
    return-void
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showSelectLanguage()V
    .locals 15

    .prologue
    .line 63
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v13, :cond_0

    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 161
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->removeAllElements()V

    .line 67
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->clear()V

    .line 69
    new-instance v2, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;-><init>(Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;)V

    .line 70
    .local v2, chn:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0005

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;->langStr:Ljava/lang/String;

    .line 71
    const/high16 v13, 0x2

    iput v13, v2, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;->langMask:I

    .line 73
    new-instance v8, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;

    invoke-direct {v8, p0}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;-><init>(Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;)V

    .line 74
    .local v8, kor:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0008

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;->langStr:Ljava/lang/String;

    .line 75
    const/high16 v13, 0x3

    iput v13, v8, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;->langMask:I

    .line 77
    new-instance v5, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;

    invoke-direct {v5, p0}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;-><init>(Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;)V

    .line 78
    .local v5, eng:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0006

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;->langStr:Ljava/lang/String;

    .line 79
    const/high16 v13, 0x1

    iput v13, v5, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;->langMask:I

    .line 81
    new-instance v6, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;

    invoke-direct {v6, p0}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;-><init>(Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;)V

    .line 82
    .local v6, hk:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0007

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;->langStr:Ljava/lang/String;

    .line 83
    const/high16 v13, 0x5

    iput v13, v6, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;->langMask:I

    .line 85
    new-instance v11, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;

    invoke-direct {v11, p0}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;-><init>(Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;)V

    .line 86
    .local v11, tw:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b000a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;->langStr:Ljava/lang/String;

    .line 87
    const/high16 v13, 0x4

    iput v13, v11, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;->langMask:I

    .line 90
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 91
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 93
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 94
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 96
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 97
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 99
    :cond_3
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 100
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 102
    :cond_4
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 112
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v9

    .line 113
    .local v9, length:I
    const/4 v3, 0x0

    .line 114
    .local v3, currentIndex:I
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v13

    const/high16 v14, 0xf

    and-int v4, v13, v14

    .line 115
    .local v4, currentInputLanguae:I
    new-array v0, v9, [Ljava/lang/String;

    .line 116
    .local v0, Items:[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v9, :cond_6

    .line 117
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;

    iget-object v13, v13, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;->langStr:Ljava/lang/String;

    aput-object v13, v0, v7

    .line 118
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;

    iget v13, v13, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$InputLanguge;->langMask:I

    if-ne v13, v4, :cond_5

    .line 119
    move v3, v7

    .line 116
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 123
    :cond_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v1, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v13, 0x7f0b005d

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 125
    const/high16 v13, 0x104

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    new-instance v13, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$1;

    invoke-direct {v13, p0}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog$1;-><init>(Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;)V

    invoke-virtual {v1, v0, v3, v13}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    iput-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 148
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 150
    .local v12, window:Landroid/view/Window;
    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 151
    .local v10, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 152
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v13

    iput-object v13, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 154
    :cond_7
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 155
    const v13, 0x107dc

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 159
    :goto_2
    invoke-virtual {v12, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 160
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 157
    :cond_8
    const v13, 0x103eb

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_2
.end method
