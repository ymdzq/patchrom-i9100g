.class Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;
.super Ljava/lang/Object;
.source "SimeSettingsUpdateSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 184
    const/4 v1, 0x0

    .line 186
    .local v1, index:I
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mTWChineseUpdate:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$000(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbType:[I
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$100(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)[I

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    const/4 v4, 0x3

    aput v4, v3, v1

    move v1, v2

    .line 190
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mHKChineseUpdate:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$200(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbType:[I
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$100(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)[I

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    const/4 v4, 0x2

    aput v4, v3, v1

    move v1, v2

    .line 194
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mSChineseUpdate:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$300(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbType:[I
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$100(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)[I

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aput v5, v3, v1

    move v1, v2

    .line 198
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mEnglishUpdate:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$400(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbType:[I
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$100(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)[I

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aput v6, v3, v1

    move v1, v2

    .line 202
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mPopularWordUpdate:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$500(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 204
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbType:[I
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$100(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)[I

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    const/4 v4, 0x4

    aput v4, v3, v1

    .line 206
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->imIsHKTWModel()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 207
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbType:[I
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$100(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)[I

    move-result-object v3

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    const/4 v4, 0x5

    aput v4, v3, v2

    .line 208
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbType:[I
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$100(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)[I

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    const/4 v4, 0x6

    aput v4, v3, v1

    :cond_4
    move v1, v2

    .line 212
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_5
    move v0, v1

    .local v0, i:I
    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_6

    .line 213
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->mDbType:[I
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$100(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;)[I

    move-result-object v3

    const/4 v4, -0x1

    aput v4, v3, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_6
    if-nez v1, :cond_7

    .line 216
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->showAlertDialog(I)V
    invoke-static {v3, v6}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$600(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;I)V

    .line 221
    :goto_1
    return v5

    .line 218
    :cond_7
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    #calls: Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->showAlertDialog(I)V
    invoke-static {v3, v5}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;->access$600(Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;I)V

    goto :goto_1
.end method
