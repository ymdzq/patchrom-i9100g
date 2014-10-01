.class public Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;
.super Landroid/app/Activity;
.source "SimeSelfDefDialog.java"


# static fields
.field private static final DIALOG_STRING_EMPTY:I = 0x1

.field private static final DIALOG_STRING_EXIST:I = 0x2

.field private static final DIALOG_TRACK_EMPTY:I = 0x0

.field public static final TYPE_ADD:I = 0x0

.field public static final TYPE_EDIT:I = 0x1

.field private static instance:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

.field private static mDefaultDes:Ljava/lang/String;

.field private static mViewType:I

.field private static parent:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;


# instance fields
.field private arSID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private clearButtonLeft:Landroid/widget/Button;

.field private mCurOrderIndex:I

.field private mOrderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinnerItem:[Ljava/lang/Object;

.field private sOrder:Landroid/widget/Spinner;

.field private saveButton:Landroid/widget/Button;

.field private str:Landroid/widget/EditText;

.field private textContent:Landroid/widget/TextView;

.field private touchPaintLeft:Lcom/samsung/inputmethod/setting/SimeSelfDefView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mViewType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mCurOrderIndex:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->arSID:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mOrderList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)Lcom/samsung/inputmethod/setting/SimeSelfDefView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->touchPaintLeft:Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    return-object v0
.end method

.method static synthetic access$100()Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->parent:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->str:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mDefaultDes:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->instance:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    return-object v0
.end method

.method public static setDes(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 278
    sput-object p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mDefaultDes:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public static setParent(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 249
    sput-object p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->parent:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    .line 250
    return-void
.end method

.method public static setViewType(I)V
    .locals 0
    .parameter "viewType"

    .prologue
    .line 282
    sput p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mViewType:I

    .line 283
    return-void
.end method


# virtual methods
.method public getDes()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->str:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->str:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->sOrder:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->arSID:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->sOrder:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 272
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPoint([I)I
    .locals 3
    .parameter "point"

    .prologue
    .line 254
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->touchPaintLeft:Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->getPoint()Ljava/util/Vector;

    move-result-object v0

    .line 255
    .local v0, data:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 256
    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v1

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    return v2
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 286
    sget v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mViewType:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v5, 0x7f030006

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->setContentView(I)V

    .line 93
    const v5, 0x7f0c0019

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->textContent:Landroid/widget/TextView;

    .line 94
    const v5, 0x7f0c001b

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->sOrder:Landroid/widget/Spinner;

    .line 95
    const v5, 0x7f0c001a

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->str:Landroid/widget/EditText;

    .line 96
    const v5, 0x7f0c001c

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->touchPaintLeft:Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    .line 98
    const v5, 0x7f0c001d

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->clearButtonLeft:Landroid/widget/Button;

    .line 100
    const v5, 0x7f0c001e

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->saveButton:Landroid/widget/Button;

    .line 102
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->arSID:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 103
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mOrderList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->getViewType()I

    move-result v5

    if-nez v5, :cond_0

    .line 106
    const-string v5, ""

    sput-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mDefaultDes:Ljava/lang/String;

    .line 107
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->saveButton:Landroid/widget/Button;

    const v6, 0x7f0b005b

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 112
    :goto_0
    sget v5, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 113
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->textContent:Landroid/widget/TextView;

    const v6, 0x7f0b005e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 116
    const/4 v4, 0x0

    .line 117
    .local v4, tmpStr:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v1, ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->parent:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    sget-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->s1:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 119
    sget-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->parent:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    sget-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->s1:Landroid/widget/Spinner;

    invoke-virtual {v5, v2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    .end local v1           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v4           #tmpStr:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->saveButton:Landroid/widget/Button;

    const v6, 0x7f0b005c

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 122
    .restart local v1       #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i:I
    .restart local v4       #tmpStr:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    sget-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mOrderResValue:[I

    array-length v5, v5

    if-ge v3, v5, :cond_6

    .line 123
    sget-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mOrderResValue:[I

    aget v5, v5, v3

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 125
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->arSID:Ljava/util/ArrayList;

    sget-object v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mOrderResKey:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mOrderList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->getViewType()I

    move-result v5

    if-nez v5, :cond_4

    .line 129
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 130
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->arSID:Ljava/util/ArrayList;

    sget-object v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mOrderResKey:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mOrderList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 134
    :cond_4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->parent:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    sget-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->s1:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 135
    :cond_5
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->arSID:Ljava/util/ArrayList;

    sget-object v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mOrderResKey:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mOrderList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 141
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->getViewType()I

    move-result v5

    if-nez v5, :cond_8

    .line 142
    iput v7, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mCurOrderIndex:I

    .line 147
    :goto_4
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mOrderList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mSpinnerItem:[Ljava/lang/Object;

    .line 148
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mSpinnerItem:[Ljava/lang/Object;

    invoke-direct {v0, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 150
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Object;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 151
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->sOrder:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 152
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->sOrder:Landroid/widget/Spinner;

    const v6, 0x7f0b0047

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mOrderList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mCurOrderIndex:I

    if-le v5, v6, :cond_7

    .line 154
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->sOrder:Landroid/widget/Spinner;

    iget v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mCurOrderIndex:I

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 157
    :cond_7
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->sOrder:Landroid/widget/Spinner;

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 158
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->str:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 160
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->saveButton:Landroid/widget/Button;

    new-instance v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$1;

    invoke-direct {v6, p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$1;-><init>(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Object;>;"
    .end local v1           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #tmpStr:Ljava/lang/String;
    :goto_5
    sput-object p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->instance:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    .line 211
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->clearButtonLeft:Landroid/widget/Button;

    new-instance v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$3;

    invoke-direct {v6, p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$3;-><init>(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    return-void

    .line 144
    .restart local v1       #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v4       #tmpStr:Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mOrderList:Ljava/util/ArrayList;

    sget-object v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->parent:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    sget-object v6, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->s1:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mCurOrderIndex:I

    goto :goto_4

    .line 176
    .end local v1           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #tmpStr:Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->textContent:Landroid/widget/TextView;

    const v6, 0x7f0b0042

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->str:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 179
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->str:Landroid/widget/EditText;

    sget-object v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mDefaultDes:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->sOrder:Landroid/widget/Spinner;

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 182
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->saveButton:Landroid/widget/Button;

    new-instance v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$2;

    invoke-direct {v6, p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$2;-><init>(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 227
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b001b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 229
    const v2, 0x7f0b0037

    new-instance v3, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$4;

    invoke-direct {v3, p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$4;-><init>(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    packed-switch p1, :pswitch_data_0

    .line 244
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 245
    .local v1, dialog:Landroid/app/AlertDialog;
    return-object v1

    .line 235
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :pswitch_0
    const v2, 0x7f0b0048

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 238
    :pswitch_1
    const v2, 0x7f0b00d1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 241
    :pswitch_2
    const v2, 0x7f0b00d2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
