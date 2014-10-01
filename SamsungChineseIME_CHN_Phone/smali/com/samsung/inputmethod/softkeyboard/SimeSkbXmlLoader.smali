.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;
.super Ljava/lang/Object;
.source "SimeSkbXmlLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static DEFAULT_SKB_CACHE_FLAG:Z = false

.field private static DEFAULT_SKB_STICKY_FLAG:Z = false

.field private static final KEYTYPE_ID_LAST:I = -0x1

.field private static final TAG:Ljava/lang/String; = "XmlKeyboardLoader"

.field private static final XMLATTR_BALLOON_BG:Ljava/lang/String; = "balloon_bg"

.field private static final XMLATTR_COLOR:Ljava/lang/String; = "color"

.field private static final XMLATTR_COLOR_BALLOON:Ljava/lang/String; = "color_balloon"

.field private static final XMLATTR_COLOR_HIGHLIGHT:Ljava/lang/String; = "color_highlight"

.field private static final XMLATTR_ID:Ljava/lang/String; = "id"

.field private static final XMLATTR_KEYTYPE_BG:Ljava/lang/String; = "bg"

.field private static final XMLATTR_KEYTYPE_HLBG:Ljava/lang/String; = "hlbg"

.field private static final XMLATTR_KEY_BALLOON:Ljava/lang/String; = "balloon"

.field private static final XMLATTR_KEY_BOTTOMMARGIN:Ljava/lang/String; = "key_bottommargin"

.field private static final XMLATTR_KEY_CODE:Ljava/lang/String; = "code"

.field private static final XMLATTR_KEY_CODES:Ljava/lang/String; = "codes"

.field private static final XMLATTR_KEY_DISABLE:Ljava/lang/String; = "disable"

.field private static final XMLATTR_KEY_EXTRA_HLICON:Ljava/lang/String; = "extra_hlicon"

.field private static final XMLATTR_KEY_EXTRA_ICON:Ljava/lang/String; = "extra_icon"

.field private static final XMLATTR_KEY_HEIGHT:Ljava/lang/String; = "height"

.field private static final XMLATTR_KEY_HLICON:Ljava/lang/String; = "hlicon"

.field private static final XMLATTR_KEY_ICON:Ljava/lang/String; = "icon"

.field private static final XMLATTR_KEY_ICON_NORESIZE:Ljava/lang/String; = "icon_noresize"

.field private static final XMLATTR_KEY_ICON_POPUP:Ljava/lang/String; = "icon_popup"

.field private static final XMLATTR_KEY_LABEL:Ljava/lang/String; = "label"

.field private static final XMLATTR_KEY_LABELS:Ljava/lang/String; = "labels"

.field private static final XMLATTR_KEY_LEFTMARGIN:Ljava/lang/String; = "key_leftmargin"

.field private static final XMLATTR_KEY_LONG_ICON_POPUP:Ljava/lang/String; = "long_icon_popup"

.field private static final XMLATTR_KEY_LONG_LABEL:Ljava/lang/String; = "long_label"

.field private static final XMLATTR_KEY_LONG_LABELS:Ljava/lang/String; = "long_labels"

.field private static final XMLATTR_KEY_POPUP_SKBID:Ljava/lang/String; = "popup_skb"

.field private static final XMLATTR_KEY_REPEAT:Ljava/lang/String; = "repeat"

.field private static final XMLATTR_KEY_RIGHTMARGIN:Ljava/lang/String; = "key_rightmargin"

.field private static final XMLATTR_KEY_SPLITTER:Ljava/lang/String; = "splitter"

.field private static final XMLATTR_KEY_TOPMARGIN:Ljava/lang/String; = "key_topmargin"

.field private static final XMLATTR_KEY_TYPE:Ljava/lang/String; = "key_type"

.field private static final XMLATTR_KEY_WIDTH:Ljava/lang/String; = "width"

.field private static final XMLATTR_KEY_XMARGIN:Ljava/lang/String; = "key_xmargin"

.field private static final XMLATTR_KEY_YMARGIN:Ljava/lang/String; = "key_ymargin"

.field private static final XMLATTR_POPUP_BG:Ljava/lang/String; = "popup_bg"

.field private static final XMLATTR_QWERTY:Ljava/lang/String; = "qwerty"

.field private static final XMLATTR_QWERTY_UPPERCASE:Ljava/lang/String; = "qwerty_uppercase"

.field private static final XMLATTR_ROW_BOTTOM_MARGIN:Ljava/lang/String; = "row_bottom_margin"

.field private static final XMLATTR_ROW_ID:Ljava/lang/String; = "row_id"

.field private static final XMLATTR_ROW_TOP_MARGIN:Ljava/lang/String; = "row_top_margin"

.field private static final XMLATTR_SKB_BG:Ljava/lang/String; = "skb_bg"

.field private static final XMLATTR_SKB_CACHE_FLAG:Ljava/lang/String; = "skb_cache_flag"

.field private static final XMLATTR_SKB_HORIZONTAL_LINENUM:Ljava/lang/String; = "skb_hor_linenum"

.field private static final XMLATTR_SKB_STICKY_FLAG:Ljava/lang/String; = "skb_sticky_flag"

.field private static final XMLATTR_SKB_TEMPLATE:Ljava/lang/String; = "skb_template"

.field private static final XMLATTR_SKB_VERTICAL_LINENUM:Ljava/lang/String; = "skb_ver_linenum"

.field private static final XMLATTR_START_POS_X:Ljava/lang/String; = "start_pos_x"

.field private static final XMLATTR_START_POS_Y:Ljava/lang/String; = "start_pos_y"

.field private static final XMLATTR_TOGGLE_STATE_ID:Ljava/lang/String; = "state_id"

.field private static final XMLTAG_KEY:Ljava/lang/String; = "key"

.field private static final XMLTAG_KEYBOARD:Ljava/lang/String; = "keyboard"

.field private static final XMLTAG_KEYICON:Ljava/lang/String; = "key_icon"

.field private static final XMLTAG_KEYS:Ljava/lang/String; = "keys"

.field private static final XMLTAG_KEYTYPE:Ljava/lang/String; = "key_type"

.field private static final XMLTAG_ROW:Ljava/lang/String; = "row"

.field private static final XMLTAG_SKB_TEMPLATE:Ljava/lang/String; = "skb_template"

.field private static final XMLTAG_TOGGLE_STATE:Ljava/lang/String; = "toggle_state"

.field private static final XMLTAG_UNITE:Ljava/lang/String; = "unite"


