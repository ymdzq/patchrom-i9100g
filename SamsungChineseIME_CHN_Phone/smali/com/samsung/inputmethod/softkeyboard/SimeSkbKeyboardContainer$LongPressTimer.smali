.class Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;
.super Landroid/os/Handler;
.source "SimeSkbKeyboardContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LongPressTimer"
.end annotation


# static fields
.field public static final LONG_PRESS_KEYNUM1:I = 0x1

.field public static final LONG_PRESS_KEYNUM2:I = 0xa

.field public static final LONG_PRESS_TIMEOUT1:I = 0x1f4

.field private static final LONG_PRESS_TIMEOUT2:I = 0x64

.field private static final LONG_PRESS_TIMEOUT3:I = 0x14


# instance fields
.field private mResponseTimes:I

.field mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

.field final synthetic this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V
    .locals 1
    .parameter
    .parameter "skbContainer"

    .prologue
    .line 2008
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2006
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    .line 2009
    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    .line 2010
    return-void
.end method


# virtual methods
.method public getResponseTimes()I
    .locals 1

    .prologue
    .line 2049
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    return v0
.end method

.method public reStartTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x14

    .line 2021
    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 2022
    const-wide/16 v0, 0x1f4

    .line 2040
    .local v0, timeout:J
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p0, p0, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2041
    return-void

    .line 2023
    .end local v0           #timeout:J
    :cond_0
    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    .line 2024
    const-wide/16 v0, 0x64

    .restart local v0       #timeout:J
    goto :goto_0

    .line 2029
    .end local v0           #timeout:J
    :cond_1
    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    mul-int/lit8 v4, v4, 0x2

    rsub-int/lit8 v4, v4, 0x64

    int-to-long v0, v4

    .line 2030
    .restart local v0       #timeout:J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    :goto_1
    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public removeTimer()Z
    .locals 1

    .prologue
    .line 2044
    invoke-virtual {p0, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2045
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2053
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$700(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    .line 2054
    .local v1, keyCode:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWaitForTouchUp:Z
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$800(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2055
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    .line 2056
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$700(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->repeatable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2057
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$700(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isUserDefKey()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x43

    if-eq v1, v2, :cond_0

    const/16 v2, 0x38

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    const/4 v2, -0x1

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$900(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2063
    :cond_0
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    if-ne v4, v2, :cond_3

    .line 2064
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$700(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->tryHandleLongPressSwitch(ILcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2065
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #setter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z
    invoke-static {v2, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1002(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Z)Z

    .line 2066
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V
    invoke-static {v2, v6, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;J)V

    .line 2109
    :cond_1
    :goto_0
    return-void

    .line 2068
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$700(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v3

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->responseKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    invoke-static {v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 2069
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->reStartTimer()V

    goto :goto_0

    .line 2072
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$700(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v3

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->responseKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    invoke-static {v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 2073
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->reStartTimer()V

    goto :goto_0

    .line 2076
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$700(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v3

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->responseKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    invoke-static {v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 2077
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->reStartTimer()V

    goto :goto_0

    .line 2079
    :cond_5
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$700(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$700(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongIconPopup()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2081
    :cond_6
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$700(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->tryHandleLongPressSwitch(ILcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2082
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$700(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isLongPressed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2083
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2085
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onKeyLongPress()V

    .line 2086
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    .line 2087
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->reStartTimer()V

    goto :goto_0

    .line 2089
    :cond_7
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$700(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v3

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->responseKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    invoke-static {v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 2090
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$700(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setLongPressed(Z)V

    .line 2091
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #setter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z
    invoke-static {v2, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1002(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Z)Z

    .line 2092
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V
    invoke-static {v2, v6, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;J)V

    goto/16 :goto_0

    .line 2096
    :cond_8
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1400(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->isPointingAction()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2098
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1400(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->getMultiDirection()I

    move-result v0

    .line 2099
    .local v0, direction:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1400(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->onDownKeyEvent(I)V

    .line 2100
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->reStartTimer()V

    goto/16 :goto_0

    .line 2102
    .end local v0           #direction:I
    :cond_9
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    if-ne v4, v2, :cond_1

    .line 2104
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    iget-object v2, v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    .line 2105
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->popupSymbols()V
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1500(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V

    goto/16 :goto_0
.end method

.method public startTimer()V
    .locals 4

    .prologue
    .line 2013
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2014
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    .line 2015
    return-void
.end method
