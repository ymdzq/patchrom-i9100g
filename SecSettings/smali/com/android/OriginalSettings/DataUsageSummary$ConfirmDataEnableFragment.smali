.class public Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDataEnableFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2273
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;
    .locals 3
    .parameter "parent"

    .prologue
    .line 2275
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 2281
    :goto_0
    return-object v0

    .line 2277
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment;

    invoke-direct {v0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment;-><init>()V

    .line 2278
    .local v0, dialog:Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2279
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDataEnable"

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2325
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/DataUsageSummary;

    .line 2326
    .local v0, target:Lcom/android/OriginalSettings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2328
    const/4 v1, 0x0

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$800(Lcom/android/OriginalSettings/DataUsageSummary;Z)V

    .line 2330
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 2286
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2288
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2290
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2291
    .local v2, salesCode:Ljava/lang/String;
    const-string v3, "SKT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2292
    const v3, 0x7f09081a

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2301
    :goto_0
    const v3, 0x104000a

    new-instance v4, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment$1;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment$1;-><init>(Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2309
    const/high16 v3, 0x104

    new-instance v4, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment$2;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment$2;-><init>(Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2318
    const v3, 0x7f090825

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2320
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 2293
    :cond_0
    const-string v3, "KTT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2294
    const v3, 0x7f09081b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2295
    :cond_1
    const-string v3, "LGT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2296
    const v3, 0x7f09081c

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2298
    :cond_2
    const v3, 0x7f09081d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
