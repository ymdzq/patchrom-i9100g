.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
.super Ljava/lang/Object;
.source "SimeSkbSoftKey.java"


# static fields
.field private static final DEBUG:Z = false

.field protected static final KEYMASK_BALLOON:I = 0x20000000

.field protected static final KEYMASK_DISABLE:I = 0x40000000

.field protected static final KEYMASK_REPEAT:I = 0x10000000

.field public static final MAX_MOVE_TOLERANCE_X:I = 0x0

.field public static final MAX_MOVE_TOLERANCE_Y:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SamsungSoftKey"


# instance fields
.field public mBottom:I

.field public mBottomF:F

.field public mBottomMargin:F

.field public mBottomMarginF:F

.field protected mIsIconResizable:Z

.field protected mIsLongPressed:Z

.field protected mKeyCode:I

.field protected mKeyExtraHlIcon:Landroid/graphics/drawable/Drawable;

.field protected mKeyExtraIcon:Landroid/graphics/drawable/Drawable;

.field protected mKeyHlIcon:Landroid/graphics/drawable/Drawable;

.field protected mKeyIcon:Landroid/graphics/drawable/Drawable;

.field protected mKeyIconPopup:Landroid/graphics/drawable/Drawable;

.field protected mKeyLabel:Ljava/lang/String;

.field protected mKeyLongIconPopup:Landroid/graphics/drawable/Drawable;

.field protected mKeyLongLabel:Ljava/lang/String;

.field protected mKeyMask:I

.field protected mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

.field public mLeft:I

.field public mLeftF:F

.field public mLeftMargin:F

.field public mLeftMarginF:F

.field mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

.field public mPopupSkbId:I

.field public mRight:I

.field public mRightF:F

.field public mRightMargin:F

.field public mRightMarginF:F

.field public mTop:I

.field public mTopF:F

.field public mTopMargin:F

.field public mTopMarginF:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsLongPressed:Z

    .line 82
    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsIconResizable:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    return-void
.end method

.method private setKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "keyType"
    .parameter "keyIcon"
    .parameter "keyIconPopup"

    .prologue
    const/4 v0, 0x0

    .line 154
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    .line 155
    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 156
    iput-object p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 157
    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongIconPopup:Landroid/graphics/drawable/Drawable;

    .line 158
    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyHlIcon:Landroid/graphics/drawable/Drawable;

    .line 160
    return-void
.end method


# virtual methods
.method public changeCase(Z)V
    .locals 1
    .parameter "upperCase"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 301
    if-eqz p1, :cond_2

    .line 302
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    .line 306
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 307
    if-eqz p1, :cond_3

    .line 308
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    .line 314
    :cond_1
    :goto_1
    return-void

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    goto :goto_0

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    goto :goto_1
.end method

