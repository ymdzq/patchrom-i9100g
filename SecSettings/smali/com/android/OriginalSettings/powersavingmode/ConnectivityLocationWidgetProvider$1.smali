.class Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$1;
.super Ljava/lang/Object;
.source "ConnectivityLocationWidgetProvider.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mobileDataOffAlert(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$1;->this$0:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    .line 1124
    if-ne p2, v2, :cond_0

    .line 1125
    invoke-static {}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->access$800()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_mobiledata_checked"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1131
    :goto_0
    return-void

    .line 1128
    :cond_0
    invoke-static {}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->access$800()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_mobiledata_checked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
