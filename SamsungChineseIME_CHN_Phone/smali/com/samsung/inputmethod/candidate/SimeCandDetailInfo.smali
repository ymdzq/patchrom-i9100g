.class public Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
.super Ljava/lang/Object;
.source "SimeCandDetailInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CPPhraseSource_Audb:I = 0x4

.field public static final CPPhraseSource_Contact:I = 0x7

.field public static final CPPhraseSource_Ldb:I = 0x1

.field public static final CPPhraseSource_Mdb:I = 0x2

.field public static final CPPhraseSource_Rdb:I = 0x3

.field public static final CPPhraseSource_Sentence:I = 0x6

.field public static final CPPhraseSource_Udb:I = 0x5

.field public static final CPPhraseSource_Unknown:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;

.field private srcType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo$1;

    invoke-direct {v0}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 40
    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "pl"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    .line 49
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 52
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "info"
    .parameter "type"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    .line 43
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, p2}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->setContentType(I)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    return v0
.end method

.method public isContentTypeUDB()Z
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, bRet:Z
    const/4 v1, 0x4

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x5

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    if-ne v1, v2, :cond_1

    .line 74
    :cond_0
    const/4 v0, 0x1

    .line 75
    :cond_1
    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 68
    :cond_0
    return-void
.end method

.method public setContentType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 83
    packed-switch p1, :pswitch_data_0

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    .line 98
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return-void
.end method