.method public cloneSamsungSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 111
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-direct {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;-><init>()V

    .line 112
    .local v0, softkey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    .line 113
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    .line 114
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 115
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyHlIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyHlIcon:Landroid/graphics/drawable/Drawable;

    .line 116
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyExtraIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyExtraIcon:Landroid/graphics/drawable/Drawable;

    .line 117
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyExtraHlIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyExtraHlIcon:Landroid/graphics/drawable/Drawable;

    .line 118
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongIconPopup:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongIconPopup:Landroid/graphics/drawable/Drawable;

    .line 120
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    .line 121
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    .line 122
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    .line 123
    iget-boolean v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsLongPressed:Z

    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsLongPressed:Z

    .line 124
    iget-boolean v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsIconResizable:Z

    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsIconResizable:Z

    .line 125
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mPopupSkbId:I

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mPopupSkbId:I

    .line 127
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMarginF:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMarginF:F

    .line 128
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightMarginF:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightMarginF:F

    .line 129
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMargin:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMargin:F

    .line 130
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightMargin:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightMargin:F

    .line 132
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMarginF:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMarginF:F

    .line 133
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomMarginF:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomMarginF:F

    .line 134
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMargin:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMargin:F

    .line 135
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomMargin:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomMargin:F

    .line 137
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftF:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftF:F

    .line 138
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    .line 139
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    .line 140
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomF:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomF:F

    .line 141
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    .line 142
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    .line 143
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    .line 144
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    .line 145
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColor:I

    return v0
.end method

.method public getColorBalloon()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColorBalloon:I

    return v0
.end method

.method public getColorHl()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColorHl:I

    return v0
.end method

.method public getIconNoResize()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsIconResizable:Z

    return v0
.end method

.method public getKeyBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyCode()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    return v0
.end method

.method public getKeyExtraHlIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyExtraHlIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyExtraIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyExtraIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyHlBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyHlBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyHlIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyHlIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyIconPopup()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 277
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getKeyLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyLeft()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    return v0
.end method

.method public getKeyLongIconPopup()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongIconPopup:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyLongLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyTop()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    return v0
.end method

.method public getKeyType()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyTypeId:I

    return v0
.end method

.method public getParentKey()Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    return-object v0
.end method

.method public getPopupResId()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mPopupSkbId:I

    return v0
.end method

.method public height()I
    .locals 2

    .prologue
    .line 396
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isBracketKey()Z
    .locals 2

    .prologue
    .line 352
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    const/16 v1, 0x47

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    const/16 v1, 0x48

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 353
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisable()Z
    .locals 2

    .prologue
    .line 371
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyCodeKey()Z
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongPressed()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsLongPressed:Z

    return v0
.end method

.method public isUniStrKey()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserDefKey()Z
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveWithinKey(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 400
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    add-int/lit8 v0, v0, 0x0

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    add-int/lit8 v0, v0, 0x0

    if-gt v0, p2, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    add-int/lit8 v0, v0, 0x0

    if-le v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    add-int/lit8 v0, v0, 0x0

    if-le v0, p2, :cond_0

    .line 407
    const/4 v0, 0x1

    .line 409
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needBalloon()Z
    .locals 2

    .prologue
    .line 362
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public repeatable()Z
    .locals 2

    .prologue
    .line 366
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIconNoResize(Z)V
    .locals 0
    .parameter "isResizable"

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsIconResizable:Z

    .line 231
    return-void
.end method

.method public setKeyAttribute(ILjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 6
    .parameter "keyCode"
    .parameter "label"
    .parameter "longLabel"
    .parameter "repeat"
    .parameter "balloon"
    .parameter "disable"

    .prologue
    .line 217
    iput-object p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    .line 218
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyAttribute(ILjava/lang/String;ZZZ)V

    .line 219
    return-void
.end method

.method public setKeyAttribute(ILjava/lang/String;ZZZ)V
    .locals 2
    .parameter "keyCode"
    .parameter "label"
    .parameter "repeat"
    .parameter "balloon"
    .parameter "disable"

    .prologue
    .line 190
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    .line 191
    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    .line 193
    if-eqz p3, :cond_0

    .line 194
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    .line 199
    :goto_0
    if-eqz p4, :cond_1

    .line 200
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    .line 206
    :goto_1
    if-eqz p5, :cond_2

    .line 207
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    .line 211
    :goto_2
    return-void

    .line 196
    :cond_0
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    goto :goto_0

    .line 202
    :cond_1
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    goto :goto_1

    .line 209
    :cond_2
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const v1, -0x40000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    goto :goto_2
.end method

.method public setKeyDimensions(FFFF)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 175
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftF:F

    .line 176
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    .line 177
    iput p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    .line 178
    iput p4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomF:F

    .line 179
    return-void
.end method

.method public setKeyLeftRightMargins(FFFF)V
    .locals 0
    .parameter "leftMargin"
    .parameter "rightMargin"
    .parameter "topMargin"
    .parameter "bottomMargin"

    .prologue
    .line 182
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMarginF:F

    .line 183
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightMarginF:F

    .line 184
    iput p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMarginF:F

    .line 185
    iput p4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomMarginF:F

    .line 186
    return-void
.end method

.method public setKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "keyType"
    .parameter "keyIcon"
    .parameter "keyHlIcon"
    .parameter "keyExtraIcon"
    .parameter "keyExtraHlIcon"
    .parameter "keyIconPopup"
    .parameter "keyLPIconPopup"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 166
    iput-object p4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyExtraIcon:Landroid/graphics/drawable/Drawable;

    .line 167
    iput-object p5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyExtraHlIcon:Landroid/graphics/drawable/Drawable;

    .line 168
    iput-object p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyHlIcon:Landroid/graphics/drawable/Drawable;

    .line 169
    iput-object p7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongIconPopup:Landroid/graphics/drawable/Drawable;

    .line 170
    return-void
.end method

.method public setLongPressed(Z)V
    .locals 0
    .parameter "ispressed"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsLongPressed:Z

    .line 227
    return-void
.end method

.method public setParentKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 0
    .parameter "parentKey"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 255
    return-void
.end method

.method public setPopupSkbId(I)V
    .locals 0
    .parameter "popupSkbId"

    .prologue
    .line 222
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mPopupSkbId:I

    .line 223
    return-void
.end method

.method public setSkbCoreSize(II)V
    .locals 2
    .parameter "skbWidth"
    .parameter "skbHeight"

    .prologue
    .line 241
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftF:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    .line 242
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    .line 243
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    .line 244
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomF:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    .line 246
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMarginF:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMargin:F

    .line 247
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightMarginF:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightMargin:F

    .line 249
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMarginF:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMargin:F

    .line 250
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomMarginF:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomMargin:F

    .line 251
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 414
    const-string v0, "\n"

    .line 415
    .local v0, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  keyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  keyMask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  keyLabel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  KeyIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  popupResId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mPopupSkbId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftF:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomF:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    return-object v0

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public width()I
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method
