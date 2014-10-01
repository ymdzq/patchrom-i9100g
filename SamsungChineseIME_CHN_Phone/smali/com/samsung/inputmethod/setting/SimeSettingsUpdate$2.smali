.class Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$2;
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
    .line 140
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    const-class v2, Lcom/samsung/inputmethod/setting/SimeSettingsUpdateSetting;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/setting/SimeSettingsUpdate;->startActivity(Landroid/content/Intent;)V

    .line 146
    const/4 v1, 0x1

    return v1
.end method
