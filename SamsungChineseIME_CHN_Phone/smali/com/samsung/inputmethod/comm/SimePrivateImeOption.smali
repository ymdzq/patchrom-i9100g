.class public Lcom/samsung/inputmethod/comm/SimePrivateImeOption;
.super Ljava/lang/Object;
.source "SimePrivateImeOption.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final KEY_INPUTMETHOD:Ljava/lang/String; = "defaultInputmethod"

.field public static final KEY_INPUTMODE:Ljava/lang/String; = "defaultInputmode"

.field public static final KEY_INPUTTYPE:Ljava/lang/String; = "inputType"

.field public static final KEY_KEYBOARDTYPE:Ljava/lang/String; = "keyboardType"

.field private static final TAG:Ljava/lang/String; = "SamsungPrivateImeOption"

.field public static final VAL_HANDWRITING_BOX1:Ljava/lang/String; = "handwritingbox1"

.field public static final VAL_HANDWRITING_BOX2:Ljava/lang/String; = "handwritingbox2"

.field public static final VAL_HANDWRITING_FULL:Ljava/lang/String; = "handwritingfull"

.field public static final VAL_MODE_ENGLISH:Ljava/lang/String; = "english"

.field public static final VAL_MODE_IPADDRESS:Ljava/lang/String; = "ipAddress"

.field public static final VAL_MODE_MMS_RECIPIENT:Ljava/lang/String; = "mmsRecipient"

.field public static final VAL_MODE_NUMERIC:Ljava/lang/String; = "numeric"

.field public static final VAL_PHONEPAD:Ljava/lang/String; = "phonepad"

.field public static final VAL_QWERTY:Ljava/lang/String; = "qwerty"

.field public static final VAL_TYPE_MONTH_EDITTEXT:Ljava/lang/String; = "month_edittext"

.field public static final VAL_TYPE_YEARDATETIME_EDITTEXT:Ljava/lang/String; = "YearDateTime_edittext"


# instance fields
.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mPrivateImeOptionTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    return-void
.end method

.method private getPrivateKeyBoardValue()I
    .locals 4

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, nLayout:I
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    const-string v3, "keyboardType"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    .local v1, strLayout:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 131
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    const-string v3, "defaultInputmethod"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #strLayout:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 133
    .restart local v1       #strLayout:Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    .line 135
    const-string v2, "phonepad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    const/high16 v0, 0x200

    .line 143
    :cond_1
    :goto_0
    return v0

    .line 137
    :cond_2
    const-string v2, "qwerty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    const/high16 v0, 0x100

    goto :goto_0

    .line 139
    :cond_3
    const-string v2, "handwritingfull"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    const/high16 v0, 0x300

    goto :goto_0
.end method


# virtual methods
.method public getInputType()I
    .locals 8

    .prologue
    const/high16 v7, 0x200

    const/4 v4, 0x0

    .line 160
    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    const-string v6, "inputType"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 163
    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    const-string v6, "defaultInputmode"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #value:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 165
    .restart local v3       #value:Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_2

    move v2, v4

    .line 233
    :cond_1
    :goto_0
    return v2

    .line 172
    :cond_2
    const/4 v2, 0x0

    .line 174
    .local v2, newInputMode:I
    const-string v5, "month_edittext"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 175
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 177
    const v2, -0x7dffefff

    goto :goto_0

    .line 179
    :cond_3
    const v2, -0x7efff000

    goto :goto_0

    .line 181
    :cond_4
    const-string v5, "YearDateTime_edittext"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 182
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 184
    const v2, -0x7dffdfff

    goto :goto_0

    .line 186
    :cond_5
    const v2, -0x7effe000

    goto :goto_0

    .line 188
    :cond_6
    const-string v5, "numeric"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 189
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 191
    const v2, 0x72000001

    goto :goto_0

    .line 193
    :cond_7
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getLastMainInputMode()I

    move-result v4

    const/high16 v5, 0xf

    and-int v0, v4, v5

    .line 195
    .local v0, language:I
    invoke-direct {p0}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->getPrivateKeyBoardValue()I

    move-result v1

    .line 196
    .local v1, layout:I
    if-nez v1, :cond_8

    .line 197
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getLastMainInputMode()I

    move-result v4

    const/high16 v5, 0xf00

    and-int v1, v4, v5

    .line 199
    :cond_8
    const/high16 v4, 0x3

    if-eq v0, v4, :cond_9

    const/high16 v4, 0x1

    if-ne v0, v4, :cond_b

    .line 201
    :cond_9
    if-ne v1, v7, :cond_a

    .line 202
    const/high16 v2, 0x7200

    goto/16 :goto_0

    .line 204
    :cond_a
    const v2, 0x61011000

    goto/16 :goto_0

    .line 207
    :cond_b
    if-ne v1, v7, :cond_c

    .line 208
    const/high16 v2, 0x7200

    goto/16 :goto_0

    .line 210
    :cond_c
    const v2, 0x61021000

    goto/16 :goto_0

    .line 214
    .end local v0           #language:I
    .end local v1           #layout:I
    :cond_d
    const-string v5, "english"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 216
    invoke-direct {p0}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->getPrivateKeyBoardValue()I

    move-result v1

    .line 218
    .restart local v1       #layout:I
    sparse-switch v1, :sswitch_data_0

    .line 226
    :goto_1
    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v2

    .line 229
    goto/16 :goto_0

    .line 220
    :sswitch_0
    const/high16 v2, 0x1111

    .line 222
    :sswitch_1
    const/high16 v2, 0x1211

    .line 224
    :sswitch_2
    const v2, 0x33010100

    goto :goto_1

    .line 229
    .end local v1           #layout:I
    :cond_e
    const-string v4, "ipAddress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    const v2, -0x4dfffff0

    goto/16 :goto_0

    .line 218
    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_1
        0x3000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public initPrivateImeOptionTable()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    goto :goto_0
.end method

.method public isMMSRecipient()Z
    .locals 4

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    const-string v3, "inputType"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    .local v1, inputType:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 150
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    const-string v3, "defaultInputmode"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #inputType:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 152
    .restart local v1       #inputType:Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    .line 153
    const-string v2, "mmsRecipient"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 155
    :cond_1
    return v0
.end method

.method public setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 0
    .parameter "inputModeSwitcher"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 76
    return-void
.end method

.method public setPrivateImeOptionTable(Ljava/lang/String;)Z
    .locals 8
    .parameter "strPrivateImeOptions"

    .prologue
    const/4 v6, 0x0

    .line 89
    iget-object v7, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->clear()V

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, bRet:Z
    if-nez p1, :cond_0

    move v6, v0

    .line 121
    :goto_0
    return v6

    .line 101
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v7, ";"

    invoke-direct {v2, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v2, st1:Ljava/util/StringTokenizer;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 104
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, token:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v7, "="

    invoke-direct {v3, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v3, st2:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, key:Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, value:Ljava/lang/String;
    :goto_3
    if-eqz v1, :cond_1

    if-eqz v5, :cond_1

    .line 110
    iget-object v7, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    invoke-virtual {v7, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const/4 v0, 0x1

    goto :goto_1

    .end local v1           #key:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_2
    move-object v1, v6

    .line 106
    goto :goto_2

    .restart local v1       #key:Ljava/lang/String;
    :cond_3
    move-object v5, v6

    .line 107
    goto :goto_3

    .line 115
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #st2:Ljava/util/StringTokenizer;
    .end local v4           #token:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 119
    const/4 v6, 0x0

    goto :goto_0

    :cond_5
    move v6, v0

    .line 121
    goto :goto_0
.end method
