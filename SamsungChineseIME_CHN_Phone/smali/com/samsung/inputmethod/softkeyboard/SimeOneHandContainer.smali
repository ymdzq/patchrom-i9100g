.class public Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;
.super Landroid/widget/RelativeLayout;
.source "SimeOneHandContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OneHandContainer"

.field private static mOneHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

.field private static mRecentOneHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;


# instance fields
.field private mImeService:Lcom/samsung/inputmethod/SamsungIME;

.field private mLeftButton:Landroid/widget/Button;

.field private mLeftLayout:Landroid/widget/RelativeLayout;

.field private mMajorContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

.field private mMajorLayout:Landroid/widget/LinearLayout;

.field private mNormalLayout:Landroid/widget/RelativeLayout;

.field private mRightButton:Landroid/widget/Button;

.field private mRightLayout:Landroid/widget/RelativeLayout;

.field private mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mRecentOneHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    .line 47
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->LeftHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mOneHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public static SaveRecentOneHandMode(Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 181
    sput-object p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mRecentOneHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    .line 182
    return-void
.end method

.method public static getOneHandMode()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mOneHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    return-object v0
.end method

.method public static getRecentOneHandMode()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mRecentOneHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    return-object v0
.end method

.method public static resetOneHandMode()V
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->LeftHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->setOneHandMode(Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;)V

    .line 186
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->SaveRecentOneHandMode(Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;)V

    .line 187
    return-void
.end method

.method public static setOneHandMode(Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 169
    sput-object p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mOneHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    .line 170
    invoke-static {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->SaveRecentOneHandMode(Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;)V

    .line 172
    return-void
.end method


# virtual methods
.method public changeLeftHandMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 145
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mMajorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 146
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mLeftLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mMajorLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 151
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mMajorLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mMajorContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mMajorLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mLeftLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mLeftLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->LeftHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->setOneHandMode(Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;)V

    .line 161
    return-void
.end method

.method public changeRightHandMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 104
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mMajorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 105
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mRightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mMajorLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 108
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mMajorLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mRightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mMajorLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mMajorContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mRightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->setOneHandMode(Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;)V

    .line 117
    return-void
.end method

.method public initialize(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 85
    check-cast p1, Lcom/samsung/inputmethod/SamsungIME;

    .end local p1
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    .line 87
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getNormalInputView()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mMajorContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    .line 88
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mMajorLayout:Landroid/widget/LinearLayout;

    .line 89
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mRightLayout:Landroid/widget/RelativeLayout;

    .line 90
    const v0, 0x7f0c002d

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mLeftLayout:Landroid/widget/RelativeLayout;

    .line 91
    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mNormalLayout:Landroid/widget/RelativeLayout;

    .line 92
    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mLeftButton:Landroid/widget/Button;

    .line 93
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mRightButton:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-static {v0}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    .line 97
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    .line 63
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 64
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v3

    .line 65
    .local v3, measuredWidth:I
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbCoreHeight(I)I

    move-result v2

    .line 68
    .local v2, measuredHeight:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 69
    .local v4, top_padding:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0043

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 70
    .local v0, bottom_padding:I
    add-int v5, v4, v0

    add-int/2addr v2, v5

    .line 74
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 76
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 79
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 80
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "arg0"
    .parameter "event"

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x1

    .line 191
    invoke-super {p0, p2}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 192
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 193
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 195
    .local v1, key:I
    packed-switch v1, :pswitch_data_0

    .line 255
    :pswitch_0
    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    .line 208
    :pswitch_1
    if-nez v0, :cond_1

    .line 209
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mLeftButton:Landroid/widget/Button;

    const v4, 0x7f020133

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 212
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    if-eqz v3, :cond_1

    .line 213
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 214
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryVibrate(I)V

    .line 217
    :cond_1
    if-ne v0, v2, :cond_0

    .line 218
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mLeftButton:Landroid/widget/Button;

    const v4, 0x7f020132

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 219
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->changeRightHandMode()V

    goto :goto_0

    .line 236
    :pswitch_2
    if-nez v0, :cond_2

    .line 237
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mRightButton:Landroid/widget/Button;

    const v4, 0x7f020131

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 240
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    if-eqz v3, :cond_2

    .line 241
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 242
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryVibrate(I)V

    .line 246
    :cond_2
    if-ne v0, v2, :cond_0

    .line 247
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->mRightButton:Landroid/widget/Button;

    const v4, 0x7f020130

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 248
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->changeLeftHandMode()V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x7f0c002c
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