# instance fields
.field mAttrTmp:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mKeyXMargin:F

.field mKeyXPos:F

.field mKeyYMargin:F

.field mKeyYPos:F

.field mNextEventFetched:Z

.field private mResources:Landroid/content/res/Resources;

.field mSkbHeight:I

.field private mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

.field mSkbWidth:I

.field private mXmlEventType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 289
    sput-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->DEFAULT_SKB_CACHE_FLAG:Z

    .line 291
    sput-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->DEFAULT_SKB_STICKY_FLAG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXMargin:F

    .line 340
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYMargin:F

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mNextEventFetched:Z

    .line 380
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    .line 381
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mResources:Landroid/content/res/Resources;

    .line 382
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z
    .locals 4
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 995
    const/4 v3, 0x0

    invoke-interface {p1, v3, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 996
    .local v2, s:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1001
    .end local p3
    :goto_0
    return p3

    .line 998
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, ret:Z
    move p3, v1

    .line 999
    goto :goto_0

    .line 1000
    .end local v1           #ret:Z
    :catch_0
    move-exception v0

    .line 1001
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 6
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    const/4 v5, 0x0

    .line 947
    const/4 v4, 0x0

    invoke-interface {p1, v5, p2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 949
    .local v1, resId:I
    if-nez v1, :cond_1

    .line 950
    invoke-interface {p1, v5, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 951
    .local v3, s:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 959
    .end local v3           #s:Ljava/lang/String;
    .end local p3
    :goto_0
    return p3

    .line 953
    .restart local v3       #s:Ljava/lang/String;
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, ret:I
    move p3, v2

    .line 954
    goto :goto_0

    .line 955
    .end local v2           #ret:I
    :catch_0
    move-exception v0

    .line 956
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 959
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    goto :goto_0
.end method

.method private getDefaultKey(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 14
    .parameter "xrp"
    .parameter "attrKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    const-string v11, "id"

    const/4 v12, -0x1

    invoke-direct {p0, p1, v11, v12}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v3

    .line 735
    .local v3, keyId:I
    iget-object v11, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    invoke-virtual {v11, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getDefaultKey(I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v1

    .line 737
    .local v1, key:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    if-nez v1, :cond_0

    .line 738
    const-string v11, "XmlKeyboardLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "can\'t get key id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "from template, please check your xml"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v9, 0x0

    .line 777
    :goto_0
    return-object v9

    .line 743
    :cond_0
    const/4 v9, 0x0

    .line 745
    .local v9, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    instance-of v11, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    if-eqz v11, :cond_1

    .line 746
    new-instance v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    .end local v9           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-direct {v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;-><init>()V

    .restart local v9       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object v11, v9

    .line 747
    check-cast v11, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    move-object v12, v1

    check-cast v12, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    invoke-virtual {v12}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->cloneToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->setToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;)Z

    .line 751
    :goto_1
    invoke-virtual {v9, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->cloneSamsungSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 753
    const-string v11, "start_pos_x"

    const/high16 v12, -0x4080

    invoke-direct {p0, p1, v11, v12}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v5

    .line 754
    .local v5, keyXPos:F
    const/4 v11, 0x0

    cmpl-float v11, v5, v11

    if-ltz v11, :cond_2

    .line 756
    :goto_2
    const-string v11, "start_pos_y"

    const/high16 v12, -0x4080

    invoke-direct {p0, p1, v11, v12}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v6

    .line 757
    .local v6, keyyPos:F
    const/4 v11, 0x0

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_3

    .line 759
    :goto_3
    const-string v11, "width"

    const/high16 v12, -0x4080

    invoke-direct {p0, p1, v11, v12}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v4

    .line 760
    .local v4, keyWidth:F
    const/4 v11, 0x0

    cmpl-float v11, v4, v11

    if-ltz v11, :cond_4

    .line 762
    :goto_4
    const-string v11, "height"

    const/high16 v12, -0x4080

    invoke-direct {p0, p1, v11, v12}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v2

    .line 763
    .local v2, keyHeight:F
    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-ltz v11, :cond_5

    .line 767
    :goto_5
    move v7, v5

    .line 768
    .local v7, left:F
    add-float v8, v7, v4

    .line 769
    .local v8, right:F
    move v10, v6

    .line 770
    .local v10, top:F
    add-float v0, v10, v2

    .line 772
    .local v0, bottom:F
    sub-float v11, v8, v7

    const/high16 v12, 0x4000

    iget v13, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXMargin:F

    mul-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_6

    const/4 v9, 0x0

    goto :goto_0

    .line 749
    .end local v0           #bottom:F
    .end local v2           #keyHeight:F
    .end local v4           #keyWidth:F
    .end local v5           #keyXPos:F
    .end local v6           #keyyPos:F
    .end local v7           #left:F
    .end local v8           #right:F
    .end local v10           #top:F
    :cond_1
    new-instance v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .end local v9           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-direct {v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;-><init>()V

    .restart local v9       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    goto :goto_1

    .line 754
    .restart local v5       #keyXPos:F
    :cond_2
    iget v5, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftF:F

    goto :goto_2

    .line 757
    .restart local v6       #keyyPos:F
    :cond_3
    iget v6, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    goto :goto_3

    .line 760
    .restart local v4       #keyWidth:F
    :cond_4
    iget v11, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    iget v12, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftF:F

    sub-float v4, v11, v12

    goto :goto_4

    .line 763
    .restart local v2       #keyHeight:F
    :cond_5
    iget v11, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomF:F

    iget v12, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    sub-float v2, v11, v12

    goto :goto_5

    .line 773
    .restart local v0       #bottom:F
    .restart local v7       #left:F
    .restart local v8       #right:F
    .restart local v10       #top:F
    :cond_6
    sub-float v11, v0, v10

    const/high16 v12, 0x4000

    iget v13, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYMargin:F

    mul-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_7

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 775
    :cond_7
    invoke-virtual {v9, v7, v10, v8, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyDimensions(FFFF)V

    goto/16 :goto_0
.end method

.method private getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 1007
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, p2, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1008
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 1009
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0
.end method

.method private getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F
    .locals 6
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 973
    invoke-interface {p1, v5, p2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 974
    .local v1, resId:I
    if-nez v1, :cond_2

    .line 975
    invoke-interface {p1, v5, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 976
    .local v3, s:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 989
    .end local v3           #s:Ljava/lang/String;
    .end local p3
    :goto_0
    return p3

    .line 979
    .restart local v3       #s:Ljava/lang/String;
    .restart local p3
    :cond_0
    :try_start_0
    const-string v4, "%p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 980
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x42c8

    div-float v2, v4, v5

    .local v2, ret:F
    :goto_1
    move p3, v2

    .line 984
    goto :goto_0

    .line 982
    .end local v2           #ret:F
    :cond_1
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .restart local v2       #ret:F
    goto :goto_1

    .line 985
    .end local v2           #ret:F
    :catch_0
    move-exception v0

    .line 986
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 989
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #s:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    goto :goto_0
.end method

.method private getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 6
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    const/4 v5, 0x0

    .line 930
    const/4 v4, 0x0

    invoke-interface {p1, v5, p2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 932
    .local v1, resId:I
    if-nez v1, :cond_1

    .line 933
    invoke-interface {p1, v5, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 934
    .local v3, s:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 942
    .end local v3           #s:Ljava/lang/String;
    .end local p3
    :goto_0
    return p3

    .line 936
    .restart local v3       #s:Ljava/lang/String;
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, ret:I
    move p3, v2

    .line 937
    goto :goto_0

    .line 938
    .end local v2           #ret:I
    :catch_0
    move-exception v0

    .line 939
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 942
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0
.end method

.method private getSoftKey(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 30
    .parameter "xrp"
    .parameter "attrKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 784
    const-string v8, "code"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v5

    .line 785
    .local v5, keyCode:I
    const-string v8, "start_pos_x"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v23

    .line 786
    .local v23, keyXPos:F
    const-string v8, "start_pos_y"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v24

    .line 787
    .local v24, keyYPos:F
    const-string v8, "label"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 788
    .local v6, keyLabel:Ljava/lang/String;
    const-string v8, "long_label"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 789
    .local v7, keyLongLabel:Ljava/lang/String;
    const-string v8, "icon"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 790
    .local v19, keyIcon:Landroid/graphics/drawable/Drawable;
    const-string v8, "hlicon"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 791
    .local v11, keyHlIcon:Landroid/graphics/drawable/Drawable;
    const-string v8, "extra_icon"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 792
    .local v12, keyExtraIcon:Landroid/graphics/drawable/Drawable;
    const-string v8, "extra_hlicon"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 793
    .local v13, keyExtraHlIcon:Landroid/graphics/drawable/Drawable;
    const-string v8, "icon_popup"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 794
    .local v14, keyIconPopup:Landroid/graphics/drawable/Drawable;
    const-string v8, "long_icon_popup"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 795
    .local v15, keyLongIconPopup:Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    const-string v9, "popup_skb"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    .line 797
    .local v26, popupSkbId:I
    const-string v8, "key_leftmargin"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v20

    .line 798
    .local v20, keyLeftMargin:F
    const-string v8, "key_rightmargin"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v21

    .line 799
    .local v21, keyRightMargin:F
    const-string v8, "key_topmargin"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v22

    .line 800
    .local v22, keyTopMargin:F
    const-string v8, "key_bottommargin"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v18

    .line 802
    .local v18, keyBottomMargin:F
    const-string v8, "icon_noresize"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v17

    .line 804
    .local v17, iconNoResize:Z
    if-nez v6, :cond_1

    if-nez v19, :cond_1

    .line 805
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    invoke-virtual {v8, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getDefaultKeyIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 806
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    invoke-virtual {v8, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getDefaultKeyIconPopup(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 807
    if-eqz v19, :cond_0

    if-nez v14, :cond_1

    :cond_0
    const/4 v4, 0x0

    .line 857
    :goto_0
    return-object v4

    .line 814
    :cond_1
    move/from16 v25, v23

    .line 815
    .local v25, left:F
    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyWidth:F

    add-float v27, v25, v8

    .line 816
    .local v27, right:F
    move/from16 v29, v24

    .line 817
    .local v29, top:F
    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyHeight:F

    add-float v16, v29, v8

    .line 819
    .local v16, bottom:F
    sub-float v8, v27, v25

    const/high16 v9, 0x4000

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXMargin:F

    mul-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 820
    :cond_2
    sub-float v8, v16, v29

    const/high16 v9, 0x4000

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYMargin:F

    mul-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    .line 825
    :cond_3
    const/16 v28, 0x0

    .line 826
    .local v28, toggleKey:Z
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    .line 827
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mNextEventFetched:Z

    .line 830
    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 831
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mAttrTmp:Ljava/lang/String;

    .line 832
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mAttrTmp:Ljava/lang/String;

    const-string v9, "toggle_state"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4

    .line 833
    const/16 v28, 0x1

    .line 836
    :cond_4
    if-eqz v28, :cond_5

    .line 837
    new-instance v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    invoke-direct {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;-><init>()V

    .local v4, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object v8, v4

    .line 838
    check-cast v8, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    move-object v9, v4

    check-cast v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->setToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 840
    const/4 v4, 0x0

    goto :goto_0

    .line 843
    .end local v4           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_5
    new-instance v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-direct {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;-><init>()V

    .line 847
    .restart local v4       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_6
    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->repeat:Z

    move-object/from16 v0, p2

    iget-boolean v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloon:Z

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->disable:Z

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyAttribute(ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 849
    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setPopupSkbId(I)V

    .line 850
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v0, p2

    iget v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyType:I

    invoke-virtual {v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getKeyType(I)Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    move-result-object v9

    move-object v8, v4

    move-object/from16 v10, v19

    invoke-virtual/range {v8 .. v15}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 853
    move/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v27

    move/from16 v3, v16

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyDimensions(FFFF)V

    .line 854
    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyLeftRightMargins(FFFF)V

    .line 855
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setIconNoResize(Z)V

    goto/16 :goto_0
.end method

.method private getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    const/4 v2, 0x0

    .line 964
    const/4 v1, 0x0

    invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 965
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 966
    invoke-interface {p1, v2, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 968
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    .locals 24
    .parameter "attrKey"
    .parameter "softKey"
    .parameter "defKeyCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 863
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    move-object/from16 v21, v0

    .line 864
    .local v21, xrp:Landroid/content/res/XmlResourceParser;
    const-string v22, "state_id"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v20

    .line 865
    .local v20, stateId:I
    if-nez v20, :cond_1

    const/16 v19, 0x0

    .line 926
    :cond_0
    :goto_0
    return-object v19

    .line 867
    :cond_1
    const-string v22, "label"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 868
    .local v13, keyLabel:Ljava/lang/String;
    const-string v22, "long_label"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 869
    .local v14, keyLongLabel:Ljava/lang/String;
    const-string v22, "key_type"

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v15

    .line 871
    .local v15, keyTypeId:I
    if-nez v13, :cond_2

    .line 872
    const-string v22, "code"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v12

    .line 876
    .local v12, keyCode:I
    :goto_1
    const-string v22, "icon"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 877
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    const-string v22, "hlicon"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 878
    .local v9, hlIcon:Landroid/graphics/drawable/Drawable;
    const-string v22, "extra_icon"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 879
    .local v8, extraIcon:Landroid/graphics/drawable/Drawable;
    const-string v22, "extra_hlicon"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 881
    .local v7, extraHLIcon:Landroid/graphics/drawable/Drawable;
    const-string v22, "icon_popup"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 882
    .local v11, iconPopup:Landroid/graphics/drawable/Drawable;
    const-string v22, "long_icon_popup"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 883
    .local v16, longIconPopup:Landroid/graphics/drawable/Drawable;
    if-nez v10, :cond_3

    if-nez v13, :cond_3

    .line 884
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 874
    .end local v7           #extraHLIcon:Landroid/graphics/drawable/Drawable;
    .end local v8           #extraIcon:Landroid/graphics/drawable/Drawable;
    .end local v9           #hlIcon:Landroid/graphics/drawable/Drawable;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v11           #iconPopup:Landroid/graphics/drawable/Drawable;
    .end local v12           #keyCode:I
    .end local v16           #longIconPopup:Landroid/graphics/drawable/Drawable;
    :cond_2
    const-string v22, "code"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v12

    .restart local v12       #keyCode:I
    goto :goto_1

    .line 886
    .restart local v7       #extraHLIcon:Landroid/graphics/drawable/Drawable;
    .restart local v8       #extraIcon:Landroid/graphics/drawable/Drawable;
    .restart local v9       #hlIcon:Landroid/graphics/drawable/Drawable;
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v11       #iconPopup:Landroid/graphics/drawable/Drawable;
    .restart local v16       #longIconPopup:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->createToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v19

    .line 887
    .local v19, rootState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    invoke-virtual/range {v19 .. v20}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->setStateId(I)V

    .line 888
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    .line 889
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v0, v15, :cond_4

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getKeyType(I)Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    .line 892
    :cond_4
    move-object/from16 v0, v19

    iput v12, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyCode:I

    .line 893
    move-object/from16 v0, v19

    iput-object v10, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 894
    move-object/from16 v0, v19

    iput-object v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyHlIcon:Landroid/graphics/drawable/Drawable;

    .line 895
    move-object/from16 v0, v19

    iput-object v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyExtraIcon:Landroid/graphics/drawable/Drawable;

    .line 896
    move-object/from16 v0, v19

    iput-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyExtraHlIcon:Landroid/graphics/drawable/Drawable;

    .line 897
    move-object/from16 v0, v19

    iput-object v11, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 898
    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLabel:Ljava/lang/String;

    .line 899
    move-object/from16 v0, v19

    iput-object v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLongLabel:Ljava/lang/String;

    .line 900
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLPIconPopup:Landroid/graphics/drawable/Drawable;

    .line 902
    const-string v22, "repeat"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->repeat:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v18

    .line 903
    .local v18, repeat:Z
    const-string v22, "balloon"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloon:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v5

    .line 904
    .local v5, balloon:Z
    const-string v22, "disable"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->disable:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v6

    .line 906
    .local v6, disable:Z
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->setStateFlags(ZZZ)V

    .line 908
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mNextState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    .line 911
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    .line 913
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 914
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    goto :goto_2

    .line 916
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 917
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 918
    .local v4, attr:Ljava/lang/String;
    const-string v22, "toggle_state"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_0

    .line 919
    invoke-direct/range {p0 .. p3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v17

    .line 921
    .local v17, nextState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-nez v17, :cond_6

    const/16 v19, 0x0

    goto/16 :goto_0

    .line 922
    :cond_6
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mNextState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    goto/16 :goto_0
.end method

.method private getUnite(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;
    .locals 12
    .parameter "xrp"
    .parameter "attrKeyUnite"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1015
    const-string v10, "start_pos_x"

    iget v11, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    invoke-direct {p0, p1, v10, v11}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v3

    .line 1016
    .local v3, keyXPos:F
    const-string v10, "label"

    invoke-direct {p0, p1, v10, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1018
    .local v4, label:Ljava/lang/String;
    if-nez v4, :cond_0

    move-object v8, v9

    .line 1078
    :goto_0
    return-object v8

    .line 1022
    :cond_0
    move v5, v3

    .line 1023
    .local v5, left:F
    iget v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    .line 1028
    .local v7, top:F
    new-instance v8, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;

    invoke-direct {v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;-><init>()V

    .line 1029
    .local v8, unite:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;
    invoke-virtual {v8, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->setKeyAttribute(Ljava/lang/String;)V

    .line 1030
    iget-object v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    iget v11, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyType:I

    invoke-virtual {v10, v11}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getKeyType(I)Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->setKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;)V

    .line 1032
    invoke-virtual {v8, v5, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->setUniteDimensions(FF)V

    .line 1033
    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    invoke-direct {v1, p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 1036
    .local v1, attrKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    iput v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    .line 1038
    const/4 v2, 0x0

    .line 1040
    .local v2, keyId:I
    iget v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 1041
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mAttrTmp:Ljava/lang/String;

    .line 1042
    iget-object v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mAttrTmp:Ljava/lang/String;

    const-string v11, "key"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    .line 1048
    const-string v10, "id"

    const/4 v11, -0x1

    invoke-direct {p0, p1, v10, v11}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v2

    .line 1049
    if-ltz v2, :cond_2

    .line 1050
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDefaultKey(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v6

    .line 1057
    .local v6, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :goto_1
    invoke-virtual {v8, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->addSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z

    .line 1060
    invoke-virtual {v6, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setParentKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 1062
    iget v10, v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    iput v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    .line 1063
    iget v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    float-to-int v10, v10

    iget v11, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    if-le v10, v11, :cond_3

    move-object v8, v9

    .line 1064
    goto :goto_0

    .line 1052
    .end local v6           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_2
    invoke-virtual {v1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->getAttributes(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Z

    .line 1053
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getSoftKey(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v6

    .restart local v6       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    goto :goto_1

    .line 1069
    .end local v6           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_3
    iget v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    .line 1070
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, attr:Ljava/lang/String;
    const-string v10, "unite"

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public loadKeyboard(III)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .locals 53
    .parameter "resourceId"
    .parameter "skbWidth"
    .parameter "skbHeight"

    .prologue
    .line 489
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    if-nez v7, :cond_0

    const/16 v47, 0x0

    .line 727
    :goto_0
    return-object v47

    .line 491
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;

    move-result-object v43

    .line 493
    .local v43, skbPool:Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v52

    .line 494
    .local v52, xrp:Landroid/content/res/XmlResourceParser;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    .line 495
    const/16 v46, 0x0

    .line 499
    .local v46, softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    const/4 v5, 0x0

    .line 501
    .local v5, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    new-instance v16, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 502
    .local v16, attrDef:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    new-instance v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 503
    .local v20, attrSkb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    new-instance v19, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 504
    .local v19, attrRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    new-instance v21, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 505
    .local v21, attrUnite:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    new-instance v18, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 506
    .local v18, attrKeys:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    new-instance v17, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 508
    .local v17, attrKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    .line 509
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    .line 510
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    .line 511
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbHeight:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 514
    const/4 v7, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXMargin:F

    .line 515
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYMargin:F

    .line 516
    invoke-interface/range {v52 .. v52}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    move-object/from16 v47, v46

    .line 517
    .end local v46           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .local v47, softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_22

    .line 518
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mNextEventFetched:Z

    .line 519
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_21

    .line 520
    invoke-interface/range {v52 .. v52}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 522
    .local v15, attr:Ljava/lang/String;
    const-string v7, "keyboard"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 524
    const/4 v7, 0x0

    const-string v8, "skb_template"

    const/4 v9, 0x0

    move-object/from16 v0, v52

    invoke-interface {v0, v7, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v44

    .line 529
    .local v44, skbTemplateId:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v0, v1, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSkbTemplate(ILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    .line 532
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    if-eqz v7, :cond_2

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->getAttributes(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 534
    :cond_2
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 537
    :cond_3
    const-string v7, "skb_cache_flag"

    sget-boolean v8, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->DEFAULT_SKB_CACHE_FLAG:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v24

    .line 539
    .local v24, cacheFlag:Z
    const-string v7, "skb_sticky_flag"

    sget-boolean v8, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->DEFAULT_SKB_STICKY_FLAG:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v49

    .line 542
    .local v49, stickyFlag:Z
    const-string v7, "qwerty"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v30

    .line 544
    .local v30, isQwerty:Z
    const-string v7, "qwerty_uppercase"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v31

    .line 547
    .local v31, isQwertyUpperCase:Z
    const-string v7, "skb_ver_linenum"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v51

    .line 548
    .local v51, verLinenum:I
    const-string v7, "skb_hor_linenum"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v28

    .line 550
    .local v28, horLinenum:I
    new-instance v46, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbHeight:I

    move-object/from16 v0, v46

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;-><init>(ILcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;II)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 552
    .end local v47           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v46       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :try_start_3
    move-object/from16 v0, v46

    move/from16 v1, v24

    move/from16 v2, v49

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setFlags(ZZZZ)V

    .line 554
    move-object/from16 v0, v46

    move/from16 v1, v51

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setLinenums(II)V

    .line 556
    const-string v7, "key_xmargin"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getXMargin()F

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXMargin:F

    .line 558
    const-string v7, "key_ymargin"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getYMargin()F

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYMargin:F

    .line 560
    const-string v7, "skb_bg"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v42

    .line 561
    .local v42, skbBg:Landroid/graphics/drawable/Drawable;
    const-string v7, "popup_bg"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v39

    .line 562
    .local v39, popupBg:Landroid/graphics/drawable/Drawable;
    const-string v7, "balloon_bg"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 563
    .local v22, balloonBg:Landroid/graphics/drawable/Drawable;
    if-eqz v42, :cond_4

    .line 564
    move-object/from16 v0, v46

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setSkbBackground(Landroid/graphics/drawable/Drawable;)V

    .line 566
    :cond_4
    if-eqz v39, :cond_5

    .line 567
    move-object/from16 v0, v46

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setPopupBackground(Landroid/graphics/drawable/Drawable;)V

    .line 569
    :cond_5
    if-eqz v22, :cond_6

    .line 570
    move-object/from16 v0, v46

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setKeyBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 572
    :cond_6
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXMargin:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYMargin:F

    move-object/from16 v0, v46

    invoke-virtual {v0, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setKeyMargins(FF)V

    .line 711
    .end local v15           #attr:Ljava/lang/String;
    .end local v22           #balloonBg:Landroid/graphics/drawable/Drawable;
    .end local v24           #cacheFlag:Z
    .end local v28           #horLinenum:I
    .end local v30           #isQwerty:Z
    .end local v31           #isQwertyUpperCase:Z
    .end local v39           #popupBg:Landroid/graphics/drawable/Drawable;
    .end local v42           #skbBg:Landroid/graphics/drawable/Drawable;
    .end local v44           #skbTemplateId:I
    .end local v49           #stickyFlag:Z
    .end local v51           #verLinenum:I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mNextEventFetched:Z

    if-nez v7, :cond_1

    invoke-interface/range {v52 .. v52}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v47, v46

    .end local v46           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v47       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    goto/16 :goto_1

    .line 573
    .restart local v15       #attr:Ljava/lang/String;
    :cond_7
    :try_start_4
    const-string v7, "row"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_9

    .line 574
    invoke-virtual/range {v19 .. v20}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->getAttributes(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 575
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 578
    :cond_8
    const-string v7, "start_pos_x"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    .line 579
    const-string v7, "start_pos_y"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    .line 580
    const-string v7, "row_id"

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v41

    .line 582
    .local v41, rowId:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    const-string v8, "row_top_margin"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v8

    const-string v9, "row_bottom_margin"

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v9, v10}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v9

    move-object/from16 v0, v47

    move/from16 v1, v41

    invoke-virtual {v0, v1, v7, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->beginNewRow(IFFF)V

    move-object/from16 v46, v47

    .line 583
    .end local v47           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v46       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    goto :goto_2

    .end local v41           #rowId:I
    .end local v46           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v47       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :cond_9
    const-string v7, "keys"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_16

    .line 584
    if-nez v47, :cond_a

    const/16 v47, 0x0

    goto/16 :goto_0

    .line 585
    :cond_a
    invoke-virtual/range {v18 .. v19}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->getAttributes(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 586
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 589
    :cond_b
    const/4 v7, 0x0

    const-string v8, "splitter"

    move-object/from16 v0, v52

    invoke-interface {v0, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 591
    .local v48, splitter:Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 592
    const/4 v7, 0x0

    const-string v8, "labels"

    move-object/from16 v0, v52

    invoke-interface {v0, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 594
    .local v35, labels:Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "long_labels"

    move-object/from16 v0, v52

    invoke-interface {v0, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 596
    .local v38, longlables:Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "codes"

    move-object/from16 v0, v52

    invoke-interface {v0, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 598
    .local v26, codes:Ljava/lang/String;
    if-eqz v48, :cond_c

    if-nez v35, :cond_d

    .line 599
    :cond_c
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 601
    :cond_d
    move-object/from16 v0, v35

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    .line 603
    .local v34, labelArr:[Ljava/lang/String;
    const/16 v37, 0x0

    .line 604
    .local v37, longlabelArr:[Ljava/lang/String;
    if-eqz v38, :cond_e

    .line 605
    move-object/from16 v0, v38

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    .line 608
    :cond_e
    const/16 v25, 0x0

    .line 610
    .local v25, codeArr:[Ljava/lang/String;
    if-eqz v26, :cond_f

    .line 611
    move-object/from16 v0, v26

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 612
    move-object/from16 v0, v34

    array-length v7, v0

    move-object/from16 v0, v25

    array-length v8, v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    if-eq v7, v8, :cond_f

    .line 613
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 617
    :cond_f
    const/16 v29, 0x0

    .local v29, i:I
    move-object/from16 v45, v5

    .end local v5           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .local v45, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :goto_3
    :try_start_5
    move-object/from16 v0, v34

    array-length v7, v0

    move/from16 v0, v29

    if-ge v0, v7, :cond_15

    .line 618
    new-instance v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-direct {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;-><init>()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 619
    .end local v45           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v5       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    const/4 v6, 0x0

    .line 620
    .local v6, keyCode:I
    if-eqz v25, :cond_10

    .line 621
    :try_start_6
    aget-object v7, v25, v29

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 624
    :cond_10
    if-nez v37, :cond_11

    .line 625
    aget-object v7, v34, v29

    move-object/from16 v0, v18

    iget-boolean v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->repeat:Z

    move-object/from16 v0, v18

    iget-boolean v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloon:Z

    move-object/from16 v0, v18

    iget-boolean v10, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->disable:Z

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyAttribute(ILjava/lang/String;ZZZ)V

    .line 632
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v0, v18

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyType:I

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getKeyType(I)Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v5

    invoke-virtual/range {v7 .. v14}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 636
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    move/from16 v36, v0

    .line 638
    .local v36, left:F
    move-object/from16 v0, v18

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyWidth:F

    add-float v40, v36, v7

    .line 639
    .local v40, right:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    move/from16 v50, v0

    .line 640
    .local v50, top:F
    move-object/from16 v0, v18

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyHeight:F

    add-float v23, v50, v7

    .line 642
    .local v23, bottom:F
    sub-float v7, v40, v36

    const/high16 v8, 0x4000

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXMargin:F

    mul-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_12

    const/16 v47, 0x0

    goto/16 :goto_0

    .line 628
    .end local v23           #bottom:F
    .end local v36           #left:F
    .end local v40           #right:F
    .end local v50           #top:F
    :cond_11
    aget-object v7, v34, v29

    aget-object v8, v37, v29

    move-object/from16 v0, v18

    iget-boolean v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->repeat:Z

    move-object/from16 v0, v18

    iget-boolean v10, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloon:Z

    move-object/from16 v0, v18

    iget-boolean v11, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->disable:Z

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyAttribute(ILjava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 716
    .end local v6           #keyCode:I
    .end local v15           #attr:Ljava/lang/String;
    .end local v25           #codeArr:[Ljava/lang/String;
    .end local v26           #codes:Ljava/lang/String;
    .end local v29           #i:I
    .end local v34           #labelArr:[Ljava/lang/String;
    .end local v35           #labels:Ljava/lang/String;
    .end local v37           #longlabelArr:[Ljava/lang/String;
    .end local v38           #longlables:Ljava/lang/String;
    .end local v48           #splitter:Ljava/lang/String;
    :catch_0
    move-exception v27

    move-object/from16 v46, v47

    .line 717
    .end local v47           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .local v27, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v46       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :goto_5
    :try_start_7
    const-string v7, "XmlKeyboardLoader"

    const-string v8, "Ill-formatted keybaord resource file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    .line 727
    .end local v5           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .end local v16           #attrDef:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v17           #attrKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v18           #attrKeys:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v19           #attrRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v20           #attrSkb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v21           #attrUnite:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v27           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v46           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .end local v52           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_6
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 643
    .restart local v5       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v6       #keyCode:I
    .restart local v15       #attr:Ljava/lang/String;
    .restart local v16       #attrDef:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v17       #attrKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v18       #attrKeys:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v19       #attrRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v20       #attrSkb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v21       #attrUnite:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v23       #bottom:F
    .restart local v25       #codeArr:[Ljava/lang/String;
    .restart local v26       #codes:Ljava/lang/String;
    .restart local v29       #i:I
    .restart local v34       #labelArr:[Ljava/lang/String;
    .restart local v35       #labels:Ljava/lang/String;
    .restart local v36       #left:F
    .restart local v37       #longlabelArr:[Ljava/lang/String;
    .restart local v38       #longlables:Ljava/lang/String;
    .restart local v40       #right:F
    .restart local v47       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v48       #splitter:Ljava/lang/String;
    .restart local v50       #top:F
    .restart local v52       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_12
    sub-float v7, v23, v50

    const/high16 v8, 0x4000

    :try_start_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYMargin:F

    mul-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_13

    const/16 v47, 0x0

    goto/16 :goto_0

    .line 645
    :cond_13
    move/from16 v0, v36

    move/from16 v1, v50

    move/from16 v2, v40

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyDimensions(FFFF)V

    .line 646
    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->addSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z

    .line 647
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    .line 648
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    mul-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    if-le v7, v8, :cond_14

    .line 649
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 617
    :cond_14
    add-int/lit8 v29, v29, 0x1

    move-object/from16 v45, v5

    .end local v5           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v45       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    goto/16 :goto_3

    .end local v6           #keyCode:I
    .end local v23           #bottom:F
    .end local v36           #left:F
    .end local v40           #right:F
    .end local v50           #top:F
    :cond_15
    move-object/from16 v5, v45

    .end local v45           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v5       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object/from16 v46, v47

    .line 652
    .end local v47           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v46       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    goto/16 :goto_2

    .end local v25           #codeArr:[Ljava/lang/String;
    .end local v26           #codes:Ljava/lang/String;
    .end local v29           #i:I
    .end local v34           #labelArr:[Ljava/lang/String;
    .end local v35           #labels:Ljava/lang/String;
    .end local v37           #longlabelArr:[Ljava/lang/String;
    .end local v38           #longlables:Ljava/lang/String;
    .end local v46           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .end local v48           #splitter:Ljava/lang/String;
    .restart local v47       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :cond_16
    const-string v7, "unite"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_19

    .line 653
    if-nez v47, :cond_17

    .line 654
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 657
    :cond_17
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->getAttributes(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 658
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 660
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getUnite(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;

    move-result-object v33

    .line 661
    .local v33, keyUnite:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;
    move-object/from16 v0, v47

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->addSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z

    move-object/from16 v46, v47

    .line 663
    .end local v47           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v46       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    goto/16 :goto_2

    .end local v33           #keyUnite:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;
    .end local v46           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v47       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :cond_19
    const-string v7, "key"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_20

    .line 664
    if-nez v47, :cond_1a

    .line 665
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 667
    :cond_1a
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->getAttributes(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 668
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 671
    :cond_1b
    const-string v7, "id"

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v32

    .line 672
    .local v32, keyId:I
    if-ltz v32, :cond_1c

    .line 673
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDefaultKey(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v5

    .line 677
    :goto_7
    if-nez v5, :cond_1d

    const/16 v47, 0x0

    goto/16 :goto_0

    .line 675
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getSoftKey(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v5

    goto :goto_7

    .line 680
    :cond_1d
    iget v7, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    .line 681
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    mul-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    if-le v7, v8, :cond_1e

    .line 682
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 689
    :cond_1e
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1f

    .line 690
    invoke-interface/range {v52 .. v52}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 691
    const-string v7, "row"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1f

    .line 692
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    move-object/from16 v0, v19

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyHeight:F

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    .line 693
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbHeight:I

    mul-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbHeight:I

    if-le v7, v8, :cond_1f

    .line 694
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 698
    :cond_1f
    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->addSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z

    .end local v15           #attr:Ljava/lang/String;
    .end local v32           #keyId:I
    :cond_20
    move-object/from16 v46, v47

    .end local v47           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v46       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    goto/16 :goto_2

    .line 700
    .end local v46           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v47       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :cond_21
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_20

    .line 701
    invoke-interface/range {v52 .. v52}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 702
    .restart local v15       #attr:Ljava/lang/String;
    const-string v7, "row"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_20

    .line 703
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    move-object/from16 v0, v19

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyHeight:F

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    .line 704
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbHeight:I

    mul-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbHeight:I

    if-le v7, v8, :cond_20

    .line 705
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 713
    .end local v15           #attr:Ljava/lang/String;
    :cond_22
    invoke-interface/range {v52 .. v52}, Landroid/content/res/XmlResourceParser;->close()V

    .line 714
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbHeight:I

    move-object/from16 v0, v47

    invoke-virtual {v0, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setSkbCoreSize(II)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 718
    :catch_1
    move-exception v27

    move-object/from16 v46, v47

    .line 719
    .end local v47           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .local v27, e:Ljava/io/IOException;
    .restart local v46       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :goto_8
    :try_start_9
    const-string v7, "XmlKeyboardLoader"

    const-string v8, "Unable to read keyboard resource file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_6

    .line 722
    .end local v5           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .end local v16           #attrDef:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v17           #attrKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v18           #attrKeys:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v19           #attrRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v20           #attrSkb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v21           #attrUnite:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v27           #e:Ljava/io/IOException;
    .end local v46           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .end local v52           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v27

    .line 724
    .local v27, e:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "XmlKeyboardLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can\'t find resourceId id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "from template, please check your resource file"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 718
    .end local v27           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v5       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v16       #attrDef:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v17       #attrKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v18       #attrKeys:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v19       #attrRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v20       #attrSkb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v21       #attrUnite:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v46       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v52       #xrp:Landroid/content/res/XmlResourceParser;
    :catch_3
    move-exception v27

    goto :goto_8

    .end local v5           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .end local v46           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v15       #attr:Ljava/lang/String;
    .restart local v25       #codeArr:[Ljava/lang/String;
    .restart local v26       #codes:Ljava/lang/String;
    .restart local v29       #i:I
    .restart local v34       #labelArr:[Ljava/lang/String;
    .restart local v35       #labels:Ljava/lang/String;
    .restart local v37       #longlabelArr:[Ljava/lang/String;
    .restart local v38       #longlables:Ljava/lang/String;
    .restart local v45       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v47       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v48       #splitter:Ljava/lang/String;
    :catch_4
    move-exception v27

    move-object/from16 v5, v45

    .end local v45           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v5       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object/from16 v46, v47

    .end local v47           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v46       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    goto :goto_8

    .line 716
    .end local v15           #attr:Ljava/lang/String;
    .end local v25           #codeArr:[Ljava/lang/String;
    .end local v26           #codes:Ljava/lang/String;
    .end local v29           #i:I
    .end local v34           #labelArr:[Ljava/lang/String;
    .end local v35           #labels:Ljava/lang/String;
    .end local v37           #longlabelArr:[Ljava/lang/String;
    .end local v38           #longlables:Ljava/lang/String;
    .end local v48           #splitter:Ljava/lang/String;
    :catch_5
    move-exception v27

    goto/16 :goto_5

    .end local v5           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .end local v46           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v15       #attr:Ljava/lang/String;
    .restart local v25       #codeArr:[Ljava/lang/String;
    .restart local v26       #codes:Ljava/lang/String;
    .restart local v29       #i:I
    .restart local v34       #labelArr:[Ljava/lang/String;
    .restart local v35       #labels:Ljava/lang/String;
    .restart local v37       #longlabelArr:[Ljava/lang/String;
    .restart local v38       #longlables:Ljava/lang/String;
    .restart local v45       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v47       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v48       #splitter:Ljava/lang/String;
    :catch_6
    move-exception v27

    move-object/from16 v5, v45

    .end local v45           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v5       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object/from16 v46, v47

    .end local v47           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v46       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    goto/16 :goto_5
.end method

.method public loadSkbTemplate(I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;
    .locals 32
    .parameter "resourceId"

    .prologue
    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    if-nez p1, :cond_1

    .line 386
    :cond_0
    const/16 v30, 0x0

    .line 485
    :goto_0
    return-object v30

    .line 388
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mResources:Landroid/content/res/Resources;

    move-object/from16 v25, v0

    .line 389
    .local v25, r:Landroid/content/res/Resources;
    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v28

    .line 391
    .local v28, xrp:Landroid/content/res/XmlResourceParser;
    new-instance v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v4, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 392
    .local v4, attrDef:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    new-instance v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v5, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 394
    .local v5, attrKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    new-instance v30, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    .line 395
    const/16 v23, -0x1

    .line 396
    .local v23, lastKeyTypeId:I
    const/4 v13, 0x0

    .line 397
    .local v13, globalColor:I
    const/4 v15, 0x0

    .line 398
    .local v15, globalColorHl:I
    const/4 v14, 0x0

    .line 400
    .local v14, globalColorBalloon:I
    :try_start_0
    invoke-interface/range {v28 .. v28}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    .line 401
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_e

    .line 402
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mNextEventFetched:Z

    .line 403
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    .line 404
    invoke-interface/range {v28 .. v28}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 405
    .local v6, attribute:Ljava/lang/String;
    const-string v30, "skb_template"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v30

    if-nez v30, :cond_6

    .line 407
    const-string v30, "balloon_bg"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 409
    .local v7, balloonBg:Landroid/graphics/drawable/Drawable;
    const-string v30, "popup_bg"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 411
    .local v24, popupBg:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_3

    if-nez v24, :cond_4

    .line 413
    :cond_3
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 416
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->setPopupBackground(Landroid/graphics/drawable/Drawable;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->setKeyBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 419
    const-string v30, "key_xmargin"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v27

    .line 420
    .local v27, xMargin:F
    const-string v30, "key_ymargin"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v29

    .line 421
    .local v29, yMargin:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->setMargins(FF)V

    .line 424
    const-string v30, "color"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v13

    .line 425
    const-string v30, "color_highlight"

    const/16 v31, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v15

    .line 427
    const-string v30, "color_balloon"

    const/16 v31, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v14

    .line 476
    .end local v6           #attribute:Ljava/lang/String;
    .end local v7           #balloonBg:Landroid/graphics/drawable/Drawable;
    .end local v24           #popupBg:Landroid/graphics/drawable/Drawable;
    .end local v27           #xMargin:F
    .end local v29           #yMargin:F
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mNextEventFetched:Z

    move/from16 v30, v0

    if-nez v30, :cond_2

    invoke-interface/range {v28 .. v28}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 480
    :catch_0
    move-exception v12

    .line 481
    .local v12, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v30, "XmlKeyboardLoader"

    const-string v31, "Ill-formatted keyboard template resource file"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v12           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 429
    .restart local v6       #attribute:Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v30, "key_type"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v30

    if-nez v30, :cond_9

    .line 430
    const-string v30, "id"

    const/16 v31, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v19

    .line 431
    .local v19, id:I
    const-string v30, "bg"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 432
    .local v8, bg:Landroid/graphics/drawable/Drawable;
    const-string v30, "hlbg"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 434
    .local v16, hlBg:Landroid/graphics/drawable/Drawable;
    const-string v30, "color"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2, v13}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v9

    .line 435
    .local v9, color:I
    const-string v30, "color_highlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2, v15}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v11

    .line 437
    .local v11, colorHl:I
    const-string v30, "color_balloon"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2, v14}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v10

    .line 439
    .local v10, colorBalloon:I
    add-int/lit8 v30, v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v30

    if-eq v0, v1, :cond_7

    .line 440
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 442
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v8, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->createKeyType(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    move-result-object v22

    .line 444
    .local v22, keyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;
    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v11, v10}, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->setColors(III)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->addKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;)Z

    move-result v30

    if-nez v30, :cond_8

    .line 446
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 448
    :cond_8
    move/from16 v23, v19

    .line 449
    goto/16 :goto_2

    .end local v8           #bg:Landroid/graphics/drawable/Drawable;
    .end local v9           #color:I
    .end local v10           #colorBalloon:I
    .end local v11           #colorHl:I
    .end local v16           #hlBg:Landroid/graphics/drawable/Drawable;
    .end local v19           #id:I
    .end local v22           #keyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;
    :cond_9
    const-string v30, "key_icon"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v30

    if-nez v30, :cond_a

    .line 450
    const-string v30, "code"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v20

    .line 451
    .local v20, keyCode:I
    const-string v30, "icon"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 452
    .local v17, icon:Landroid/graphics/drawable/Drawable;
    const-string v30, "icon_popup"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 454
    .local v18, iconPopup:Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_5

    if-eqz v18, :cond_5

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v20

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->addDefaultKeyIcons(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 482
    .end local v6           #attribute:Ljava/lang/String;
    .end local v17           #icon:Landroid/graphics/drawable/Drawable;
    .end local v18           #iconPopup:Landroid/graphics/drawable/Drawable;
    .end local v20           #keyCode:I
    :catch_1
    move-exception v12

    .line 483
    .local v12, e:Ljava/io/IOException;
    const-string v30, "XmlKeyboardLoader"

    const-string v31, "Unable to keyboard template resource file"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 458
    .end local v12           #e:Ljava/io/IOException;
    .restart local v6       #attribute:Ljava/lang/String;
    :cond_a
    :try_start_2
    const-string v30, "key"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v30

    if-nez v30, :cond_5

    .line 459
    const-string v30, "id"

    const/16 v31, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v21

    .line 460
    .local v21, keyId:I
    const/16 v30, -0x1

    move/from16 v0, v30

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    const/16 v30, 0x0

    goto/16 :goto_0

    .line 462
    :cond_b
    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->getAttributes(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Z

    move-result v30

    if-nez v30, :cond_c

    .line 463
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 467
    :cond_c
    const-string v30, "start_pos_x"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    .line 468
    const-string v30, "start_pos_y"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    .line 470
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getSoftKey(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v26

    .line 471
    .local v26, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    if-nez v26, :cond_d

    const/16 v30, 0x0

    goto/16 :goto_0

    .line 472
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->addDefaultKey(ILcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto/16 :goto_2

    .line 478
    .end local v6           #attribute:Ljava/lang/String;
    .end local v21           #keyId:I
    .end local v26           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_e
    invoke-interface/range {v28 .. v28}, Landroid/content/res/XmlResourceParser;->close()V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v30, v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
