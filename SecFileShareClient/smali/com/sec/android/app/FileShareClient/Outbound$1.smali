.class Lcom/sec/android/app/FileShareClient/Outbound$1;
.super Ljava/lang/Object;
.source "Outbound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileShareClient/Outbound;->setFileIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileShareClient/Outbound;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileShareClient/Outbound;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/Outbound$1;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/Outbound$1;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #getter for: Lcom/sec/android/app/FileShareClient/Outbound;->mFileManager:Lcom/sec/android/app/FileShareClient/FileManager;
    invoke-static {v0}, Lcom/sec/android/app/FileShareClient/Outbound;->access$200(Lcom/sec/android/app/FileShareClient/Outbound;)Lcom/sec/android/app/FileShareClient/FileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/Outbound$1;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #getter for: Lcom/sec/android/app/FileShareClient/Outbound;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/sec/android/app/FileShareClient/Outbound;->access$000(Lcom/sec/android/app/FileShareClient/Outbound;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileShareClient/Outbound$1;->this$0:Lcom/sec/android/app/FileShareClient/Outbound;

    #getter for: Lcom/sec/android/app/FileShareClient/Outbound;->mFileMakerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/FileShareClient/Outbound;->access$100(Lcom/sec/android/app/FileShareClient/Outbound;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/FileShareClient/FileManager;->generateFileList(Landroid/content/Intent;Landroid/os/Handler;)V

    .line 168
    return-void
.end method
