.class public Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$SimeDbAutoUpdateServiceBinder;
.super Landroid/os/Binder;
.source "SimeDbAutoUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimeDbAutoUpdateServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$SimeDbAutoUpdateServiceBinder;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$SimeDbAutoUpdateServiceBinder;->this$0:Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;

    return-object v0
.end method
