.class public Lcom/sec/android/app/FileShareClient/ClientService$ClinetServiceBinder;
.super Landroid/os/Binder;
.source "ClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileShareClient/ClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClinetServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileShareClient/ClientService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/FileShareClient/ClientService;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/ClientService$ClinetServiceBinder;->this$0:Lcom/sec/android/app/FileShareClient/ClientService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/sec/android/app/FileShareClient/ClientService;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/ClientService$ClinetServiceBinder;->this$0:Lcom/sec/android/app/FileShareClient/ClientService;

    return-object v0
.end method
