.class Lcom/android/OriginalSettings/wifi/WifiSettings$23;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 2687
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$23;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x0

    .line 2689
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$23;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1800(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 2693
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$23;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$23;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$23;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v2

    iget v2, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/OriginalSettings/wifi/WifiSettings;->manageNetwork:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/OriginalSettings/wifi/WifiSettings;->vzwEditFlag:Z

    if-nez v2, :cond_0

    .line 2701
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$23;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/OriginalSettings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/OriginalSettings/guide/GuideFragmentCallback;

    move-result-object v1

    .line 2703
    .local v1, guide:Lcom/android/OriginalSettings/guide/GuideFragmentCallback;
    if-eqz v1, :cond_0

    .line 2704
    invoke-interface {v1}, Lcom/android/OriginalSettings/guide/GuideFragmentCallback;->getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    .line 2706
    .local v0, dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    if-eqz v0, :cond_0

    .line 2707
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2713
    .end local v0           #dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    .end local v1           #guide:Lcom/android/OriginalSettings/guide/GuideFragmentCallback;
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$23;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    const/4 v3, 0x0

    #setter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1802(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/WifiNewDialog;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    .line 2714
    sput-boolean v4, Lcom/android/OriginalSettings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 2715
    sput-boolean v4, Lcom/android/OriginalSettings/wifi/WifiSettings;->vzwViewFlag:Z

    .line 2716
    sput-boolean v4, Lcom/android/OriginalSettings/wifi/WifiSettings;->manageNetwork:Z

    .line 2717
    sput v4, Lcom/android/OriginalSettings/wifi/WifiSettings;->forget_network:I

    .line 2718
    sput v4, Lcom/android/OriginalSettings/wifi/WifiSettings;->cancel_network:I

    .line 2719
    sput v4, Lcom/android/OriginalSettings/wifi/WifiSettings;->edit_network:I

    .line 2720
    const-string v2, "WifiSettings"

    const-string v3, "vzwViewFlag sets to false : mDismissListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    :cond_1
    return-void
.end method
