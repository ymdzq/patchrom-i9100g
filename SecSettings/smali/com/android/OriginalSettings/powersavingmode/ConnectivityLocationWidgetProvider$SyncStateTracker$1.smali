.class Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker$1;
.super Landroid/os/AsyncTask;
.source "ConnectivityLocationWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$desiredState:Z

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;ZZLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker$1;->this$0:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;

    iput-boolean p2, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker$1;->val$desiredState:Z

    iput-boolean p3, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker$1;->val$sync:Z

    iput-object p4, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "args"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 507
    iget-boolean v0, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker$1;->val$desiredState:Z

    if-eqz v0, :cond_1

    .line 508
    iget-boolean v0, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker$1;->val$sync:Z

    if-nez v0, :cond_0

    .line 509
    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 511
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 518
    :goto_0
    return-object v0

    .line 515
    :cond_1
    iget-boolean v0, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker$1;->val$sync:Z

    if-eqz v0, :cond_2

    .line 516
    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 518
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 503
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 523
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker$1;->this$0:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;

    iget-object v2, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 524
    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 525
    return-void

    .line 523
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 503
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
