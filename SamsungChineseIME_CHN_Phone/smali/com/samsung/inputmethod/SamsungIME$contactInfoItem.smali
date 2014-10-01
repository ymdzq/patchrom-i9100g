.class Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;
.super Ljava/lang/Object;
.source "SamsungIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/SamsungIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "contactInfoItem"
.end annotation


# instance fields
.field public contactId:Ljava/lang/String;

.field public data:[Ljava/lang/String;

.field public dataCount:I

.field public dataType:[I

.field public mimeType:[Ljava/lang/String;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/inputmethod/SamsungIME;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x14

    .line 415
    iput-object p1, p0, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->data:[Ljava/lang/String;

    .line 420
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->dataType:[I

    .line 421
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->mimeType:[Ljava/lang/String;

    return-void
.end method
