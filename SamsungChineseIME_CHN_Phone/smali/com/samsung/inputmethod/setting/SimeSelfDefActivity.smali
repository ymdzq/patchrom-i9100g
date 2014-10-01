.class public Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;
.super Landroid/app/Activity;
.source "SimeSelfDefActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static mType:I

.field public static s1:Landroid/widget/Spinner;


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private addButton:Landroid/widget/Button;

.field private array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private arrayDefCode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private comradioButton:Landroid/widget/RadioButton;

.field private curItem:Lcom/samsung/inputmethod/setting/SimeSelfDefItem;

.field private curPoint:[I

.field private deleteButton:Landroid/widget/Button;

.field private editButton:Landroid/widget/Button;

.field private instance:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

.field private mFileIF:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private text:Landroid/widget/TextView;

.field private touchPaint:Lcom/samsung/inputmethod/setting/SimeSelfDefView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    const/16 v0, 0x1fe

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curPoint:[I

    .line 72
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;

    invoke-direct {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curItem:Lcom/samsung/inputmethod/setting/SimeSelfDefItem;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->arrayDefCode:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->arrayDefCode:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Lcom/samsung/inputmethod/setting/SimeSelfDefItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curItem:Lcom/samsung/inputmethod/setting/SimeSelfDefItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mFileIF:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curPoint:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Lcom/samsung/inputmethod/setting/SimeSelfDefView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->touchPaint:Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->updateWidget(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->instance:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->comradioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private initCache(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    .line 171
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 172
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->arrayDefCode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 173
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;

    invoke-direct {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;-><init>()V

    .line 174
    .local v0, item:Lcom/samsung/inputmethod/setting/SimeSelfDefItem;
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mFileIF:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->readFirst(Lcom/samsung/inputmethod/setting/SimeSelfDefItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curItem:Lcom/samsung/inputmethod/setting/SimeSelfDefItem;

    .line 176
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curItem:Lcom/samsung/inputmethod/setting/SimeSelfDefItem;

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curPoint:[I

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getPoint([I)I

    .line 178
    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getType()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 180
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->arrayDefCode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getUnicode()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mFileIF:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->readNext(Lcom/samsung/inputmethod/setting/SimeSelfDefItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getType()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 189
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :goto_2
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->arrayDefCode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getUnicode()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 196
    :cond_3
    return-void
.end method

.method private updateWidget(II)V
    .locals 7
    .parameter "type"
    .parameter "index"

    .prologue
    const v6, 0x7f0b0047

    const v5, 0x7f0b0035

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 199
    if-ne p1, v3, :cond_2

    .line 200
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 201
    sget-object v1, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->s1:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 208
    .local v0, mStrings:[Ljava/lang/Object;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 209
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->adapter:Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 210
    sget-object v1, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->s1:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 211
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 212
    sget-object v1, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->s1:Landroid/widget/Spinner;

    invoke-virtual {v1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 213
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mOrderResValue:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    :cond_0
    if-ne p1, v3, :cond_3

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mOrderResValue:[I

    array-length v2, v2

    rsub-int/lit8 v2, v2, 0x19

    if-ge v1, v2, :cond_3

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->addButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    :goto_1
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->editButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 220
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 228
    :goto_2
    return-void

    .line 203
    .end local v0           #mStrings:[Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 204
    sget-object v1, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->s1:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 217
    .restart local v0       #mStrings:[Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->addButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 222
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->addButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->editButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 225
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->touchPaint:Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curPoint:[I

    invoke-virtual {v1, v2, v4}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->setPoint([II)V

    .line 226
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->touchPaint:Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->postInvalidate()V

    goto :goto_2
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 231
    const v0, 0x7f0c0010

    if-ne p2, v0, :cond_0

    .line 232
    const/4 v0, 0x1

    sput v0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mType:I

    .line 236
    :goto_0
    sget v0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mType:I

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->initCache(I)V

    .line 237
    sget v0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mType:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->updateWidget(II)V

    .line 238
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x2

    sput v0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mType:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 242
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const v2, 0x7f0c0010

    const/4 v1, 0x1

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->setContentView(I)V

    .line 92
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 93
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->comradioButton:Landroid/widget/RadioButton;

    .line 94
    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->text:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0c0013

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    sput-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->s1:Landroid/widget/Spinner;

    .line 96
    const v0, 0x7f0c0014

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->touchPaint:Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    .line 97
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->editButton:Landroid/widget/Button;

    .line 98
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->deleteButton:Landroid/widget/Button;

    .line 99
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->addButton:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 102
    sput v1, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mType:I

    .line 103
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 105
    iput-object p0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->instance:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    .line 106
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->touchPaint:Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->disAbleDraw(Z)V

    .line 108
    invoke-static {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mFileIF:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    .line 109
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->initCache(I)V

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->updateWidget(II)V

    .line 112
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->s1:Landroid/widget/Spinner;

    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$1;-><init>(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->addButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$2;-><init>(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->deleteButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$3;-><init>(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->editButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$4;-><init>(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void
.end method

.method public save()V
    .locals 9

    .prologue
    const v8, 0xffff

    .line 245
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->getInstance()Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    move-result-object v2

    .line 246
    .local v2, defineViewInstance:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;
    new-instance v3, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;

    invoke-direct {v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;-><init>()V

    .line 247
    .local v3, item:Lcom/samsung/inputmethod/setting/SimeSelfDefItem;
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curPoint:[I

    invoke-virtual {v2, v6}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->getPoint([I)I

    move-result v1

    .line 248
    .local v1, count:I
    invoke-virtual {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->getDes()Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, str:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->getViewType()I

    move-result v6

    if-nez v6, :cond_1

    .line 251
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->comradioButton:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    :goto_0
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 268
    .local v4, selectIndex:I
    :goto_1
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curPoint:[I

    invoke-virtual {v3, v1, v6}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->setPoint(I[I)V

    .line 269
    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->setDescription(Ljava/lang/String;)V

    .line 270
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->comradioButton:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 271
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->setType(I)V

    .line 283
    :goto_2
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curPoint:[I

    mul-int/lit8 v7, v1, 0x2

    aput v8, v6, v7

    .line 284
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curPoint:[I

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    aput v8, v6, v7

    .line 286
    invoke-virtual {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->getViewType()I

    move-result v6

    if-nez v6, :cond_4

    .line 287
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mFileIF:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    invoke-virtual {v6, v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->add(Lcom/samsung/inputmethod/setting/SimeSelfDefItem;)Z

    .line 288
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->arrayDefCode:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getUnicode()C

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curPoint:[I

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getUnicode()C

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/samsung/inputmethod/SimeDecoderService;->hwAddSelfDefineModel([IIC)I

    .line 297
    :goto_3
    invoke-virtual {v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getType()I

    move-result v6

    invoke-direct {p0, v6, v4}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->updateWidget(II)V

    .line 298
    return-void

    .line 254
    .end local v4           #selectIndex:I
    :cond_0
    iget-object v7, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    :cond_1
    sget-object v6, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->s1:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 259
    .restart local v4       #selectIndex:I
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->comradioButton:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 260
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 264
    :goto_4
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->arrayDefCode:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 265
    .local v0, arr:I
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mFileIF:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    int-to-char v7, v0

    invoke-virtual {v6, v7, v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getItemBySefCode(CLcom/samsung/inputmethod/setting/SimeSelfDefItem;)Z

    goto/16 :goto_1

    .line 262
    .end local v0           #arr:I
    :cond_2
    iget-object v7, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 273
    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->setType(I)V

    goto/16 :goto_2

    .line 292
    :cond_4
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mFileIF:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    invoke-virtual {v6, v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->modify(Lcom/samsung/inputmethod/setting/SimeSelfDefItem;)I

    .line 295
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curPoint:[I

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getUnicode()C

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/samsung/inputmethod/SimeDecoderService;->hwAddSelfDefineModel([IIC)I

    goto :goto_3
.end method
