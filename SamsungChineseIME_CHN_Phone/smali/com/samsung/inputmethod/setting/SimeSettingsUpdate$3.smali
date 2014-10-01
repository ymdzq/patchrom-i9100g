.class Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$3;
.super Ljava/lang/Object;
.source "SimeSettingsUpdate.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->setDbTypeArray()V
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$200(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    .line 154
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbType:[I
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$300(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)[I

    move-result-object v0

    aget v0, v0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->showAlertDialog(I)V
    invoke-static {v0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$400(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;I)V

    .line 162
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->dbUpdatePrepare()V
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$500(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)V

    goto :goto_0
.end method
