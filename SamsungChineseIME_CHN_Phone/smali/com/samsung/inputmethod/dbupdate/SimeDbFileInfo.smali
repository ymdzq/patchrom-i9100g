.class Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;
.super Ljava/lang/Object;
.source "SimeDbUpdateManager.java"


# instance fields
.field private mDataURL:Ljava/lang/String;

.field private mDbSize:I

.field private mDbType:I

.field private mVersionURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->mDbType:I

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "dbType"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->mDbType:I

    .line 74
    iget v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->mDbType:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->mDbType:I

    sget-object v1, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDBDataURI:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 76
    sget-object v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDBDataURI:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->mDataURL:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->mDBVersionURI:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->mVersionURL:Ljava/lang/String;

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public getDbDataURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->mDataURL:Ljava/lang/String;

    return-object v0
.end method

.method public getDbSize()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->mDbSize:I

    return v0
.end method

.method public getDbType()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->mDbType:I

    return v0
.end method

.method public getDbVersionURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->mVersionURL:Ljava/lang/String;

    return-object v0
.end method

.method public setDbSize(I)V
    .locals 0
    .parameter "dbSize"

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->mDbSize:I

    .line 84
    return-void
.end method

.method public setDbType(I)V
    .locals 0
    .parameter "dbType"

    .prologue
    .line 88
    iput p1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbFileInfo;->mDbType:I

    .line 89
    return-void
.end method
