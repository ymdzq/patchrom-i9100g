.class Lcom/android/OriginalSettings/ContextualPageHelp$1;
.super Ljava/lang/Object;
.source "ContextualPageHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/ContextualPageHelp;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/ContextualPageHelp;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/ContextualPageHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/OriginalSettings/ContextualPageHelp$1;->this$0:Lcom/android/OriginalSettings/ContextualPageHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/OriginalSettings/ContextualPageHelp$1;->this$0:Lcom/android/OriginalSettings/ContextualPageHelp;

    #getter for: Lcom/android/OriginalSettings/ContextualPageHelp;->launchbtnplay:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/OriginalSettings/ContextualPageHelp;->access$000(Lcom/android/OriginalSettings/ContextualPageHelp;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02049a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object v1, p0, Lcom/android/OriginalSettings/ContextualPageHelp$1;->this$0:Lcom/android/OriginalSettings/ContextualPageHelp;

    iget-object v0, p0, Lcom/android/OriginalSettings/ContextualPageHelp$1;->this$0:Lcom/android/OriginalSettings/ContextualPageHelp;

    #getter for: Lcom/android/OriginalSettings/ContextualPageHelp;->launchimg:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/OriginalSettings/ContextualPageHelp;->access$200(Lcom/android/OriginalSettings/ContextualPageHelp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    #setter for: Lcom/android/OriginalSettings/ContextualPageHelp;->mAni1:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1, v0}, Lcom/android/OriginalSettings/ContextualPageHelp;->access$102(Lcom/android/OriginalSettings/ContextualPageHelp;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 63
    iget-object v0, p0, Lcom/android/OriginalSettings/ContextualPageHelp$1;->this$0:Lcom/android/OriginalSettings/ContextualPageHelp;

    #getter for: Lcom/android/OriginalSettings/ContextualPageHelp;->mAni1:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/OriginalSettings/ContextualPageHelp;->access$100(Lcom/android/OriginalSettings/ContextualPageHelp;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 64
    return-void
.end method
