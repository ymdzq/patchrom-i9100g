.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;
.super Ljava/lang/Object;
.source "SimeSkbTemplate.java"


# instance fields
.field private mBalloonBg:Landroid/graphics/drawable/Drawable;

.field private mKeyIconRecords:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyRecords:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/KeyRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTypeList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupBg:Landroid/graphics/drawable/Drawable;

.field private mSkbBg:Landroid/graphics/drawable/Drawable;

.field private mSkbTemplateId:I

.field private mXMargin:F

.field private mYMargin:F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "skbTemplateId"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mXMargin:F

    .line 57
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mYMargin:F

    .line 59
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    .line 64
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyRecords:Ljava/util/Vector;

    .line 72
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mSkbTemplateId:I

    .line 73
    return-void
.end method


# virtual methods
.method public addDefaultKey(ILcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 4
    .parameter "keyId"
    .parameter "softKey"

    .prologue
    .line 193
    if-nez p2, :cond_0

    .line 206
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;

    invoke-direct {v0}, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;-><init>()V

    .line 196
    .local v0, keyRecord:Lcom/samsung/inputmethod/softkeyboard/KeyRecord;
    iput p1, v0, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;->keyId:I

    .line 197
    iput-object p2, v0, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;->softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 199
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 200
    .local v2, size:I
    const/4 v1, 0x0

    .line 201
    .local v1, pos:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 202
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;->keyId:I

    if-lt v3, p1, :cond_2

    .line 205
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 203
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public addDefaultKeyIcons(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "keyCode"
    .parameter "icon"
    .parameter "iconPopup"

    .prologue
    .line 142
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;

    invoke-direct {v0}, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;-><init>()V

    .line 145
    .local v0, iconRecord:Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;
    iput-object p2, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->icon:Landroid/graphics/drawable/Drawable;

    .line 146
    iput-object p3, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->iconPopup:Landroid/graphics/drawable/Drawable;

    .line 147
    iput p1, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->keyCode:I

    .line 149
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 150
    .local v2, size:I
    const/4 v1, 0x0

    .line 151
    .local v1, pos:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 152
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->keyCode:I

    if-lt v3, p1, :cond_3

    .line 155
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public addKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;)Z
    .locals 2
    .parameter "keyType"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyTypeId:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 132
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public createKeyType(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;
    .locals 1
    .parameter "id"
    .parameter "bg"
    .parameter "hlBg"

    .prologue
    .line 125
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;-><init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getBalloonBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDefaultKey(I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 5
    .parameter "keyId"

    .prologue
    const/4 v3, 0x0

    .line 209
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 210
    .local v2, size:I
    const/4 v1, 0x0

    .line 211
    .local v1, pos:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 212
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;

    .line 213
    .local v0, keyRecord:Lcom/samsung/inputmethod/softkeyboard/KeyRecord;
    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;->keyId:I

    if-ge v4, p1, :cond_0

    .line 214
    add-int/lit8 v1, v1, 0x1

    .line 215
    goto :goto_0

    .line 217
    :cond_0
    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;->keyId:I

    if-ne v4, p1, :cond_1

    .line 218
    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;->softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 222
    .end local v0           #keyRecord:Lcom/samsung/inputmethod/softkeyboard/KeyRecord;
    :cond_1
    return-object v3
.end method

.method public getDefaultKeyIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 160
    .local v2, size:I
    const/4 v1, 0x0

    .line 161
    .local v1, pos:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 162
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;

    .line 163
    .local v0, iconRecord:Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;
    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->keyCode:I

    if-ge v4, p1, :cond_0

    .line 164
    add-int/lit8 v1, v1, 0x1

    .line 165
    goto :goto_0

    .line 167
    :cond_0
    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->keyCode:I

    if-ne v4, p1, :cond_1

    .line 168
    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->icon:Landroid/graphics/drawable/Drawable;

    .line 172
    .end local v0           #iconRecord:Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;
    :cond_1
    return-object v3
.end method

.method public getDefaultKeyIconPopup(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 177
    .local v2, size:I
    const/4 v1, 0x0

    .line 178
    .local v1, pos:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 179
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;

    .line 180
    .local v0, iconRecord:Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;
    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->keyCode:I

    if-ge v4, p1, :cond_0

    .line 181
    add-int/lit8 v1, v1, 0x1

    .line 182
    goto :goto_0

    .line 184
    :cond_0
    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->keyCode:I

    if-ne v4, p1, :cond_1

    .line 185
    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->iconPopup:Landroid/graphics/drawable/Drawable;

    .line 189
    .end local v0           #iconRecord:Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;
    :cond_1
    return-object v3
.end method

.method public getKeyType(I)Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;
    .locals 1
    .parameter "typeId"

    .prologue
    .line 136
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    goto :goto_0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mPopupBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSkbBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mSkbBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSkbTemplateId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mSkbTemplateId:I

    return v0
.end method

.method public getXMargin()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mXMargin:F

    return v0
.end method

.method public getYMargin()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mYMargin:F

    return v0
.end method

.method public setBackgrounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "skbBg"
    .parameter "balloonBg"
    .parameter "popupBg"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mSkbBg:Landroid/graphics/drawable/Drawable;

    .line 82
    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    .line 83
    iput-object p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mPopupBg:Landroid/graphics/drawable/Drawable;

    .line 84
    return-void
.end method

.method public setKeyBalloonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "balloonBg"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    .line 97
    return-void
.end method

.method public setMargins(FF)V
    .locals 0
    .parameter "xMargin"
    .parameter "yMargin"

    .prologue
    .line 112
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mXMargin:F

    .line 113
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mYMargin:F

    .line 114
    return-void
.end method

.method public setPopupBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "popupBg"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mPopupBg:Landroid/graphics/drawable/Drawable;

    .line 93
    return-void
.end method

.method public setSkbBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "skbBg"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mSkbBg:Landroid/graphics/drawable/Drawable;

    .line 89
    return-void
.end method
