.class Landroid/webkit/WebViewClassic$DateTimePicker$2;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic$DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewClassic$DateTimePicker;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic$DateTimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 6485
    iput-object p1, p0, Landroid/webkit/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkit/WebViewClassic$DateTimePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 6487
    iget-object v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkit/WebViewClassic$DateTimePicker;

    #setter for: Landroid/webkit/WebViewClassic$DateTimePicker;->mhour:I
    invoke-static {v0, p2}, Landroid/webkit/WebViewClassic$DateTimePicker;->access$3802(Landroid/webkit/WebViewClassic$DateTimePicker;I)I

    .line 6488
    iget-object v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkit/WebViewClassic$DateTimePicker;

    #setter for: Landroid/webkit/WebViewClassic$DateTimePicker;->mminute:I
    invoke-static {v0, p3}, Landroid/webkit/WebViewClassic$DateTimePicker;->access$3902(Landroid/webkit/WebViewClassic$DateTimePicker;I)I

    .line 6491
    iget-object v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkit/WebViewClassic$DateTimePicker;

    #getter for: Landroid/webkit/WebViewClassic$DateTimePicker;->isClear:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic$DateTimePicker;->access$3600(Landroid/webkit/WebViewClassic$DateTimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6492
    iget-object v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkit/WebViewClassic$DateTimePicker;

    #calls: Landroid/webkit/WebViewClassic$DateTimePicker;->updateTime()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic$DateTimePicker;->access$4000(Landroid/webkit/WebViewClassic$DateTimePicker;)V

    .line 6495
    :goto_0
    return-void

    .line 6494
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkit/WebViewClassic$DateTimePicker;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/WebViewClassic$DateTimePicker;->isClear:Z
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic$DateTimePicker;->access$3602(Landroid/webkit/WebViewClassic$DateTimePicker;Z)Z

    goto :goto_0
.end method