.class Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$4;
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
    .line 165
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$4;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$4;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mGetNoticePref:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$600(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$4;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    const/16 v1, 0xa

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->showAlertDialog(I)V
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$400(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;I)V

    .line 178
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$4;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mGetNoticePref:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$600(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 175
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$4;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->access$700(Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;)Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->setDbNotice(Z)V

    goto :goto_0
.end method
