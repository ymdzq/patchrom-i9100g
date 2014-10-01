.class public Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleEditorFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2047
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 2051
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2060
    :goto_0
    return-void

    .line 2053
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2054
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "template"

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$3000(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2056
    new-instance v1, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;-><init>()V

    .line 2057
    .local v1, dialog:Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2058
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2059
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "cycleEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 2064
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 2065
    .local v7, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/DataUsageSummary;

    .line 2066
    .local v3, target:Lcom/android/OriginalSettings/DataUsageSummary;
    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;
    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary;->access$3100(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    move-result-object v4

    .line 2068
    .local v4, editor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2069
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 2071
    .local v9, dialogInflater:Landroid/view/LayoutInflater;
    const v0, 0x7f040041

    const/4 v1, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v0, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 2072
    .local v11, view:Landroid/view/View;
    invoke-static {v7}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2073
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/high16 v12, 0x3f80

    invoke-direct {v10, v0, v1, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2074
    .local v10, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0xf

    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v0, v1, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2075
    const v0, 0x7f0b009e

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2077
    .end local v10           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const v0, 0x7f0b009f

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 2079
    .local v2, cycleDayPicker:Landroid/widget/NumberPicker;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 2080
    .local v5, template:Landroid/net/NetworkTemplate;
    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v8

    .line 2082
    .local v8, cycleDay:I
    invoke-virtual {v2}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 2083
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 2084
    const/16 v0, 0x1f

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 2085
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2086
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 2087
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 2089
    const v0, 0x7f090833

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2090
    invoke-virtual {v6, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2092
    const v12, 0x7f090835

    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment$1;-><init>(Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/OriginalSettings/DataUsageSummary;Lcom/android/OriginalSettings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;)V

    invoke-virtual {v6, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2106
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
