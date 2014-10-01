.class Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;
.super Ljava/lang/Object;
.source "SimeSkbTemplate.java"


# static fields
.field public static final KEYTYPE_ID_FUNCTION_KEY:I = 0x1

.field public static final KEYTYPE_ID_FUNCTION_KEY_BIG_FONT:I = 0xc

.field public static final KEYTYPE_ID_FUNCTION_KEY_SMALL_FONT:I = 0xb

.field public static final KEYTYPE_ID_FUNCTION_KEY_SMALL_FONT_BUBBLEFONTCOLOR:I = 0x15

.field public static final KEYTYPE_ID_FUNCTION_KEY_TWO_LINE:I = 0x7

.field public static final KEYTYPE_ID_FUNCTION_KEY_TWO_LINE_1:I = 0x8

.field public static final KEYTYPE_ID_NORMAL_DISABLED_KEY:I = 0xe

.field public static final KEYTYPE_ID_NORMAL_DOUBLE_LINE_KEY:I = 0xd

.field public static final KEYTYPE_ID_NORMAL_KEY:I = 0x0

.field public static final KEYTYPE_ID_NORMAL_KEY_BIG_FONT:I = 0xa

.field public static final KEYTYPE_ID_NORMAL_KEY_CONSTSIZE:I = 0xf

.field public static final KEYTYPE_ID_NORMAL_KEY_SMALL_FONT:I = 0x9

.field public static final KEYTYPE_ID_NORMAL_SYMBOL_KEY:I = 0x12

.field public static final KEYTYPE_ID_NORMAL_YEARTIME_KEY:I = 0x13

.field public static final KEYTYPE_ID_NORMAL_YEARTIME_LANDSCAPE_KEY:I = 0x14

.field public static final KEYTYPE_ID_NUMERIC_KEY:I = 0x10

.field public static final KEYTYPE_ID_NUMERIC_KEY_FUNC:I = 0x16

.field public static final KEYTYPE_ID_PHONEPAD_DOUBLE_LINE_KEY:I = 0x3

.field public static final KEYTYPE_ID_QWERTY_DOUBLE_LINE_KEY:I = 0x4

.field public static final KEYTYPE_ID_SAMEBACKGROUND_KEY:I = 0x19

.field public static final KEYTYPE_ID_TOOLBAR_FOCUS_KEY:I = 0x18

.field public static final KEYTYPE_ID_TOOLBAR_PICTURE_KEY:I = 0x17

.field public static final KEYTYPE_ID_UNITE_KEY_LEFT:I = 0x5

.field public static final KEYTYPE_ID_UNITE_KEY_RIGHT:I = 0x6


# instance fields
.field public mColor:I

.field public mColorBalloon:I

.field public mColorHl:I

.field public mKeyBg:Landroid/graphics/drawable/Drawable;

.field public mKeyHlBg:Landroid/graphics/drawable/Drawable;

.field public mKeyTypeId:I


# direct methods
.method constructor <init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "id"
    .parameter "bg"
    .parameter "hlBg"

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyTypeId:I

    .line 280
    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyBg:Landroid/graphics/drawable/Drawable;

    .line 281
    iput-object p3, p0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyHlBg:Landroid/graphics/drawable/Drawable;

    .line 282
    return-void
.end method


# virtual methods
.method public setColors(III)V
    .locals 0
    .parameter "color"
    .parameter "colorHl"
    .parameter "colorBalloon"

    .prologue
    .line 285
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColor:I

    .line 286
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColorHl:I

    .line 287
    iput p3, p0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColorBalloon:I

    .line 288
    return-void
.end method
