.class Lcom/android/OriginalSettings/wifi/WifiApDialog$3;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WifiApDialog;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog$3;->this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog$3;->this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    #calls: Lcom/android/OriginalSettings/wifi/WifiApDialog;->restartFocusedViewInput()V
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->access$600(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V

    .line 612
    return-void
.end method
