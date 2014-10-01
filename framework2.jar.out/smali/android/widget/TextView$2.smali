.class Landroid/widget/TextView$2;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->endBatchEdit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 5918
    iput-object p1, p0, Landroid/widget/TextView$2;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5920
    iget-object v0, p0, Landroid/widget/TextView$2;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v0}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$2;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v0}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor;->endBatchEdit()V

    .line 5921
    :cond_0
    return-void
.end method
