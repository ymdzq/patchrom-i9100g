.class Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;
.super Landroid/os/Handler;
.source "SimeCandHorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/candidate/SimeCandHorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PressTimer"
.end annotation


# instance fields
.field private mActiveCandOfPage:I

.field private mPageNoToShow:I

.field private mTimerPending:Z

.field final synthetic this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorView;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)V
    .locals 1
    .parameter

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 1066
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1061
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->mTimerPending:Z

    .line 1067
    return-void
.end method


# virtual methods
.method public getActiveCandOfPageToShow()I
    .locals 1

    .prologue
    .line 1082
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->mActiveCandOfPage:I

    return v0
.end method

.method public getPageToShow()I
    .locals 1

    .prologue
    .line 1078
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->mPageNoToShow:I

    return v0
.end method

.method public isPending()Z
    .locals 1

    .prologue
    .line 1095
    iget-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->mTimerPending:Z

    return v0
.end method

.method public removeTimer()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1086
    iget-boolean v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->mTimerPending:Z

    if-eqz v1, :cond_0

    .line 1087
    iput-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->mTimerPending:Z

    .line 1088
    invoke-virtual {p0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1089
    const/4 v0, 0x1

    .line 1091
    :cond_0
    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1099
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->mPageNoToShow:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->mActiveCandOfPage:I

    if-ltz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->mPageNoToShow:I

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->mActiveCandOfPage:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->showPage(II)V

    .line 1103
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->invalidate()V

    .line 1105
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->mTimerPending:Z

    .line 1106
    return-void
.end method

.method public startTimer(JII)V
    .locals 1
    .parameter "afterMillis"
    .parameter "pageNo"
    .parameter "activeInPage"

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->removeTimer()Z

    .line 1071
    invoke-virtual {p0, p0, p1, p2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1072
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->mTimerPending:Z

    .line 1073
    iput p3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->mPageNoToShow:I

    .line 1074
    iput p4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->mActiveCandOfPage:I

    .line 1075
    return-void
.end method
