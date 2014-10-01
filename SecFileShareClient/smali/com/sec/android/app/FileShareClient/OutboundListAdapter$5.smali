.class Lcom/sec/android/app/FileShareClient/OutboundListAdapter$5;
.super Ljava/lang/Object;
.source "OutboundListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->showSendFileListDialog(Ljava/util/ArrayList;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileShareClient/OutboundListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$5;->this$0:Lcom/sec/android/app/FileShareClient/OutboundListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 272
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 273
    return-void
.end method
